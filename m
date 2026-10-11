Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E48C457E48
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791726034; cv=none; b=I903T3Qldsi8Y64tKv6MGnQdsN0AZ7Qlt8z0rJv7x5Zs8StNAzHb2yS5/fOjaSIrqmSdcn0xsidjrdnAc2aPTv/aj6VKMHTlGldo5pEZMwoOE+syVTRJqxOAmJkQ5xj7XquGDJY37bjiv6dwEo6ffkxgMVwX8Ux+IH9KPpRikkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791726034; c=relaxed/simple;
	bh=7azm2p4fWreAP+2p2Q9O++2PWVshZns1EWb6Akp35e4=;
	h=To:Subject:From:Message-Id:Date; b=Eih+3Xy2ZnxMalQ1HfBGExeeTDlehfSE1jPgUKL7/AkzSTxObjBCP/6F7304Rjea1wQT2CjDqRLayfHSi4gKX3z/Nzy+6PPu4JbawJN7gDExSzdZRxByYsFrx/OP/1yLqTEt7aFG0EYqf7LDpjE/QtadAuNMHCcTkjwgkhtC4WY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C28SlyOm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C28SlyOm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC20CC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791726033;
	bh=7azm2p4fWreAP+2p2Q9O++2PWVshZns1EWb6Akp35e4=;
	h=To:Subject:From:Date:From;
	b=C28SlyOmezn4MgYg0dSa4bprxP/+d6EqFqzKyjUO85gBfLLw72IViozNHl0MbBQrU
	 Qyem6kUtUJH+omA9rvvcP1nRtucszzEfLKQVwPuay55l5bEYN/OQp1fyde0jNkkdVN
	 t9CS3Ytq1mMRZ3d07uHey4G2ByqZ/ufyva4zRhDGFJfneEgOGblCJIkQO5n9yXBZWY
	 KFAC+5MJzqjq2LIssy+UAMKxnCZkSLFNI09nu1mJLS+Wdgh0QIcjZgCwk6cUNvGPB1
	 Jjc1f4hRblSkeQIZwm91t9hKmQ4sye1mpfeCSyL2JbTLbw+BEXgq/NmW5OTMIH90hS
	 TMdeACK4taWoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F6ACA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179172603368.16139.7795244016146334660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a357c52e297911424fa6df30d631c53c8f95098d6898ca1cd3a23e23be0e66a
Date: Sun, 11 Oct 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791726033
