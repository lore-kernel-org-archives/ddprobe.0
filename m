Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E74FA222565
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770066234; cv=none; b=E2KTsJtH4F5uzJqlDTZMKBfIFLSP7E8hXs3WmKBcRCajdMYfVH1aTPIUoMgEh+KZTWRcVBCGOcRQTB1eYtHjn5JeMT5PgKKpP2+WcX0R6BawtyPWQWUG9yQJ219LbejOksHZnaMzC6OEXbJa3ncVOdHPL2XBuryOJi5iZqL3Xw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770066234; c=relaxed/simple;
	bh=ccsXtSlKLzzD9kMyb0Nx+xXBn9UKx9HtI85oPeWNgnE=;
	h=To:Subject:From:Message-Id:Date; b=MKsFti870suTnv+Q5mIHS0+s2emPkt4xKxy6WReS2L4jfFUDiTdvlWzJrd0qwu59/i7l+mW/cDEhUOgQVf9H75KXeZS6pqq2NV6sRr5mlyGUhUpuEeYuosC8tu2U19uyivCQ+wNCy34apJTaF1JcYsMtgRedFhS3dsc5kZHz5wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qEU3OBTm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qEU3OBTm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2332C19421
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770066233;
	bh=ccsXtSlKLzzD9kMyb0Nx+xXBn9UKx9HtI85oPeWNgnE=;
	h=To:Subject:From:Date:From;
	b=qEU3OBTmXjvOa9i2LPs35TXaGCH8QILbk7clbJR7M0lhDqiA0aPK5ltJhcsRjjyS2
	 Clgwroxs7h3+n0Qi4LIUSj2T35cO1juGCODJDhENMWvAbFzeDV6pPnDcyHCXgxhZNH
	 oAW4NZuZGnFaLRs07wehBLLFcVgDvLEXum+yM/eutp7+77CW6xv075d0uSCIViSmZE
	 mdmiGVl4GYE8YLO7Ay6pt6p3pb5CvCG7cj68gDDkqs+8l7e+eroo1FlBgCbVnpDmbo
	 4YWE+9q0Q7akYAZLLtHSCUrLSvYwxxoZAWWr8EIPkH5gD54gfZpfMrw3a5f76iZOX1
	 bPPh3zwaqEe/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E56E7FDDA
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177006623368.10520.11134691854816693987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 329a013c19f2739efa57533b83eb85c44f31a1b1c73591c18d1559b665f04f36
Date: Mon, 02 Feb 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770066233
