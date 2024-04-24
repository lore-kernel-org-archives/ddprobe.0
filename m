Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 751FB1E868
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 05:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713935423; cv=none; b=uy+T8nddKkKmu/mjIhyV6d7uwuNsWVhxAnqJyD4CYnNdPskmAc59YjFhobXPeizQ2gIsx/cacvyt4X+g85ON2zynomhkJFbOfPvDagdCHVnLijqE6XvSNwpYo9JrBWsJ7F/HIRmrgyfGZKvHryYW8Zw/bTpSEpSR9H4SvWnjMuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713935423; c=relaxed/simple;
	bh=Uaw3Lj3f+GdtIrf+o5TDvOBoHu3A2VtdD54sfQTnZuk=;
	h=To:Subject:From:Message-Id:Date; b=jeZDHHH8CTSdo+eQHrfrVTZ0PXyWC3hTY9JNvD94MFIIs74Z/1FVs6e0m5GFxTwP+ELb+ikzzIqYY9iFElZpSXXt4LBY+qGC01ip8KxX00/dBDkRx99YWQDrEkW6lkSWpGPkQm38wL4xEoE8Y5taSSqn81FOACIqf+sH09qi+Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M77Hm9D4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M77Hm9D4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2260C113CE
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 05:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713935423;
	bh=Uaw3Lj3f+GdtIrf+o5TDvOBoHu3A2VtdD54sfQTnZuk=;
	h=To:Subject:From:Date:From;
	b=M77Hm9D4L4mi4CRKufY4biB3ttWKUoqMIJ/YlxlS98aFeo/1yq9gFEr6JsEn4JJ00
	 q46xGGLSM96+kbidL7H2iBwCWohBfAE7Vrg67Hf/8d0Vp7R7qiFynpbQtaXfoTiXDE
	 qfxnw/rLce3MwrG/z5FGmWDPiTQjFNyC+0q8yxKELIVqp6WFV3XeMyHB6PnhOT28ml
	 HvtqpmXbIFRI5XdESETuzqrzNQdG9PEYowav957ijFiz6+BbEg2rUJGYIMXfmagX5t
	 iB1RvUm7ppAbFkFAdo+9+odGcJTsG9bPaDIUwfrH0o7Fj/+UuV+cwpoRH3/1+JGRu/
	 My1GNgotWr71Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D931DC4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 05:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171393542285.29560.12814279858415781302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6f7e16df30d89182df5948853bf62062ef3c2d5bd587662873122153b93726b
Date: Wed, 24 Apr 2024 05:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713935422
