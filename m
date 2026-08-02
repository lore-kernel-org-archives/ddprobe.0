Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A7C2ECEB9
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785687034; cv=none; b=LP6lb3FNtavbW2ZxnjO70CYB5uE8clMXRqITol1VZ4W3Ae9vLDNbIvTssRoKVRDT/cj6gnuy273md+7pskIsqH+mOeQEQeOJQl1hBPrIItSDqf7RANooQCAyPfgXTD93KXqVKZiX0nXqfv8+HGH6o/PaM+IIKwt4aySIxCYf2qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785687034; c=relaxed/simple;
	bh=cn7nwYn/LCxlvdAE1/W5qN3RhXO3BFjLZaWk2IWek+w=;
	h=To:Subject:From:Message-Id:Date; b=ntnZqas4gfAvVgor1GDJvqmAMuoxQ6K/wSgMAObouuZVpKNXcPzYVEt4ddHCAnuIM0FMYuiu53oUB8Bi7o6ZEGCFdVDZgSAo776GJC1iGkCuPwAax2j4X4KRnSg7/oNxZwSjgj4RH+rxTFHKeOHHVnMpUrDyobekn2nyoZcj1Qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ui75UwpF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ui75UwpF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC35BC2BCF5
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785687033;
	bh=cn7nwYn/LCxlvdAE1/W5qN3RhXO3BFjLZaWk2IWek+w=;
	h=To:Subject:From:Date:From;
	b=Ui75UwpFAWVBXCOV+F0g0ishln+oko+OvBOxArFz6no9YhKCEkfK3fpr26/eOQyGb
	 DUsJQdwMrB81UfPPFRTuQpg/TVXyZhKqkS8Bk/6jh73+vnpVZ0Y9XHEoJLcxHMdzZO
	 O/paDEyJ998YECCqPgU8mFCvsphuIrdezArurbWwxvWDA9Dk9RYLGPCg47ySl/PjCz
	 P3jikPwyKmCLeeFVJ7uJirgnVQb9qEwbCvrh8peGpNyJlA0u2T7NU3SG5clzugnzRr
	 HEh/Ngl0xck6t/8h6agAP07VEYswmoFCl0HZ0PRZTwMBNCGQZ9UKNdlhl3WLpMzjhW
	 6zyazB795HPuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A975AC55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178568703368.4062.3444756615628371086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26f1d96d6b8773dc1883cbc9573ee4ff2c4eb738217b2ab63a3fe32e82c0812c
Date: Sun, 02 Aug 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785687033
