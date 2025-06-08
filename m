Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32649CA5A
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749355194; cv=none; b=VhjY1Ad6D7nS5JIOnfuGCVoD32cXORE5Rn1kvPsnYpIW8sQN5iDFpBW1PBj1EXutoshsGC3GnKCgu2R1eHi72QWYQWWmFD8msgTU8DI0Cd5YpRCoWoJeNH498vk5/Mylw1tA/A6E0MXiOgwGalco7VsVuXs8n8gsaf98YJKXYHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749355194; c=relaxed/simple;
	bh=s41P+LYTH3QiYGYa0y70+zw7RLZsn+tqQ+w0Hlb3LuQ=;
	h=To:Subject:From:Message-Id:Date; b=EmL/u6xVvEUqqEc065o7FrSurfKQ8JEzzxGih+0edYVnVnDUAcyOQzjsdQmQ4JoSKiuixxSPY3acPc7/jfpkDI7DMTbEFIgwM4pSsPzt7acyUKOJatj76gsW4lLY/ehlyS1o4Tq/iHH7vdW2+8t82o7708usnGjJr6J97N6IFOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0j4Pt0Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0j4Pt0Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83B3C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749355193;
	bh=s41P+LYTH3QiYGYa0y70+zw7RLZsn+tqQ+w0Hlb3LuQ=;
	h=To:Subject:From:Date:From;
	b=c0j4Pt0Z+5FM75xIRl4Yi7TfAKUKkk8oIKK82j0MgpjTqTJiyQQ8NI5FUszkcGceK
	 UcbgjBe/ae6pdAvj5rm7xdYJCnZ7+S2njwIZhfMyv3omqogng1WCzG9i2E14AkF1Nm
	 p0FL4ntxLWTa0RubIyaw/vT4GPWK9U0A7acmNeyKKdQMHafmzPIkqd9FQmoevE/b5v
	 mpNASRdsrIaM/VeigpYqU+ApUMS1idPGz2gnyUjxTpUVcuy3IA7uqkQQ1R2VDXnWLE
	 Z+vlgOY9U1Lr+PMu0YT0C8/NY0Nalghhmmu1eyQMfqdLG+5OWKBzluNR9N4p/460EL
	 lq/8JnahClCcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923CDC5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174935519357.22260.6307989716600534952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2334807f2620e78952959dd2146f45ad7aa4feecd666222436afa9342c6fe7a
Date: Sun, 08 Jun 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749355193
