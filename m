Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCCC2557F
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 14:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706366897; cv=none; b=NleFNv4ANhLSHPbWfEh1yjEsfurop2fUB7d1601MTj2dkeVyGoAsk1AHdJxIKoK0Fhrf3tNiNtiN+CVrtjKxNLyNZPwgXP2lK0XsXhICCrNv+evtlySH02mV9fdmuExUmp7cnF3+ShkPDgHY4/dOwZ7V4LSle2wMYjmt9Q7MHzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706366897; c=relaxed/simple;
	bh=BPPGbqAyYtOqhvHc9FGyoKKiI8BeMW+SqbZbSkxD5GM=;
	h=To:Subject:From:Message-Id:Date; b=gzwGNEDswmeeW/srZ+ZWa2omjiJhsRHV2uLH+5Y4DpSpNy0Ht8QPKoM+I9zwDJD5MdHGXDpg8Bibs/JhHhxqRRneFPoA7MNcM//nQrOxzDVkZWQAZBJ/uLguHllxs0Guem24qT6pJqWCBnnjONn5s0Rx4/YsobnGYHxR5PsoumA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fuEIdLOJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fuEIdLOJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73EFBC433F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706366896;
	bh=BPPGbqAyYtOqhvHc9FGyoKKiI8BeMW+SqbZbSkxD5GM=;
	h=To:Subject:From:Date:From;
	b=fuEIdLOJoDHfnUPomftOXwwYUmxz1wwdt8mihtkO52FAvMxPHwfybaIB9L3tUwSP/
	 9OTERBPfROnezJJGHIn0ectft6u8o/OsYui19SAIUall//VhZLWPvwlt1RcigBAu6R
	 pHExa6+7ZK+RNmED9ui5RoAshlN1birXsd+IZAgiBOiXdPCLoy+eLMHhCS1RuLU+84
	 Jfc8gGmO1culW3Sb/1K89MjMmkYVEhZJTH6MqC/e06VtBBLm8nOnCibnWKIYV8xfOP
	 X70YcWHMwf+NABQjU6mw2KBngsVV5aEeJKnyn3kK+YWJbK/HvTOfjkD2cC7m0dl4O+
	 uvSZpsIjTU30g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BBB8C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170636689636.16329.13836644945675465727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f98c9a408379db6c534bad31d8924ab368e05c90143798b0ebc3c59346b7316
Date: Sat, 27 Jan 2024 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706366896
