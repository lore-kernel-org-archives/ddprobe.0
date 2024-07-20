Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502A11C3D
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721447754; cv=none; b=HRbUrWQYWtfUsjiO6ZqBPgSVMb48AwDWdhcpBzJLIiPObF/hqSUNPXubznlWxLIrsraW5V3rKIm/Bcwr+FAMNHxK2MqW9MEwgtjTiTQjqHzNiQrPAWN+7QS2djiOGtnhI0iJaesPfrb3vE138W6hS4bT68YjKvlZ+5z7ygN62I0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721447754; c=relaxed/simple;
	bh=PPWmMPo1C6nF65aQ3Vqk5nE6usF4covaLyGAkldtR2Q=;
	h=To:Subject:From:Message-Id:Date; b=HnQ59eRfRZj31DdFGGxCSAw3pp4HqgELTOtScZOCNGHmcwMvEKUOhxBU8jyD/cjdukY4iqEh31RXROL6zxKfEE91hmzazBAWObjxAGKNS6s9/soMNvvOb9atEQfgR/XkCq/pq5UUyrwlkRy1amvvUW82M3hvfEKKlJUycf5+czY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A19Br1bw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A19Br1bw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F6BC4AF0B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721447753;
	bh=PPWmMPo1C6nF65aQ3Vqk5nE6usF4covaLyGAkldtR2Q=;
	h=To:Subject:From:Date:From;
	b=A19Br1bw2/VQLj0N0AaxAlUrtUWbj1W6AUU/7zEhFPCR7Bt2UC8N8DbC0K4EXGj1n
	 uMmyPW7SX4gFpKk/0DFoeZho1sQo8kgojG3UnkjPlTFi1apdo2oiHfgNE4KtsLWjl0
	 xFhaIbwHav1Q54VehxcI+fuwaEWdex+Bsb9PmMuZOevCMnP5HTSJ/J7i4LBIbTjClT
	 G69dS9s/JekRKqNPaMdNQS9p9sXMJ7W4GqeyfxQRHN9NriOQtZFLpKsjxLMDDU+Uy2
	 4PI+GdgPVJlviAUxkPN3vfp6Vmvv5xYV8zuWgaLFsMQvlCG2SBjrY9hwQNPhwLyBQt
	 SaZEqoqIGmo0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0230C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172144775360.12323.8380162183894331544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c22ebb95407dff626084206ddbfa196d63ead2b6c84d4257f91177b240c58b5
Date: Sat, 20 Jul 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721447753
