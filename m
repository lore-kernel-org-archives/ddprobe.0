Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC63442372
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791363034; cv=none; b=VDl4MCp8WWmYsRFD3YAe/kXi6ycANWgvXMKtVCWp+/UfMt53o+0VlYPIS5ieAEfbuFsE5GEDMqV0t2XXFTnuVMrf+Dotz7XAiiZJ5342xlt37Ueew9iLWgne7DJ5adZPaZzKS1uEc3T7InmhuXO9zSuPIDWaNtPm4ggAtOt6Wco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791363034; c=relaxed/simple;
	bh=KAcE7/HJARmqMFaBChkRDaBVxMfVpKl84R/4BJxrpMI=;
	h=To:Subject:From:Message-Id:Date; b=h9Notx2yAT6ofPz3R6QIi10F6yPSdLLAVpT/R/7a5HGp70KhjihoD6v+5klekJyf7ykTEEqikgD/I0AN4az7UeRxd6vaNGHwaf09LGDUpopT25DEQRUb5DVP6NXKz4D1oglWVtW9eX+89mEHhbm0DPWG6iIGRnzRG74pNQN/16w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxEqtlqz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxEqtlqz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D52B7C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791363033;
	bh=KAcE7/HJARmqMFaBChkRDaBVxMfVpKl84R/4BJxrpMI=;
	h=To:Subject:From:Date:From;
	b=lxEqtlqzEpPwhsu0FC+ofeedBUCVBxHTG/pMyTUVh8DxnHukVzGOS4MGeMrKOZoo4
	 bTu7610BkavUkOhfmPbfWPVBPa+SocsyQyrcG90MGEeQeWpqad67OrfIn0PyoUVcVu
	 CgjxgwnzsSwnxvk7SPuiAOhbVVwx+KCMfbss63bwnWcDrRT9FkrnNYyQviedpE6LF0
	 Mi+CxDJ6gI0VObwDIlvS1R8YY0BhvhOAYoVRDlMSqjuFJd4N/Qigok3P7j9NMvjwP1
	 hnBdSaAFKIocA0tnMiu+EDZAO+eJwK+HBRMdhPTLWYNrhpPaY4VJkxy/mRDeZC8EDB
	 lARVr0VDrm7TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA03CA6002
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179136303369.32166.5786182633887729064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdf43745f0cf6a5a7f45dc3e892b9748bc1e979de23c97f058a2bcf994ffcd41
Date: Wed, 07 Oct 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791363033
