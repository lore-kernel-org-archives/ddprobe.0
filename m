Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E07D135A53
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766777034; cv=none; b=KZwHQWGSaOf7b5t4m1WPGXJSw4BUzpqDIcIN6b2rZ2WbDAcVssnNwx1pQbQvE8gFNjrgFzgZ6h8akwA6+NeNFZzSFdhyDE4BaqhymHnd329UlsfeMyHR0NlpjkNg+DaHfPWWt8W4fVKJ9D0inU6yUGQvQ37BSbR/OrSq7Vl0TwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766777034; c=relaxed/simple;
	bh=3XEDO5jG9x51UQ+LctVitknRPsEwhsQg/8tE49yO7w8=;
	h=To:Subject:From:Message-Id:Date; b=Q1EQtaa8Z3Tdy8qaSm/rsjjk96avBjNVjkKsjyRbe+isumI6Khq7Hj0+c2iIqWkY6Jir4yQEKSCc+mX1UtEaUJ2dpvf+p+07iibop9EXtpXHtjRRRStEIn35wGzXFr6cP0VR71qVEiwxSoMJ7UUSwBIP45GujjBA7MAJ/tifsnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uhteEjbc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uhteEjbc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CC9C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766777033;
	bh=3XEDO5jG9x51UQ+LctVitknRPsEwhsQg/8tE49yO7w8=;
	h=To:Subject:From:Date:From;
	b=uhteEjbclPH/+rNF6MCv9GqBqA/4X6Qg424E4fpD30HqpdCAjQyOxLjWB4lL5RVzT
	 +HoYrbax4oHI2gWrHirT/z0g+wpOMvFJfrivDVJva+6/QjpgFvmMBpLoomL7vbwcbW
	 LsV9n1GrRgL/rVOv3nJveINp5cnq26rGOjlpiWYBjXTX48AxkZcTbwYd63/kUfIX4k
	 E8OFnODfzDUw3vNAf8u4Ex0JHIMr180lIqPfHmBnc+1K8lzJEmaXyBXbNFEmtsFUXC
	 d+7Tk+OQg7KIcxIHaHCWU7Vg6CLOcBhItXOFU+DxvgtQjzI7kPLSJjHKxxPlWum2CM
	 mF9Q0TNVi7lPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9736EE8FDB5
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176677703358.2158.7405571215236083314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7032fd6dc017c6b59884c91e07b48f5874f1d3a4a6482c32662fc586df4a0460
Date: Fri, 26 Dec 2025 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766777033
