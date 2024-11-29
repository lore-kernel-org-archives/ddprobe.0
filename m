Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2FC199EBB
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732902954; cv=none; b=D7sAqQUMvb+dqSUSqErOdoN2hAubabF/yH73AXgqCtuO0IZtks23auBenu7+lhpS0y9WdAbmnR/UJbC+6bgbot5gcNMeqL4Fp5GlSwsTpS5PoHNJdURusD9qIXkKxJ2RJyKe/IjsciSoWCnkuF+Wr34P2N0lA+qZgHIX+17psPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732902954; c=relaxed/simple;
	bh=Ec1OZF/2Rcdw5f2vKaqRKxDV4RbTLd7VQB6r3BY1PyE=;
	h=To:Subject:From:Message-Id:Date; b=nLREaKqYOV5ONPElwVds8aI+YsGC6XsPsPHYApu21vG6Z0Ou23vncAtJE4/gJDPURTu+UbLJYG79keawfOWR6ldkz7nBwya4ZaxTMkRwSd5VoAmCrpZrvXJHVTBN4stORsyAffSS7C9mJ0U+sPQfo1e/JJdpCK8ImeKpOn0QPJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qy+xxudA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qy+xxudA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC49C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732902953;
	bh=Ec1OZF/2Rcdw5f2vKaqRKxDV4RbTLd7VQB6r3BY1PyE=;
	h=To:Subject:From:Date:From;
	b=qy+xxudAiD9vohlsrsK2VuUuAHtj+oqhjd3OALrI0V51JT86xfNJ8kDaPPY7BGyCg
	 HG4BJQcuu6BeAqn+WoHCbe2joX+PYvbtOf829YaaWgYA9iVrXGIm+mL1tmm0ZdxK+m
	 kNC1dD1Bprx3TMw9zZkaCSBYvH2XtabDXgKB+kKH7wYWXWk6uL12ZYdbM0EtLqzXp7
	 GJB/BumUUcnQl+f2O1BTxVJx/wTB1ZY/bdp5HEw1L+fm9v1oW6azVzi7GZToLWAjw1
	 yRLL69RFY57p82F+XBgc7qEuLKsEwdctBm2oopxnerJ5Nb28Bzwd4Us8OCgW/NiSbx
	 DGa52tW4XeY2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BC1D729F1
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173290295360.4296.8441357258938974286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b35d27d3116a16e9d3c1ef92c54c5a37fd9604f6a304a23e1ffac4fcf760af1
Date: Fri, 29 Nov 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732902953
