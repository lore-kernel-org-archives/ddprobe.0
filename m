Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1A041228F
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 20:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791403834; cv=none; b=mZ4IfVZnBpJNlUFVAQ1snL+ev5N8eTmFiOCH2LSBOwCS6vOEsdiThVfJzT51VnzQs9sEHlhjRbCsU10xxjiMc03jSwskcl5uttUbYJ3/levrb9LBvf1+2KlC8PCW8T++tmIcnVQKWDSiFXRDuPRhgY9iqZVm4+vLC7ritCCpuek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791403834; c=relaxed/simple;
	bh=sLiUfkwjfcPwXv7nxuc06HkuGAHdfqYG1mBBpuFMcf0=;
	h=To:Subject:From:Message-Id:Date; b=OtFN5LilX4nUE3V6iyeTkieikm2YVtqwyFpIflJOkk29NPQLQguerfRXMUSZ7DqarddyNKuXUKdmbTFMAC/hh+aN9KMdUkjniS9D2xJyIYREG2Y9KOzm3pntKtaseGQEL4Q56NGFiNvnCSI/f/YvzRNMLBjxbW3/H9oeVu3trMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MhAOmKd1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MhAOmKd1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC26C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791403833;
	bh=sLiUfkwjfcPwXv7nxuc06HkuGAHdfqYG1mBBpuFMcf0=;
	h=To:Subject:From:Date:From;
	b=MhAOmKd1ND9dQRgS2roqbWjsq5EU8XTK6l4jBazoCojHzmdNXeeU/QOHpUz2/uNBb
	 GCJX96XaYnT4P4RwIJw33osiWRTsOhFE+gt7WFKVBj0bckw5AbYDGMih9wj9+BXT1t
	 EPUOyCEzl9IyiVsNooV9589VIiZfFbzb/L37K5ajvVR6TW6K0clRNLdnmSM6Lcb8y8
	 RjH/stv4oemIZuyI8jrG/UM5C1TCqwrGq0wrESVkh/+76OjITsAPX5zMiiKomA+46z
	 sHkX7bd4RKas8MKmCtfOwF4mrN8e5hWix7i2UoCZoDEGcwE65f4FQr8ebdckSfutGL
	 rYeXg8JFYiU7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC12DCA6002
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179140383369.31680.12384389487504352880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f6f219596c84cb67ed29842a4d10617ae5e07fb73f1b8682b823807556940fe
Date: Wed, 07 Oct 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791403833
