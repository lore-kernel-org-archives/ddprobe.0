Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C803C17C220
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747188593; cv=none; b=YocMOAxg6UQrzDPTk11jjRlpiTpHc9dkLu/NLHHEMXJyauua2sV7aVmHBAz+iEQo1BgC1LXrR/oJ7lFVE/9+HJl9vk3E1l43mOlfDtwlENWwF7nJ4T/dEWLJZPcHXInrAwHUPiu4T9X2WapXHB10i034v+KADU743ePhpfXKEvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747188593; c=relaxed/simple;
	bh=mbNKI3Mo2NQL1NOTTa74pxA74X+qk0fkB1qC14hmGOw=;
	h=To:Subject:From:Message-Id:Date; b=JMdBJXKfKqXycXzwGUPzacunKyxaOYeBOOwzI6qx3ZKZAm4GkQRV0Bdq7znH7tAtzcHH/0gQuatXOutW+hzU+AMVQSlqPjhOT+8jFa+6YB/8oqKCcYgYjoKixh0MkWYqCbKXLLBdSMFoVyjS5CO2sSBj6eb5KjXP2jEfYAu++I4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kcngh4xP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kcngh4xP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7CAC4CEED
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747188593;
	bh=mbNKI3Mo2NQL1NOTTa74pxA74X+qk0fkB1qC14hmGOw=;
	h=To:Subject:From:Date:From;
	b=Kcngh4xPrRda/ALWyVVve7RNq7Sow45WW3lZMsay1szxA8VurkbZmKJv1PZh5S/8L
	 oUnDHf7N4BIeACYerCeDjIL9618wu9Ytr2dNs+iPtL0iq4rn+sJcOJVoraqthMuXs2
	 a6aiE0c4HAFhn64Az0Ivv+bScH5G6+2gpQCb7vx9y2U5iNrcLJfD86l/UJtIwfPSDn
	 2FHkYNJ/qfY803/jemFXzOud++JUwR+PZlGe1SVMhCDrj2OlaomJgw+YQ0ZAesew5m
	 OgFTZ8kzqrZfCzAxiONC7b4FI80C5aRnCpNxHRz8qc1kyVAnuuhjWYh60Eu/PMP+VD
	 1FRs9uC60u5GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA4AC3ABC3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174718859357.7545.10245063147367807987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6435c7edb6d3002c84db5ffc8265dd14427f63409c5addad47a501c491988895
Date: Wed, 14 May 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747188593
