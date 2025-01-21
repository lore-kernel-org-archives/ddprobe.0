Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C8A18AE2
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737499554; cv=none; b=u3eUzbylGCmlokFiRBQc3jF2uTQeIzwbezC8EoJ/6MPLEjDlD3DOFe3hsowM6ZYKs2rfv2sUva6HNER/v3xiD3IonNF0p8EvAFtg5dtKu+A/gz9lolUhOxxwRka92wenyl4qA1/AxmmeVE7t/eF3Z71qd12ETYiC/nKCt6smoIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737499554; c=relaxed/simple;
	bh=9otlKWENSmCMNipbheLvdgJRj6l4hmDXH42vaXZRoJ0=;
	h=To:Subject:From:Message-Id:Date; b=XXSjfuGFFpeapwNoT5ZFAzyUUYsWmMQFF3hVjSRfwrG4yhW2tHuFBEGfHOjNhhHGYZQpp/GPE3VCbhZ6xd2PArpVk9gkvebdq5nRnEpaZEo2aINATT8cV4MUZROlGYMqkeJKxqgsRJ8K2GNF9DZNbTrCfyTTcL0hjdYNwE7BSIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2BSgfZ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2BSgfZ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AA3C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737499553;
	bh=9otlKWENSmCMNipbheLvdgJRj6l4hmDXH42vaXZRoJ0=;
	h=To:Subject:From:Date:From;
	b=F2BSgfZ6PabjkKUahVPTwMWMbBdvqAEgtPk5x0SfK6vHkrfebyNJ5m+E4Z49EH2cG
	 tVa9aEOU7T0ygM1RSf2BaWtt5q1dw3x23MA7xMqkCLYy6Cupr8R7i8fiFzac04DB0M
	 eNrAIVD548TTrsP/pUuBT4pCI58BsxZhS8WUR3JmEre98eFW7ev3oq54n9+VLr/7u8
	 51IzH9EInmqtXMleImpEJj4QPu9PqOc+/2HOedxatHQdSuqZQ9zzESTZSoF5UHarKW
	 Y77HARpKxInsw45tFATosULt7SR/wf+UbQTa2o+ch/LUvMHrC6tp90oFYlmh7dhk9p
	 fovZDVHVYVBlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD61C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173749955357.14992.492649891198183605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98da3a2b3d63ff037f5557564dd9cd934d538466697f4f66b117183b1f55204c
Date: Tue, 21 Jan 2025 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737499553
