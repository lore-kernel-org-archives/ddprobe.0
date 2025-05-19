Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32465286893
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747670394; cv=none; b=YdRgr0HHti1ScNxESVG8xtjtopwL8rs/gYlSXshUfZPHLsTfxx5l0zURynsnDTG9/bM0ZLj3TJfYpqPUywS+1N7vWZWCvkNPsW5cSES8s0VdAtBh+87NbL/T0yZRTwXBqR7LgQT/fsi69FCsgbHZP/k5wSlAUY6KxAwSJUEx0Pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747670394; c=relaxed/simple;
	bh=AtYH3X6Y27tE034IycC5r9BKnIqbbB1WVNh1l5pKmx0=;
	h=To:Subject:From:Message-Id:Date; b=MBf/l+M086dXRyemEksBiJCLfkKs71Heffeu4MsYkYtlZLB6KXIUR2B5BDvWWA1kNKzBmJvxZxtnT6z9g9YPT/5i2Q6ZyqFVkvlCP4baRN07AoEh4hqmDiHkntOskW99ZXzTJ/baGOd67642lbTUQFQjpwqhChN5tbyuWOTrUE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m2lbkI11; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m2lbkI11"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC61C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747670393;
	bh=AtYH3X6Y27tE034IycC5r9BKnIqbbB1WVNh1l5pKmx0=;
	h=To:Subject:From:Date:From;
	b=m2lbkI11J/5rlJjWz6oo03aOoJ2TyAAeIj1xa9o2LNhc0fySJNvWiOImdci1ukENa
	 1XQro81MHnUzAM05+9uMgkSXr43FFXAiQ+hEQiS/+UrUXqeGndYA1lWAvvwQ4tp7EE
	 4WcLcMzCKyL3AIAJ5isOwU2bN+k3YMGZBkEOpF9gs0nEMGzrlDna2UQ9exNk0RifG8
	 biS+TsUEoqf1upr4QSmhdLxK8hTx+LjK3hecoRGlL43fpxBEUCe99ptVOVVlD/daqi
	 IfK8Q/4ZeHqLbYcLm2CaH8kPxRDSHRHNjPlrKuUq+d2nugbaLQoMr5vhCtV+/9jpGm
	 DEpCPTW4yjmaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E30FC3ABDD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174767039357.18527.5242242253730543398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fea8d8b0d5fcfd3554824eeed55e9ac9400489e31133ba0406b2572c7869e97b
Date: Mon, 19 May 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747670393
