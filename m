Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310333085DD
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750269594; cv=none; b=PKDl1QkzOh3jgxi/BuyeR7kBAtd4Sep4EIcFsBI413XtzG1Nys8mf4BYNoi2ClcbbE0TqFMWZXxAKJpcYUI66yx+LqpZzvR4ad5G2Z5UUR6JoGbDAxA84Olshr+Dwzyz/KW3d8U3d8y17yG9jiUoiAeKGCo1KGcpossL27np+Lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750269594; c=relaxed/simple;
	bh=VSRr/3hjzQF2p19I6+VRMMdy51MmLLZ9ZfxWQCfQMWE=;
	h=To:Subject:From:Message-Id:Date; b=Nng4n06kvUua0CFKMa8ntmp7zTx3JJTL1EH74a0lOQl7+sAtLtR6/MGuF5hgyQeTuyhoqxUq2VirqzXhErh3MttsGBGIau/pu/ZdaTzWVuoNawhx8uri2NxFNVvjSnYj6yeJhVLhAGms9CTOORDidUCe3gTmZmK/50MMU1AqKyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HGWti+cC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HGWti+cC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D92C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750269593;
	bh=VSRr/3hjzQF2p19I6+VRMMdy51MmLLZ9ZfxWQCfQMWE=;
	h=To:Subject:From:Date:From;
	b=HGWti+cC5xORlsKsHjKNNpkMEVXwPyflQIzy4egMLwjq76yJXKP7E334ZszASEoCw
	 OihTfv83J9V2moBP/RhZ8yBQPfrqXsVw8++5asY++h0gltVGUEkbGUJTLbDsqEgKa9
	 Wu0RidDTLoNpr0s137hmwYJJYZGH3P0XtWbF6ri+buaeZGUN3CEgeq3Oz+ZdICKoyt
	 NcZdMQVv5dn5sqitSi4roGTA4+fk/H3f+W8xztM6AWMxb0dExPQ4gYnv/Wu2Cm3Ttf
	 6x7opx5rJhtIAjgVIKjNzeSBlH48t64pPycfpkZBfJC+q/6w6lNWzg3lX8ri+3yOJd
	 uSwkGzBzzIc3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF1EC7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175026959357.13953.10325418825192319314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70a8b2f9dc5a13ac6a605f93a6911ca25bcdbb88e68a0bb7cd1ed175a90785c9
Date: Wed, 18 Jun 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750269593
