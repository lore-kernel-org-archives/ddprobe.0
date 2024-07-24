Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B802383AB
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721834154; cv=none; b=HQx8lvi0VwIdCtJiBcQxffUIFhcG2GemIhN7riAmKQnK++RiZeTD5fUcjsNryODM1NuxsEs7tdlVONemhuen2okRd0NdbezmkTmlZ14BZcbuXHR2J88M83kAxd6jSb5FkwSwyo3N20Cf1sw/NOOxrM13mHZauE4o5rM0O9/kNss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721834154; c=relaxed/simple;
	bh=WnPPvCeT40/h+fDo/7r2DlpUzLA/2kc0nSMSxhe8xic=;
	h=To:Subject:From:Message-Id:Date; b=jSq/wgfMunbb1eDKI09g4AQ6pBJRBgmfWeGJ/M1FmwuDAV/VWXJbi9WBmdVX43HAtwiBElXDMAwM3ewRKeUfvBCRHJlOYmDOVZwJAMJ1KV+5OeDCy5YG0/6rdyHnY/r3JWZ6z8OfqVo6VLJcPk+lEAJGRFqMvYno3iNt5g7XZYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ETt3ibLZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ETt3ibLZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A45C32781
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721834153;
	bh=WnPPvCeT40/h+fDo/7r2DlpUzLA/2kc0nSMSxhe8xic=;
	h=To:Subject:From:Date:From;
	b=ETt3ibLZx7YvoAEnAAeY11JdLa6jEU+K/wiues1DSBYlv+Ma5qaGTi4mug8DOMe6Z
	 LabPcclQyfSHxBGgiJ0wo/KAr6S8rUM92DiE1croElQcWK2L/uRAVORaNTp9Z+gIJO
	 uu2LAYsnkxd0aCfI/K/lH2Muni+C3DnyJ39Zgc07agaEQdzFgU6KVGUo5b2xR5qCp6
	 8SY32BVh+QXpPvW6nBLwofDkaPgzIPZfq5YnTSQF7TPTOUp7Gk7sj21DSZEVRxxXRf
	 3EP7tDDagFag4uDTfH46daJfEVSJc2Ub6yNYPHazV6DQOq7G1HBIYs4EQloVOFE0n1
	 rLd0gAzI8VstA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ED8C3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172183415358.27528.5821854493674680270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a342d69c1f26415f16ae1aea4508173faf0c0407418437693dbc494e87f7a8a1
Date: Wed, 24 Jul 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721834153
