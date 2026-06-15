Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8182332BF52
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 12:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781526994; cv=none; b=aCaTgXVdaG6S8xn7YrXIRu/3NaJxhfr/cGEXmSvQI+FKFOY2sdm2+crlXxoja0e1Imz6v/3vGGtmS62bfKAXgr6p7dALtq6dEgklCnhsF/NhuPplscjS9zHwGyYh+44vwcihpyKZmKctTmBVrCvMrAwOlpk9LUx/EksWg7sB7Ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781526994; c=relaxed/simple;
	bh=MW8hGTRrwMflhBxSZSxond2NDVrQUGQDS5sV+qZ8/xM=;
	h=To:Subject:From:Message-Id:Date; b=Wtr8ckCeQ9ZGqIp+WiZY0L2FCOiyYxvlnTDGr6YQCcscthKbYweD/9J2DlugJ8AMbYMWJDmnx3Ns9syaGUgrwrQQwpZP1dnTSLaQevv0X0I/GUGdZMMwH6wBCV21dhjrv8Hh8rdlM21tF/M22WwZJ6qaRiCEqkD9B68wER8j0gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qu3ncQWb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qu3ncQWb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C619DC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 12:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781526993;
	bh=MW8hGTRrwMflhBxSZSxond2NDVrQUGQDS5sV+qZ8/xM=;
	h=To:Subject:From:Date:From;
	b=qu3ncQWbOAJtW+3r/8aZfr9mS5ZLUutv1lpS0pq7JT3MqHjRC0QufQhSer1PlE434
	 Y3imPkYpl1hnN+HqQjH0LMcy1qniX4Yw6CEJg3MA8Hm5UVIr5F2u8XOLWn/yt5k7kT
	 Q4XZugu8eputhfCqkBjZRoM1StTtcJPSpDmxljixVU6A4LXp2R0v1QqFwq2yVrzYYk
	 iJvK5XXs0eeX4azdN1ddUeTablJrsP0gJ0Y+YOher1XdGUJxNexlPO0QYv3MMShnQE
	 SgKIGMHQwcaya2VzhZvazbXDEebiL+EpVk4DvE+RCUpM6ld9ZvTy+PFPFlbzRhSEja
	 rQZYOV4qaHEAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD4ACD98C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 12:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178152699369.23913.4726743518567925631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e44df585772cd488e92c899761e45a3a7ca49024ebf1389dc0fca2fc5e072963
Date: Mon, 15 Jun 2026 12:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781526993
