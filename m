Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56872130E3F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 15:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714577543; cv=none; b=HlPiufCG4sVeGQs3/uY9IsBIJIbb9l7LwHat3kc819DwJv0kexEuQ2J8mAgzT9vnTpFJMvC0ID2O4AK/JX1Kb3bfRVd++Rt1dg/luHuJS1jeXmDLtLbc1U9bDfy8ELrHB78urB9ngeOTG6XO71070ejSt2jJkCLbYkq98FyiHgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714577543; c=relaxed/simple;
	bh=8W78YU0KHAu7r/sZVF3HJ2HlMNYerLUrpDzXu6aFkZM=;
	h=To:Subject:From:Message-Id:Date; b=t6vrNPeq2iPDO1RNYbDfq0tHW5MG4Yl7+H1ousmkPpcMLVEjWVuK0CvdXK68YmyF16q6GSh1eXo7HwMIaLln0w8w7vhk5mAdRhmszD56yGr18Lyh9xGdZKSN0MLAK4B6OmtnNAfqoR8PW5JfI2eCoLoVudCvO8qRVV7WMT+AIa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fm1byBF7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fm1byBF7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC1F2C072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 15:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714577542;
	bh=8W78YU0KHAu7r/sZVF3HJ2HlMNYerLUrpDzXu6aFkZM=;
	h=To:Subject:From:Date:From;
	b=fm1byBF7qJeFPBPVVA/os49bY7v1q9YQmNOfKJxVPj/xHWz5yXc2Kfjj9VWUXuhO9
	 s9ZVchRK64jt/5Wx59PqScV0KosR6d7sjxWWhylryLrXEkanMFBkOjlzYkvLr8sD+H
	 foBbT6P3AwSRlw/RgbN8EridS6p5iWOwj4NyhngVP5osYZcny4zDGXeG+QiZdg0ekE
	 MhbciYJu3m7z52eb3NhFkVyd9+m7vPcAmjBBFMdr3SxKlZNC91atPvWGal/Xvd/o3g
	 8iMGMe1fdHXMMxG+YfVq/GjPsANWEJ+HCHO+7WSqb/cqSI6jGEPHqvzdyxPTNIqC7P
	 uShI8TN7MMGHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9F9BC25B5F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 15:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171457754280.27338.4285913078814595973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbd746d5183cfc3f3e8250c26d17abec8c6199763862c3a603c590eb93764ac5
Date: Wed, 01 May 2024 15:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714577542
