Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235531C1F12
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749739794; cv=none; b=RscLnlTuAcvdWoPvidd5AQ6/bdzNDSY6snqJVGB1JpTp9CGHcQ7VnexRZ+OZAAWkmk3+QWNP8r96b+MWy+Dd0HKfVlyn27Idbn62W4BsMGv8S+ZgBjeHKnwqRHfcR2L9Lgo/+PC1XbQGzdxv2AywUrJ9niqWCaAieHbTyXtZwss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749739794; c=relaxed/simple;
	bh=UiqzYeoJwm4g9qUGqmeS1pKQFBETXxYJ/HF4e6vYYPE=;
	h=To:Subject:From:Message-Id:Date; b=onXA8aaq66EabyRh1vTuginMtP5zys5NcNLdvgmNFvX/gL7Ny+tzBFNqibqa85QViC/OKeOV1q4HAr2gVBIqNCP7LpQNzZ4C25vJ/hf27ybyFpqgKgF1Zm01Q2JhUlzEXoh/EI+GIf6h/T00eFhW+zk5HMmMq116XYFEhmnQ64g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQSc0D0o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQSc0D0o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C92C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749739793;
	bh=UiqzYeoJwm4g9qUGqmeS1pKQFBETXxYJ/HF4e6vYYPE=;
	h=To:Subject:From:Date:From;
	b=dQSc0D0oIpT2M0IgYVS6AQEVlxe9qFRuYD/FMWtPq32PnDgCMTS4PUzyQ8BKor1p3
	 n/HzmPYrAMIUDeANPvSCrQ0wgbyFHq0n+cATznj4inapUz8DEyw9OftqKWg1DzWYez
	 dUx8wJH9Fp0S27gXYKD3837XIOByH8Y2+CMjSAP5GbQeRqDUOi/KJzHr73v+XGfp2h
	 dR3AwUTfAwu0kwc8vNO2K2AeQW7JSIJGKArZAucAZp/wkNOHB1F34eaucEoxpn4D6B
	 BtndrybbvaX5O2+yuee3ZPTitSnqzQSj3JSBcPsQ1Ygf0k6twpWK9mWutgmdxJfBuw
	 HQN1Xt8CbrEfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924C0C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174973979359.20770.6515024305845235131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f157ba3ce247d57b4e2e9c660753850a7d6e7d95e93105e953c7074235a7eed
Date: Thu, 12 Jun 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749739793
