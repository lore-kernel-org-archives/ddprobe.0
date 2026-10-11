Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D5A3B0AD8
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791724234; cv=none; b=eVv1mQ8Erj/ZQoeaH+qryMhFNDi0+0SUFT+WSc0usVCon0l0ID0ic9akrhU5Wc16q/Aw5bQbAlBNmSIn87f564EU3e7fvvxsSudaPSaHTJEos97Qbo+vXGpOntrkCkmm8eiFpAHS1/t6PtiigNYFjz5sIiibTHGpkLlXIoW4jHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791724234; c=relaxed/simple;
	bh=DCBtGbXfPh5UUr/xs/MgP2B3XzMxkPEth/+cwBhM34s=;
	h=To:Subject:From:Message-Id:Date; b=gZZFrS1lngeD1T2rDQWl1AaKNYZ2enPeIKh5H1oaB8H8Tga5frZACibB/0ycUs9yqsIoJdhrffwS9ROZeGDoHCNVespmt9J7B0IOSXT6fM8EApu1evAfS2pHSRYs1qZMJQw1+OoYUlut1Tt92eqBXGhFXbmu9+TM+jhmVI2GKxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pENELsoq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pENELsoq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC81BC2BCFA
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791724233;
	bh=DCBtGbXfPh5UUr/xs/MgP2B3XzMxkPEth/+cwBhM34s=;
	h=To:Subject:From:Date:From;
	b=pENELsoqxDqxwmK/4tZf9u6EnJGGOfRIoP7oRz5ten8wytaw+fFyj+axlr9DrMILv
	 MTebavGRop9JxxpLmeZSfsUuuMflbwNrVorR25IIHt4YcFLtu7afL3I600IYi2QgKq
	 S2kLJ5D+BSut7SV2QJX6m1xhykjyAnHJAMqrddzneXcnUpPj1AfhzSv23iv4FLiM8O
	 fyxAWSTy6uiPsFf/qu5Q9aMv/09WEP1g67b1TXG6mx0skxJT41bgUkCEnDtIZDHTPv
	 /60R9mYt7E9/qN+pVWFdYUTbmC/bSTpbuieBtWQ2+XKuYhCX2/4FmnGO14qhdi9hP4
	 uq3lH8ijJisRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADDCCA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179172423369.32091.5505938912497776131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52bcf7cae87a2886f228ba4fe0e647532fa1b2ce770ef9eee17aaa707dc6b8ca
Date: Sun, 11 Oct 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791724233
