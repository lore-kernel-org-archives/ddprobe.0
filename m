Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156035588B
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721985954; cv=none; b=IQ1cjRajA0dUGU82jUGxVDdHH3trFzl4Pr3L9+svBzJhSA998fcglTMefA5oyWtSn1PEBYjehNRBbVMrhGOvhr6pY18GGaONaWhFU+FHc6OQUbs904OzT7oobAIhO5PmZ4bKNExmSupbL6gS1GczgOfv4OeVqtSSfBLsJZs15Mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721985954; c=relaxed/simple;
	bh=lQBIJCn7T0l+Dvwab1EP7d3E8yNMHaizAn2mbrWjF/w=;
	h=To:Subject:From:Message-Id:Date; b=L8v9dybqYrX29G3/hYfGDXKaqqgdUIQmkSWJnukIz5w9OWoKLklJ8G4Cmng7IQ+Ch6pRYRhOKOv/RNzIHjEgTa+sYgVTgiv+J9zldbMd6xZEusMAANjjG9tuLgnAlfCWM8k7/EbeiQllhG7r3KvwUCp1kfg6NWMEGhEfxT+bkRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cxhInFIW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cxhInFIW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABEDAC32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721985953;
	bh=lQBIJCn7T0l+Dvwab1EP7d3E8yNMHaizAn2mbrWjF/w=;
	h=To:Subject:From:Date:From;
	b=cxhInFIWnVezcmznIgAF7hC4CQ+ESKNhRuNFXUmHr1SR+NYHfgEn+rBvW+2XEW3VF
	 bAcNExJHcKTosbvHKLA58QqK9KbiHoZeqIkyfX2M7YQzSsg0pY1TGeQQHDNtvgjzaX
	 yl9+41L36vSRWDOP6FH4kigZNy08spVT3zmqRbj6EwRuVYaxgoVi44A+OvTQGQlfpS
	 iwdRpsBQ8Ux2JuIw/l6rWnxTaGQIjEVJa61a+c//7MImfkCELUBQCtADBYVpXw4lAU
	 25SwggclNpOzzcsjhICX5FXVwJgyMdCqSnqIJrMVR9sRgfu6+sDV31vWatpszYmZfA
	 KSLk7yhmChPXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E31C3DA7F
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172198595359.520.15948351468991307578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a26899bd59e0a8a7183e14a5e55184b75f183e392788512412e2e741cb5ad79
Date: Fri, 26 Jul 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721985953
