Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03EE314884C
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712615297; cv=none; b=pPYfOfxpJ5FuVnFAglG4MZ8S0f9QkfQ4H5zMUGvhI8In8tJTJwWUpLLjvS+PBacsAx63KayAS+9lnOQAx4hspnbJsUF1EA8J9z7l4FvSjE19MhOOz7FtbsEpD14KzvWJOcJIq6FuuJsIUeuEuR34kmRmoF/zItVDjQvQjegjEt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712615297; c=relaxed/simple;
	bh=wJzEfcNOD8h9DcH8DbDG63QR4ap/X1rmjDY41VNB8Cs=;
	h=To:Subject:From:Message-Id:Date; b=lFz54sIL7mN9kf2PkL6URm3SfT75Tr/9WgnA/ixv0av8CVqg0kcCfQLwcIHXLocubhpZelhqCw35piMApVXY0S7zSREAvMJApaHcethNN36Jtij73zRP2X2mr+oPg+T7fOO+g3Xcybnt5S6EWzjCMxiW7qZ4x2EHWDUkftBYs/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kCu7Cnv3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kCu7Cnv3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 833FCC433F1
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712615296;
	bh=wJzEfcNOD8h9DcH8DbDG63QR4ap/X1rmjDY41VNB8Cs=;
	h=To:Subject:From:Date:From;
	b=kCu7Cnv3dwoIRt8/vLnYOwh+8yexDNMAofUtBn8flgZINzYTIaTtI8YZVPtzfCGGw
	 UlHijOHWDYiiEGZ5Z6aS4QLIdA4HSoF6CpS5WFc+eGCDnvkC8Zt3xQy/idjNgcnBR4
	 gfXrWODqigTzTz4/Na+ExNLjeZjT4vMTmi9kArXev4NkAX90lFolHsCGEmpnX1WfSl
	 0dHd1sA0JOEN87O0ZtRiTc+BD3wIcZrkzBqm+lNZLkiyecSDX0mbYk1OzoBRBjAex4
	 BZHWcTovoDe9KC938LEr3rCKsbVXSU1ThWlaQVUpXJdKc/9wMp6EkPqT4wnqN0zxTl
	 0oq38MFESUCDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B1F9C67861
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171261529641.32141.16753497286465545649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 803483d941ac74c7cf86c4def20256aab6d336f2e3a40300e926366119d95c33
Date: Mon, 08 Apr 2024 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712615296
