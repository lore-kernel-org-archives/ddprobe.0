Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC3C35973
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753026594; cv=none; b=i72FZzPVV+zkbkl23JHby2hwLWdNe7CaaJ9zDUXx+OdS3f3Ub31lBHaUC+Lfuv0aCWky6zJsSovzB5fIBd6hLgiOlua9yuvP33bL8N5ppzeQXgC03AW+ipHfnUmZVnJN81XbfVYCOPBB0D6oVvpv7jrxYrbnpukXr+NECNCkVcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753026594; c=relaxed/simple;
	bh=DlUZmjAV81xXHaXfRfFg8ulYiUdP9UdDksOGH9qpd1o=;
	h=To:Subject:From:Message-Id:Date; b=G927JJajPX3M3nhwyqzpLrsgQztW589IMDQmBisQHX1Q0/ap90t6SAhQKhjzhaIGp/6Uh0U5HfhPitDDwy695dipEZie96qbm/fKci6SlxzWXBgiElBOy07Zr0e51tYXD1x3TzDP5y/qpDSHbuzE0r0Fr3uJMjwwmnzU2ooyU5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J9zmZXXv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J9zmZXXv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC09C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753026593;
	bh=DlUZmjAV81xXHaXfRfFg8ulYiUdP9UdDksOGH9qpd1o=;
	h=To:Subject:From:Date:From;
	b=J9zmZXXv0nr83RGPlkPVRoqAyCD1+ocA59ILnyHXREy+ytHvj2YjoNqNgKDsw4/VA
	 aL1HtlgVZOnaZGedyi4BLr+9Ka9WaZOXHVEiVjI8t6cmzeptSKuoO6DeA5bCFEc/Gs
	 Ccu2r5JkeV4x0G1CBsWPRlLWnvIFqV43um7WBRWt+rsmx+cwiJo65Xp/QuQ7AUUCQn
	 pTeHOruu3J6vntv1p2wEPMWU9FUR+qOjX+aNP+hmOOA/Ip0GhyF4ITX2z18gEMQnTl
	 qJxyiPNFA4iMRjMJ36F23QtURWa4mYkSduEuTDy3EFbYk8lfus93KFHLJjnDyKqX0m
	 3I6DXvCU/WeKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DF8C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175302659359.21487.8890981764281219225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 252ebe945651ec74155086defbde34cb9997584f2037a492fbc831e055871aa6
Date: Sun, 20 Jul 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753026593
