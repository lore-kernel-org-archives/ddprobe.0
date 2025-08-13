Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC1B28640A
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755073794; cv=none; b=qDY8OvZ1K7f695TFjQkWf0m9XU5gzSJ7N36RLuXRIjpoduuq9YdlAvg4GAjI2BZmVUjTdXpYDIBokhXT6RNWFRugOmHcnpPzuj0/VV1YiyqHIWQgT/lIDBn+u7G8P4nYJ/5wv5T3c3CS51mK0CWwNKj8h9+EwUSmE9g4ZJXeZwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755073794; c=relaxed/simple;
	bh=A0bH1LaGhnaLYP5woCckPmJ7gcx4vM5GXfyizeLKvcc=;
	h=To:Subject:From:Message-Id:Date; b=kegYu0I9ViGvilG4+8gwkkFLC9rjwtrKQiCvsFRx6+kWXRAORFOX7NCqUKDXnKOAZ5T0jSFZ6ERKREQAV92vijeuNqXVbAwnF+CcWRcTLye0bX9y/bTZ9wXyCm33IaOZtVC5C8o0nWAMZ2Y0BUd2myAL5wbWI/3UcTvknVwJyUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y7/QtQGB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y7/QtQGB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB654C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755073793;
	bh=A0bH1LaGhnaLYP5woCckPmJ7gcx4vM5GXfyizeLKvcc=;
	h=To:Subject:From:Date:From;
	b=Y7/QtQGBPTdrgmJHnjqIyU2vx/F4gKRU69lZ+GKehGzNxMS6/9TQ/I5AftUViQAik
	 KgKKFD308JdlRL3EReyrnjlsTamL8V0QYIu904c9CfkZxDQQjrso0osAsNUvvJHG9b
	 NjNca/ASY2Y2QbvT3yGzS32SlylMWMWc3ce9tFB/5SUAa++uv2yCmWTbHIXuWtPJ3v
	 qlsgdDd/Hh/5LDy4ztJdbnhbDlOpsmH+zl6yWC2Ob53rG4mhsqXT48YkaO9QvNeYkH
	 8nyI5RkvKn6roUFH52Th9o8XtkkubYHXoUVHf+B4kq8RJI+2pilcFDH1Z2IBArikCr
	 RJOyaINw3z6AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C67C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175507379362.5353.18337266113866449147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc0216aa4bf6ce9a47c0d1cb59ba6c2b8200ef879183f52a18d34ad547623b93
Date: Wed, 13 Aug 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755073793
