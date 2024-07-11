Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 851B212C549
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 14:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720709843; cv=none; b=sRQPG2/AznXyjt7/xVzxy5lBcaqb234xGhFzXNjE8Gv31aic4v24Q7eCiGzJnN+i25KMOt2P1AQX4IF7Ejk4RL2R+E9yYK9vBs9Kua+/QrDH+8Gok8xATJX63slnT+QgSuWUn62aY0D3DwA5/tJOv9X1HcOGPxqFhoJ6TSKksCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720709843; c=relaxed/simple;
	bh=lLp12HoZHm5iYl28U4UnZDaQiytGgsAQtaRZuuxZdpo=;
	h=To:Subject:From:Message-Id:Date; b=Ay3TCdp27GPVwXx+mAr5wTPWXDLWnZQm3+801WnvDxMDk4yXvR65Fp16T1NSfUNySWDQR+WKPf1lsPU/wmByOhQ8h+9BPXTy/59oARlyffD/rv0TOMlyPwz8+tD9WGautMQfYAzB2HuR2UJC/aiQmoYxWw7QLPKae+i3s9k/7DQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/ih6imJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/ih6imJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 13D68C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 14:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720709843;
	bh=lLp12HoZHm5iYl28U4UnZDaQiytGgsAQtaRZuuxZdpo=;
	h=To:Subject:From:Date:From;
	b=o/ih6imJ349KUhx+hKPId71aKTJvE6CTFHlDm7SMu2fqdUfA1+0hP8BtH9YS0BhpU
	 51sSosQB8Ldl5SOKCo5N/uM28rPGK3yK/f2tJ5mwzadnO1Z7XNOdxJ+8TPS8ppuCU8
	 B8E7ueKVMA1A3ViO4lH5XbBTElRQtw6Sf9LtLb84FGV/j7+bz8ieKh3Dn3PbXmSENT
	 x9iyP3Cm7hxPSZPBhBckdpkEM4L4Mr6WqMbdA1eNmghPJmKx9i1MN7yxhp48lmilLW
	 dF3jHFn/UtHNakd4RSF3xfGE6ivGbGbUAE1GMbUpOyznivrK2zdm3/roVWRffFp03V
	 TemQbeB3JloQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7A1AC3DA45
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 14:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172070984290.30702.1786719443270117556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad1db412540b6d291dd60708aedaa322977f0d8e9f0d12275d8ac9621d02cdf7
Date: Thu, 11 Jul 2024 14:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720709842
