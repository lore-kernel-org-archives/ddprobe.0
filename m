Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E1A33A710
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765920834; cv=none; b=BHI1+Zxozmm29NtL60dG8uHJGbg0n3MLv2l77cEvGt/vLhDlEHCV6Tz0HKN0LEOyqmncYiHRbdSwLYR29DkpNKvtbk98wJ+GS7FIVgfMNz2fwrdj2Nn/N1RjsFLmKF3opdye1s8non0SZtiEAuU7/QtN/1goOCk9+3GEumGXQzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765920834; c=relaxed/simple;
	bh=8Msh/A1l6OQC7cET3zW9dDihFNDLXO9NNRtXzaSEhfc=;
	h=To:Subject:From:Message-Id:Date; b=Go6XhDHSryaEF3Z175XLCQ19kODP+UXbow+X3S1YDJyItUS04l3I/ABB/o9ydk0ny0AK7bD/H0Ty3SjPANXsnzDvnVOiV6grmLb2WWGHjwcwfE85j1r/vAszn8/B+eHb86LTP+l0zjyOT38eiPobHF3v61GBtmzopM9sEmt3XI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubdTpor1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubdTpor1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9420C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765920833;
	bh=8Msh/A1l6OQC7cET3zW9dDihFNDLXO9NNRtXzaSEhfc=;
	h=To:Subject:From:Date:From;
	b=ubdTpor1/x4+DJeVtsj5Nc7lUCyc7uYgXIeCz3Xxf3CV5FLGtyX2eg/Phbao4awQv
	 O/1lrnfLcC2YB4eZZecbO7Xj0bu3RQV96mYhQm/sI2gKk96nF9k+yeG5ARBjA7yTRM
	 qUAHDeyiYLou4XdjLtGps+rDlbOscQXRacebs+34MgpF2aZXbzF4RZrT2SBN9xuIN1
	 jRe8kvwB5l7gSBkQNpDU29fLG9kZqRx/rKOBavUlBWDLDImz4RSqO/lMt4yi5YC85Z
	 3FlpHq+JHNLZ0vneDcvvlC99X7LoKXNhdBE2Cxx83udBM5usTLqn9dRQb988gurmsz
	 Dsgsxg+r3LEYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FCED637AE
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176592083359.13209.17223921484894731090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93554d8573eb84036260097b489af5a5754c56ecec67d76a7b983763deca1ac7
Date: Tue, 16 Dec 2025 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765920833
