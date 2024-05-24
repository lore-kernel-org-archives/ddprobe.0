Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7791D36D
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 01:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716513203; cv=none; b=Of9AQJJvwgbtfekOeeBU5xONvzyGxzjpqq1GZ2TpnGmmBFxWkljQ3OP6fB9vcECje3V/f8rb3f5+VFs4z9B4UUwF+JmvG9UJJr9Uyuhpzx1L33p+RJUqd/AjhdVNMn7QPWdsJyaTAliH7OJeEWVen87lMlniBUs+WnhRQCiwsp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716513203; c=relaxed/simple;
	bh=jgMuK+ZRgiDXdFxoiHiXDNhH0KTdeedLUmYaCZc6H3o=;
	h=To:Subject:From:Message-Id:Date; b=dBMfUnPeuAZoVkifvDlouOfWwl3BRySXMaDR+Dfnz3587SDP1nix89JDl1TQwj7fEkq5FWDMbfu+6wCcQpLANqIkghaTlSqRFkWit4U0zztbECtsc9RYvmiwOxiHrJROgqzP00IMKn/zXYFUYnU+E9GWqQA+h5Xh34HESybGLn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H1FJT9Zx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H1FJT9Zx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E858CC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 01:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716513202;
	bh=jgMuK+ZRgiDXdFxoiHiXDNhH0KTdeedLUmYaCZc6H3o=;
	h=To:Subject:From:Date:From;
	b=H1FJT9ZxQT76kV9pBvJUnClmHXwXwO5qf8jqbNYn2TTS9Eq6TBpd/564TtCwrzUF/
	 4kA5kVMOoeeTKdbFetm38l4ixCkGXMXk0iqNqyA7DICRtgtNmUxfFSE974Qpdikta3
	 sNK+1ynmcA/VqBzrFfe699MAEhIVAPzSYMYwXCIbrgtKnIBKBJVQ8MQH9gxv2P35nU
	 og0hLOIyyrlKsimeyAWOtU9HPlJtqzCi8tz54y/SD2XkCflo1ZIbIsOkxmWwFHH0jv
	 yFggnHJ4X56SE1GEKAGF6O+omrP8MamuM8/8Wtr3u0Ih8SnpfktZzbXQwy5UN8dRTm
	 2rUcMw+54Joxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D11BAC25B75
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 01:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171651320281.23399.15001563512922514254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ab927598e92d4e54197acf93d86dfe70ecf049f4c24d00bed8f5f1d7bd9f784
Date: Fri, 24 May 2024 01:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716513202
