Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22AE64A33
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767762834; cv=none; b=XEuTf19w9jtAjB50VruUSEd6awSn326Ek7YY+dTOms5jSBIdQoGXqiDNxGAR47VjD0iuHCSXm4+evRJsz858bnqpw4TzpybQR4Cfn6hvRzVt28BnsxvV2UOVpy43+0OILT2UtBJDUaoUFFcY1eWtnLSP0V4N4a81UZbNKsAdjv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767762834; c=relaxed/simple;
	bh=kd7Y646puBCxT8d6wLdHUIb89seKsLRpLFjajJ3C0qE=;
	h=To:Subject:From:Message-Id:Date; b=T84AOJ006ulA/tKAEe4mEB3Dm4qdPKTV0IduEDQffkd4DB4op2tp6gtTAb+ezM+5ISf/56E0BF2eIo1wLFhNChOCpVMBsCIeLJkno6gWG2V/lHgCw/4LVki9cy+rU2nA92yZDu2YUKB8jMPDYLiAkbRFGnozqar+ZneQD6NObmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lqMKrjr6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lqMKrjr6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C268C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767762833;
	bh=kd7Y646puBCxT8d6wLdHUIb89seKsLRpLFjajJ3C0qE=;
	h=To:Subject:From:Date:From;
	b=lqMKrjr6Poot2XThJdM+IwompX513MC8WDMHLL00mBVeeEDMLINW7JYwPceQMQRuF
	 01u+FkW/S+PPpjKVOsVrxNLnXbWWYS6fEBGdf2Ae/dWcvnqnECWG7TdPe9AxGyP0Y4
	 Z1kHAHIvUdQDAENjk6HK6iqoGia3iLH0BcIMMDGUmJRCs0TLab7JT8GSjqEkqT5591
	 c2L1f62gp8J5IeFsGXzil+B8vq9Gv9ZRyUCxOaMmaY/mzSqZLHVsN6zxPGQtZF8IWt
	 cfe89QK+j5MqE2QEHK2/GWOrhcBUkl08hzw1L19TSlQaW+V+1Vm94qrToQEHmejj2x
	 P9gct/GDKShkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F175CF6BE4
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176776283357.16297.12563359719200959301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa9b548d1f207d29ff6f3fa64a43305e6d716368f4b2ff947c357b1da50eb088
Date: Wed, 07 Jan 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767762833
