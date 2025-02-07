Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEF123C8DE
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738949154; cv=none; b=m1AGuJYzmhtrn04kvWst3Qa1eLxyzarFPT/hm66HZXQhOxUd1v3Jh4/dL/Z1sYYwm9mh/LWqsyIZUSaZ1jiXVDNDMQM6adwcF5F8sRLyiXwkkPF6r3dFD9qKP6GVdr4EEwrkp/RET7DNurP6piOM75i4MzUyJrqbshOkZHRHawM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738949154; c=relaxed/simple;
	bh=FlEwBV1uqHOZyv5FlqA6TCDFIpoGLtnsNJPy69Y02iE=;
	h=To:Subject:From:Message-Id:Date; b=r/2AuP0AOsVpfXw5IL6NhNurufomiMO1StdKJyuecqulfS3ge/b3fw23TqfS5P56MBGYht871e7+aQtZE/hCgVP2lnHbcd1votXXkuBSRRXcvcPj39pusKhhOT+M68OoOQbIWncT00R9j399fj44WGN0j8aqPqhsTOcBAg+iufg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxYKh1Rg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxYKh1Rg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCFBC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738949153;
	bh=FlEwBV1uqHOZyv5FlqA6TCDFIpoGLtnsNJPy69Y02iE=;
	h=To:Subject:From:Date:From;
	b=GxYKh1Rgo1iScrZv3HzoJQs6Auz0/htR0NYjuQpXtvMlgfjAyGqmC0k7LF7mr/YQD
	 /ktlCdzH1PiYdE7cr3BMjduKS6zJnVr5OmuZzwotTy9vDCq7vU9UlmUXxvKNo52RYa
	 ZFbVzjvlTyQLaUIDNoKjrrJTxvoSjrY55S6yWkLPQPDgS+kfaClIb6a77qgLbu3fsH
	 homr0+g1SjrcuL40YVu4gK+qWcEJGLzqXjbqgM2n7lckTXy33+AGh7nO0zJYiqVTXk
	 3UbLVqaFljTCV1Z78yy6UT0tUOjqfAtPAOv9CB6s5P3kQVCmDtvgOIUBConJXQidX0
	 EcOP0TzzazkyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EC4C02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173894915360.5922.17418851779097741954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e32e4c62b52654fc51921a4690bb2218010b66f0ba4e8349ef0d3efca7153eea
Date: Fri, 07 Feb 2025 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738949153
