Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B39192B82
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735827954; cv=none; b=Vkc7uGRq6jDC2p8yCoTMTxMUwp4OwHX9DNjijiMyievtK9hPmLqx9eNNq7gWoPhMbGb5NX+CBWUpZPNRQgCpVqhS7/JwUh2Sf5nySVKND+4EcI5t0mu6YOvrIF5josBPQqn90I2/xRiPLKvHhpdotFH9O+d283fnbVBVRrAdwv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735827954; c=relaxed/simple;
	bh=mb0WJxhvMJxtWXUmqLkBT1bwK6bpkwrJR2VHlCfflQE=;
	h=To:Subject:From:Message-Id:Date; b=NlOpRv83d2Psh0UE0aN2TXS+fkOO9K4POPBnaATprs6PjVfNTQ8EKJAK7ytU5MqJ8C2XpqMP/lgPdQNpzmdt6kOB7iAqP4+WYM+35u/Om3/Ac3hur2+UoDsPkgW+4OdtzuM5sDLJbywtS2q3WOx75jXfQX5DwCi0SjhndiWB6jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f9+JxrET; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f9+JxrET"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B61DEC4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735827953;
	bh=mb0WJxhvMJxtWXUmqLkBT1bwK6bpkwrJR2VHlCfflQE=;
	h=To:Subject:From:Date:From;
	b=f9+JxrET9wXPVxg6ngcWtEtgu+cbj0Pxu0+1WRND2DJox2IdJMhlUO6l/f4+K/svV
	 HbZQFw4SkVKREcyXDNg9c85IeqojnNcihQ01ZBAI/RAghNNuFfTNiT1LURE+YuKyFh
	 XC+N0XZu91d5XZ0vNh1l3MmgGDflPjAkaG50NVOcj99DOPOA1RUkR50kusIN2a7O4E
	 gEXFLsYyqv/7EQbkD3hR/GSJmdvglhwI3EEmwpGDKkV7dMzeRBj4D98mSN6gkvaFKU
	 7GL7Zs4z8ETRHi9sH/ukOTpoF5uQdBqtpZj+rBqLub9sgAifBWyBxbdVpnK39PUn7k
	 pJougv7osXGiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9881BE77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173582795361.12302.17582297074683931372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ddf3dd156a7c23d149e63c840ed5e504f9d2ff20490fde0b9cb857de5b6b0d9
Date: Thu, 02 Jan 2025 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735827953
