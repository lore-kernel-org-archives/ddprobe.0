Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4367C2581
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727849754; cv=none; b=VRiWHkg+lX6lgNAJrEVARXBoCUO4APUkLTGF9S7aoC5llxCZAxHIC1dFQS742RQwn376wJWEF7MyFsBP9GOQQLOKc+fEW3YtV9zhT0Pgd3Eepc1VEd8pI5myip70SaNHhMK6b7t3FNzI2YXLqWzzWu8bG6txkiJZ2kR4EPhtts4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727849754; c=relaxed/simple;
	bh=efhdDFB9UI5m/k1pYBmgcegk1yg3hjCUecUx048chIE=;
	h=To:Subject:From:Message-Id:Date; b=QGE9WRl9LmDUS+zviKcGizN6gGORVq8In9Ejrj4gA6zyCDhb++I1M0JJApY/7kXHEnkcDeLVPK+SLQJ3FwezDcAXvLyX5/aTPVLoAF+gqgtYbYWJ42oeyftFJ16niP8qXzgwbS17/0Io5V7s3YbwFHmBf0p0MKI6xh8jBKxZdhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fuoMKTZ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fuoMKTZ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7161C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727849753;
	bh=efhdDFB9UI5m/k1pYBmgcegk1yg3hjCUecUx048chIE=;
	h=To:Subject:From:Date:From;
	b=fuoMKTZ71ltcK3yeajzNv52mDQm52tHgRXkZIKQy1xWXab3LDK6lTgoeBpriDCecc
	 1AMFrJ1kGvkTLhdnEEqO9Og9rJJ0RAp2EZlacvXFy/kuzlRomtdZkv5fZZHJPAfGad
	 9GkS+lWngpSvFK/h3P/hER5jZlXlrpR5hz4vB5SumbdKAll8Klct+CMAMwyfQ/DTG2
	 OipRa8Dt+2xfKifxJYUvkJZ85aLezioZuYKXiYvLOxiVzNCGgnnRQzkFjD6968SHF6
	 OIvuKDH69ohgwmMrPQlpCwoTHPgEwCsv39XBu/zEWUsQI1mUjoFMEO5Pfdsc1TXW8J
	 ziQ77tKI0yNtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3480CF3195
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172784975364.16951.15293563428997724861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1fd005965e82087387fb6cfad62eec3e15527a7889b133fe93e4065da5a4bbb
Date: Wed, 02 Oct 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727849753
