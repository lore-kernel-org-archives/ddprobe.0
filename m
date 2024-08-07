Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21CAF1C3D
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723001154; cv=none; b=d77ybevyErxarw3tFXjoC9i90lJW/W3z97PTy+mUXuBMt7wmADJ8DBjBqfuHk+e6Vz0Md8FsuTBW8SbBR1I98XFX4stX57Nf12G7fU+AkzebT9NnP6zR0IvUDqNI8nUCaDO4Tcb9eOOchcHTgGYQSImFlQ8L6JF6vZ0RBG0j9b0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723001154; c=relaxed/simple;
	bh=tAgh1USx2hwR2qzaRvQd2geZErTqgZCfLz1I2aV3CR0=;
	h=To:Subject:From:Message-Id:Date; b=p5HaJQsJMR/yzOgVFp+fyS0QMQbaomPpiqJ4N3eyMz05yCd6Sg3baP8MQrA78zzkL6H1zMGhMrV0tqQQZ2DrwnBGKxtz6WXAVM0iH41KH/H4XzveUyjcs8ajvp1SxGPcZcSbK8w3qSer5YSFfHjBKwsqzmnHO5rJJsKMgRZlbfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R1RIliYy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R1RIliYy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F9BC32786
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723001153;
	bh=tAgh1USx2hwR2qzaRvQd2geZErTqgZCfLz1I2aV3CR0=;
	h=To:Subject:From:Date:From;
	b=R1RIliYyGBLNb9Zawnw8ScklNopB3y//K+2t6i8jsS51pRY5+W2y6umG2l4Xc/Njz
	 3gXPcn0GW3TRMRBYGHB0Y0CnjOOI9KvoH2/Lazy71z4Mbf2fIvpO/zR95taImBX0Jt
	 aP/a2GFn4N2dnxO6XqOCwDkRvqaZYl0rT8G3SQntI7QViT5aqsbk+gUkCtQ/RwmTLw
	 5JhXL8qRVJa7Mwr9/1bKrYx6Z02Tg+WIvWc/9UPjwXbzfDhC6BhJyS+lJpqTUZdYJA
	 roS+FuBHV0c8UtdtcstEU6ITOhp2/DxTpjK++4WCutka3pPkVlfbYIjeGrQ4FXI6UI
	 WBJM3gEdjZc8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A61C52D6F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172300115360.29556.8687170514639060545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29ebeece4d3581f4fb66a90ddbdaf5961899f77a6dd045c5a67e274e5a1e8645
Date: Wed, 07 Aug 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723001153
