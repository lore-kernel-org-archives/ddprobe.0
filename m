Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3740723CB
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737648354; cv=none; b=tPJTSvIfM9uUqhPcJcNlPhGSwulM+HdOvRUfQWTNmueBREVj8wAsh6fjceI7841hdsPhlDKaLYfzw323DW9BOquzlsTE9GANeO/wvGqKYyFvY1yeFJqYY/DOKb2KSLEjxIEiJbXdRakMPRf05U5HrJIaryuaPn2lpYea9w6//UY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737648354; c=relaxed/simple;
	bh=JFe9TTDvIsuP8nNP0vflzmHyZZrkvtP+VYxyOvqArOY=;
	h=To:Subject:From:Message-Id:Date; b=iSERS++T/H/CFrlJdxDqW/cFiKEJ7YMz3RjeT5ugs3vrjJ/ff0xXb3ni5X4Brfz78PVTFr5lxdVDcSSg+TEEKW+IcffhaldbTKbRA41EqLyva4/2BRva1ZGSCv0OXfegWvFc1+3iB80xhVDQ1e01mH5jB1EfpfXh1F7izbxOa90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2UZkMBu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2UZkMBu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69D5C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737648353;
	bh=JFe9TTDvIsuP8nNP0vflzmHyZZrkvtP+VYxyOvqArOY=;
	h=To:Subject:From:Date:From;
	b=Z2UZkMBun3XPEGZS4l5iGFf7raV0p1q/m80fZAZQW+SiwUlq7kkfYT0eabQTK8sFA
	 mnZ7M2/wq0znNbvWPCITZvViYy0ndkxH2fHHg8EzSZDHE8ts2b0wPoEf+fYZ4510FO
	 OjMGVzpJb+FtGGLfCorLfCDxZgCcFTP3cSL/cYxWrrIxFZmuARSzIfsBWFjn9ARJoc
	 eRJwX1ip9V/yyI+n4z/3n3WB+LyS3H/6E8NLHMUoJzhSinbDRLoKDwIawkJ5Bvs70+
	 aSDWY+gocIRKX55QRFARgcAbmsC10P7S1uHrKK8HBe9mA5wEf6yFGmPJ4r9wRt8ryW
	 uTQ8PISC/PNPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97887C0218B
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173764835361.6794.8475723090833262693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a867566171a6b79ae39f7b63897b9ed2c962d081f2ea68113fc246d581dbbb84
Date: Thu, 23 Jan 2025 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737648353
