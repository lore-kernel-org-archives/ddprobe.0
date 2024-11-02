Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB3C158A00
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730585154; cv=none; b=YtIiWTHpvsJrcioBwHJDElY+7CZ2Fi0hmphJv6Lc+8xUV9FChEWM1bwnUmAcMAklmTNVYbo2HkiO49nZ6FWeokZXNOZ5yJJcPGMZuIqcFvBK5AUpawnWUDsCk7qT/gag3TEegKTuhV1Q8xFyRys4IrOqs16kh3H9uXfMUQ0GMlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730585154; c=relaxed/simple;
	bh=6DJSt/NtLYkxVhnqr+FTDInS5aZs7I1qYvMxufzEKqY=;
	h=To:Subject:From:Message-Id:Date; b=NYasJ50uat6or+ZXpFdPZSOMFwjlAKtUEB57KnOoeLzCQMe96pHwE6eGdONORSsscC6e/B/Zlvl4THcAnLdAPy9TUWmhYUheqTS4JztMBu9XqDMn8Pm+n9JArL7/qIwv5Iyw6I1CtcXk8QA8s9uzOVsmQKmKRMZpZElzL7B/wpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oM5CaLX/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oM5CaLX/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD49C4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730585153;
	bh=6DJSt/NtLYkxVhnqr+FTDInS5aZs7I1qYvMxufzEKqY=;
	h=To:Subject:From:Date:From;
	b=oM5CaLX/9TWkK0fO9EGZtdmkjNPzEiFZEaqsH+5h+LjbESua+uAssc0nNUyYpsjvt
	 aDzBLK90SNCMQOPuSxMiHGjm8G++6aKtNoqKhDV+ULIUQd+p6nppZoO2BiiTCraIbd
	 1AkQ5GaN7jkP8Uz13deSwxTtNszomB2Fm3Qv8/8zGYql43/yg/lSU9mk6GyfxTlYZf
	 zOK6g6F78AotxOoUAuX8Vbwnpi+sEVcOTQnswsfVPB5VIMSIZaW0T6JNFy1dsdY1yZ
	 TVdCTVaKEL/5uICDSoZb5vQH0Gf7sXC/BFeCsZWxFWOyVJojulNopf95LjiuPA8O2z
	 ay5FQjEGz2I1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B796E67814
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173058515360.8074.15520072352234493096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 485e4acc7e70372c4cd1eb0a96bba77e60c5f33f61a20ebaa414597bca604d7e
Date: Sat, 02 Nov 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730585153
