Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3080E1EF09C
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744306194; cv=none; b=CLdXwqHg+NVr5UYsfxrNEUAhjBis/mhTXtAgYuEiqRAQ3kHKTygnCIJmFkSiGa6bCPpma+joejJea0pCLPYwL3j9NyqyOc/8XPLGFExlsTJeuROQu5+riSn0QeCYwoGNDWG0ZLdXnt2mb26cSnXvz5CGv509ZVnvStjPuTKCjcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744306194; c=relaxed/simple;
	bh=V1WN8rdPAIwyNW4VnxZD9c/hfO9EAWhmGHURzkQdlck=;
	h=To:Subject:From:Message-Id:Date; b=CJjSypxSCuvdIHQ6og/Wx3XbZ9cdJ/q1FD2UGc1ltMM66wH7gL8AfERr614bho/jtuo7A+DyjWyQSCGdnftFMS4UVDBESNytw1W8hBpkRimQ7o8E5+j8FbSVbJTRB+qnlJjRfrLQ0O2GTV1ApLgiHI0IYIm/pHPqagT4ephYMIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RFdAy6gx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RFdAy6gx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6842C4CEE8
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744306193;
	bh=V1WN8rdPAIwyNW4VnxZD9c/hfO9EAWhmGHURzkQdlck=;
	h=To:Subject:From:Date:From;
	b=RFdAy6gxV8tcMXXqdaVHpbFgXpnuc6bhu+jH1UDq0GXHzDIHooDsXhuhuyPt6G2ue
	 zvu9A/IumyS+qAVOj+Ly6CtVJDy/Ji4j7wX52Q4noaMT08EAhgQfcKesCMseSmyUml
	 ivGyQxHE1prsfGm4GiPdncL9tVj1k2+jSznYbTI2eeWLJ3Ot4f9R5olKtpZdne0E7a
	 /BDc2E/KV5aWBQCP3gxhg/t4tSQ3LwI8puFcGO6FzVFhQFdfyao1tegHuUjsSEeWt5
	 xkR8hXobYFEPw+CVI6jhoX7nonLoNnNDkKyluKGL2FjEue6lzNqWHbNJqz/Duqj+kr
	 pcXKCRsbp4q+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9632EC369A2
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174430619360.9800.4559652595032948068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87344e95c0ce4914f36e30bfc020b377b694d15ac2897fcb12b1f3dfc3081d30
Date: Thu, 10 Apr 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744306193
