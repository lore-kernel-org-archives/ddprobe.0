Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F43C3A4F54
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773831294; cv=none; b=Od/vQI6D+9QhudoJ9LT9VV+DJRtXp3XJ22QAu0sbDhF1/zVwlMVbuYzDLVa4OjLILiM0PKdrVBMmc/xpqZhPLm3BzezkW84By0ZmEumXjsmC6ceulpDCzf4xNpg8FesPHot1g6IwecU0uXq48uZ84t5I2J3E1mm5Gu/JcZAV5W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773831294; c=relaxed/simple;
	bh=E2n7Fbhpn31aJbL3yZPRD42fCutkSgTVKqGjvN9PdZo=;
	h=To:Subject:From:Message-Id:Date; b=VtiSaSQiyH9Alt8cnKTcK9Vt+EkG9AnhmOD6INHX55NcooluGNM65krzTNZrtkQhqSGICgpo2xBLEIpYqulqkL7utonb7mcDwix/FlFkeZ1/ErU4vj2h5D/Jsf/a4Ps3lH0fuk7jfwnK6KDr9YDGhVYODuL382f6+ZYHNQ4kOTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QigHlL11; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QigHlL11"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15D0C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773831293;
	bh=E2n7Fbhpn31aJbL3yZPRD42fCutkSgTVKqGjvN9PdZo=;
	h=To:Subject:From:Date:From;
	b=QigHlL113in0MBFhYjPvtEjFMj1a9J8XKc9VuigkvPDsFLMIJGmwniwRfnUMtqX0Y
	 qAZzJFJnCdhITrEwnIAKNj5Lep82kDWqb7LEnlQoP6cZBnTsVp4VHkWBBKFxuw4sWg
	 l86OBoUn3Ki7CLUCQ4Adq6ZHEbTvZ0zz1CFwUwHBmoSazFzZ+cNk+Cqc1E+jKrVXT4
	 lztSeTkJbRVw7Vb2SRT9DC2L16TftPB5JkYn6GASW/vkSjy8lu3FoT37/pEv96+pFZ
	 kxE3oEVLvAMhBK3/o/fDXoffpZuDfNQqXtd69XBHHoK+lwvs8BGDZSRaKkCkCEjxQ0
	 XCoFyWmItLHbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C65103E161
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177383129358.8501.10655787016655759695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20a10676683775b2cc8bd7c76349e5b6e8a61f8440c0e41632dcff9cf5b721f7
Date: Wed, 18 Mar 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773831293
