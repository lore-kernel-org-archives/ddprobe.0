Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7328619C569
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743030595; cv=none; b=obBh43t0zyjmaQylRJgX8QM9SqiykDm3KKE5C0WdciAId2qkNLZUvudeEDU6Bt0Mj4xd59WKX4czyAcm/uKjrhB5qz3jwzF7yCZE3L10rYCoqVknslooHB3seXzT+riXh5v6CpiPL878vX8FcYMQY7ts4fdXZ/UbfpcEeAVfzz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743030595; c=relaxed/simple;
	bh=8Q1g0PHayX0CVcH3r06Jt8sj685SDA1qFOyBLNUGrmY=;
	h=To:Subject:From:Message-Id:Date; b=brydx7vfATQKjdpBaFnUgwfaLJdVp6UQhnwGOuuVlpf7LhsingAk2TRje+xv8ugrfaxQVVQ/tKlbJH08DtBEqAjb9jK+RnQLSevmSeEBUgV9/Uan461ZpCVe5jilzPoONF6tRGeaAzvL4fNhMfPTQs51LHEuLCrS1eI6zqjtBTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SnqBiEWr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SnqBiEWr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA76FC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743030593;
	bh=8Q1g0PHayX0CVcH3r06Jt8sj685SDA1qFOyBLNUGrmY=;
	h=To:Subject:From:Date:From;
	b=SnqBiEWrN70E5WLEfXozbsjghf2F+z6r7jRGO5t305NM+G5vgTK6yBE3NO3d2ssC3
	 174iroq5T6d4W12DRmWFBMp0BwLEIKPbeQrzUOMJpBhjhYD+7ExEjeJOyyEQ34YetI
	 gPXG+wR5oQO5aIysW141yHrPqOHOYboqfeynEnfm6RqcVUjFQrE1cVgQcq+v++GnxU
	 kC0K2Q8y2iCXCn6QJLOUlFL/Y9wM3Z26xTnmJDT3boAYN653F5UgFeBXjxdI/JjKTm
	 fKi2cMA9854W36n5AkXMKV0/WM4LFnDgFYcWBCcERhPcvzG6SedEiD0wKKTqzwFyL0
	 M9zrsqEenWPKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0279C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174303059369.28625.6478124105639034712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11453a31ff99bc47319e93418673e47eef128d701c534747e764cefbb43c5258
Date: Wed, 26 Mar 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743030593
