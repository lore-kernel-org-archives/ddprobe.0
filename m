Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190732FB637
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763108994; cv=none; b=CfQ7sI5+euxC7kTfnznNJjWLm26tr3OddmF62u3H7Xyl8YrhydEg9BTM8ekAXvEzRT4+jwjou0MQwksiuL63iR2peojSq1SzgTlNibW6fznYgJ6gp8eA+f37Sdd6ckMnbXAwHiQbEBlP/UQTF3aJg71G16kuidicFQGiuECehc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763108994; c=relaxed/simple;
	bh=+qVZ0BYBThCQGf7nqtAr9is3+EaXon+EEVgQqRMx9e0=;
	h=To:Subject:From:Message-Id:Date; b=H2liDyB9V0EIKsL1R9ItwaR7JpKkiFZGU0X9LXXvvxCPTYc/gloJFFbBOgCgjtFH5XM5AxHbx2VqcnDnFiXCMuKxepdQUdVzPRIw3uj30r9SQQe2cGJ3BNvQ1wXbymlPWqinOVDZdX9Rp3eqPysWZCoGQfT2SS7XlVc5lPnHoTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uyjViZ0G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uyjViZ0G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A065AC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763108993;
	bh=+qVZ0BYBThCQGf7nqtAr9is3+EaXon+EEVgQqRMx9e0=;
	h=To:Subject:From:Date:From;
	b=uyjViZ0Gf7wCfkvtT5lq2r2zbqG/VBVg4aAiY+7YwCk52bCy2b6wD3m9aMmYkTOPN
	 qD7BwE6WyMV3zQtQFiVmRhSbXomUpC9MJFP2ON4/y9Dk/oFhGr61YQtspaC/kJTPB+
	 Ya97pEdUQsm/dVXm3CFHs+Mg1AlzO6PpJGJYzeBdcGB3s8TFu53jUUT6qgbMaInbKI
	 ts9Yk3MQMCTVcowC2P6BRmN3m2YAoqf+QxsyJOMUtS8F9ckvy+b9bQb2nEW1RJWNxS
	 fK2/X0SF2NNH7DmmJE3GnKoMxOP+7hDMFaUdZmeh5F0HUpETxaXfteovCG9t9i6Xpg
	 KZQW7owMAICdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D64CDE032
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176310899358.32200.16170629617638419154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e64d49bc73f1c03c98dc620b3497b9a20af572110fc0df7e24ba32090bce540
Date: Fri, 14 Nov 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763108993
