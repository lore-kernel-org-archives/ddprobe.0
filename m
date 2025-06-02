Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B90A86334
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748832594; cv=none; b=IiD7vPbLLf6+wmUvNUaxEwhiA88enUp5L9YAkkpr27lczpwuuAO68YRpDch1EHDfVyuzA/MONfR3TQ4AQ5VDXAWSbX1Sq8XQdBASk7gTJrMzYtxOV9qICrRwklwmciy4wNlHmYUvbBA/0n7CY5jKHOcC8sRRFXKir/lTVPlP3jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748832594; c=relaxed/simple;
	bh=W8Qnp/Zjt9zHndscSeZ8yp2LxLY1aI3mDrC/UblxCdU=;
	h=To:Subject:From:Message-Id:Date; b=pYSPHaI3f2BWVS/Hmji8I0eULanGxGVIe98Eleld00C5wvRAZPh1v+lubnOwZboMI8FmCiUk9BZzFX9NO7D2Ickn+gm8MawvqsZR94nuZrXjgsFApmvBy/XdzSQLHqaNLEA67jeCXuuuyQSObFcp1yVtlAhiwpnVUcjFGo64OOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hdxf1WPg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hdxf1WPg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7622C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748832593;
	bh=W8Qnp/Zjt9zHndscSeZ8yp2LxLY1aI3mDrC/UblxCdU=;
	h=To:Subject:From:Date:From;
	b=hdxf1WPgttOPICrX1vIfGbCR1PRBerW/t3WbqwUeCrUmfwU3cTyTXyKZmgxFrwCzI
	 jwEFLioDqM81QaeF3r27GPGLoswnoT19We8WO+OhJxFiKa4mjnoiCyy9jnBpR4sgmI
	 q8vnO/UjjN8ZF0biNmdCSwr1Gg9lkNG5CXOBiVDRPYAgiGWm9cH68IQvQ3FUYNC/ml
	 ABhhsuMcEuTk2wI+VyxKRx74fHGGKkw2msc1ZFj2bQ9+P8JmTOGhYqBvebQDtQ40yu
	 IMudAef/edKtbloZZ9gwTeLe/qcIRnV9wDe1Lk+lh0x6UpjdSCtieu3FMmLIe89jPZ
	 WEtMh7NXcUaKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95408C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174883259357.4465.18108486514047671740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 352d02995a23b03b7535f116c80f0791ec4739d0967b6f54636740ca0b9b1b98
Date: Mon, 02 Jun 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748832593
