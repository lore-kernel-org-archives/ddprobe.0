Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A4B14A08E
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732783554; cv=none; b=T1AjtIfAWW7UbaRcSaTtIJKHWTSYVkPvbExk7iUlO7NCY9kaa/6N/MV4qTA1kjud9Pf1A0JnCVO7kqZCMT16lQwxRyanb/tvJKC8ylLkQ0d2Uua4m6Ai0d0niGkyJGBRYJ/qEyDlYxg8zuDnrQT4AzCv3sv5peiw4J409b8gSuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732783554; c=relaxed/simple;
	bh=nvh/WPeEedQlLMeIsJPgCIGl1/u8pHVNw8EtvIonQLY=;
	h=To:Subject:From:Message-Id:Date; b=e0D7IGPQDP5Ax0xRLBDCm6XK0gqWc0fBds0zCMl0N4/Xxed0XjNIOaItc3Xa87yzEwI+6Wpcf07UEaA9PcqIUBqo2V1F/YS7XjExLgiAb7LEdtbnGXokfDOpyctSCTdzwPZzj8N2yRe+9G9vt6I0p+1R2Muq9Phu98XWnknqXAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CiU789Oy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CiU789Oy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7557C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732783553;
	bh=nvh/WPeEedQlLMeIsJPgCIGl1/u8pHVNw8EtvIonQLY=;
	h=To:Subject:From:Date:From;
	b=CiU789OyAD9+vkNdKpT83KZhwLkYguHxgzYhr3+dW6s3l+hzXYeHx+MltP2KrCKXJ
	 1v04mhrsQrrg7b4Izw5NNQQQYyrXQfpnkPIY754uOl046fsLAJ6tQFHDqGHsFwq3Sf
	 0NASXE3mGqt1b27EeXKVXobNPOzBd3yjmgwrj4KNvIFT10cSwnByrFfgLA/h3V4XCU
	 t6dmAVklJOFoaooiTs0waGQlG4+VLH5R4E4Upnlb4KlkPkPFimApATM5aWXMeKgL/s
	 QRtyBLJExxmY5Feg4QJi0NOMtdMLc5TytwJDewOHrGnaako5hCceyDGpps7DkQffmn
	 xKPQxKSfaKHsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F59D690EC
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173278355359.8518.15251340399182570721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d935156523fcebcbb2a9a719b1b491a57bcb8d7837eab4227a834f4abf19ec48
Date: Thu, 28 Nov 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732783553
