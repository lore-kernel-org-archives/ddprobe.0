Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16662DF59
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755307795; cv=none; b=gyU/8/kjpMWeVs2XrGnk67OsxExCmVhkcZ/N8iKP9VtTKMPJ3K6Ge2qTgJfnZ1c2p3X8W2YU5QBlhkrteGTvfEPzQvi0GpJpkL+fZBeyH1pZTeQXPkW+XJ62YueEOEt3HgdU6w1D2d5+mi5bkYBC5EYEaS3SaKmXISXM49wNUJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755307795; c=relaxed/simple;
	bh=y/Vq7aIigydhSO2VN1q60I31z6+E8hvJUheh+YnOgTE=;
	h=To:Subject:From:Message-Id:Date; b=H/eIMjmtY6wB4rSO2Aw6rabD/c2uPWbI1AOYbB3cagoUOxpK7hCNh9F2X7DTQlp14Tdvg7jTqBSm7Q4vU13kFpbXx/JR4YfxXgcENzDCvhF1uewLTzh+qmnkb+35ahZmHheB4WV+XmWPiB6YTzRGFcPV+WztWIK2OE6xwBdzddY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s3veLTLF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s3veLTLF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2298C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755307793;
	bh=y/Vq7aIigydhSO2VN1q60I31z6+E8hvJUheh+YnOgTE=;
	h=To:Subject:From:Date:From;
	b=s3veLTLFqgq99qFtptH1ELcvRY621Q8MwS/hiVs82gYBjC4RKRC18otFUq/CX5jrw
	 1yswnULkdR4jM1gMrOZlXZl+jL9ra81FG+N4eBDLqbUuzfgRQGYljFRXAGWn55dCdQ
	 FaZ8od+jyNMqCLqcM7ZLTbfBCjvuiRUirSwa5fN2WH7q7pzoi2Vw7tuxocA9Jjf8BV
	 6o4PcmwHY6iOTPPX9FKPrRmRSc1z9IuTOtuwWSKOHu7u5KDShZVamgAcUjYF9QGcls
	 YbNu23U7QmdSLbfcVnWu1VaT6CelaeHeLjB5BnWh1kPaQb+5xZM0kCK0cq9+Z7/vhe
	 XEj0xCUJmjVcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93602CA0ED1
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175530779359.437.6743574423661154632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97e3ba568602409342b00ce4af9d08832cb5dca17c6f5657f6b071a58fc7d9bd
Date: Sat, 16 Aug 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755307793
