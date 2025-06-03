Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DF72AF0A
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748920794; cv=none; b=dusGkcwbPkittrGzsZ4RuXllURfUtvWorhgl58+LHDUIdkN/id7rEYiAqP3TFgslJ5C9SKXU1bFqbV7N71oLXvt1cMwdiIZYjfk3wsoLQS7DfFNdyh5im+R7eBMkLTSgioh3OzBR+XYFuPHQX9h4ccQPOuxEET53Flezicc4Q50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748920794; c=relaxed/simple;
	bh=/w5zTQY9Xq4AAaLmjk+m9v+2cul6G4Ph2qtFQZxKZVA=;
	h=To:Subject:From:Message-Id:Date; b=JOe18a1tlK7csEXl08dO+dR4mJfIj8hyhSt9bn3nmk1Ex8OV/joNC/c5BrtguBwIvVN/CttsD3FZ+ZMyF1aduzFmGzDGCRjMaY6BJTv8yf1Tk0msFdxLERuheZR1DQcMWbSMGxeWAaccFEL5IEJH9FZboAsjeNOz/9cDvI5KfwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/Oi3gcR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/Oi3gcR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7424C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748920793;
	bh=/w5zTQY9Xq4AAaLmjk+m9v+2cul6G4Ph2qtFQZxKZVA=;
	h=To:Subject:From:Date:From;
	b=D/Oi3gcRqDBogRiP9lOqRWwLphXWrjZK/VfxS/sbBlZkkqt89PZ49+qtM+D2QlLyM
	 76Jx2yPCB34s2xf1VQ2gGAq1td6nAZvNX46jplMuq3YfvjYYnjoB58tzaJhiWTcyIl
	 3DZ0VwhKUrGPW+f54M9gxt1xs7n72br3yUQ64GAfRw+7TVIj3GhzPQ/TAnNBqwLqcy
	 BDGRoSbK4bgepFhxTAhWEduks4JLEXx9H5yLFu1k7k6h9nkY1WRWKGV9SYjzdGe46j
	 O73Evhsc2Ldtyo06m8WOWlfUhAs16KppLrYHpougmFR+ABEFjvJBIcSM3Pt3xQMCDv
	 lElzPbTzLKG5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988B7C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174892079358.13514.17394665060368261192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21ba372354b5e28313a93b3be1e44f129a5172804923bd934b93a0dde4e922a5
Date: Tue, 03 Jun 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748920793
