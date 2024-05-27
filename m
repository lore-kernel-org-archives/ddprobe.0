Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 597C117BCA
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 07:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716795263; cv=none; b=mgwbVTBjHRqSkM+mDrWVILCRfsZdqhpDiJSFu/jMzgolXlZDeCk/04Crod4ZFF++/e00l3FCeVbKRnPNvQUHXm0pjrK3WyAPKfu7Xf/pCobqCgDT3CCr4q4a7o77BvOsQibXqmfFwhytIgtOI/8R2gQORPI1LRxgaKxvi7wWEPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716795263; c=relaxed/simple;
	bh=jg8kd4bGaCHx75j4Te+5+vXyl5tyyPuc5yjldKhmPeI=;
	h=To:Subject:From:Message-Id:Date; b=gcvNfi+HMKbnqxvCxxflicEVU/QFcAdmRP4hC4VmLo++AbaojLu4CrNfoJEv7SG3Tx3J3p4OrPAuIqzq3kwD6mjGOL8NR40uv8u/7BltqAW/bziOptMTMk8hoyKU1MrlNOAqsY+5rhuLSMSSWNeQKowjsuMfB0wA9aEzYOH4Nlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B230Kfnt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B230Kfnt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA1BBC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 07:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716795262;
	bh=jg8kd4bGaCHx75j4Te+5+vXyl5tyyPuc5yjldKhmPeI=;
	h=To:Subject:From:Date:From;
	b=B230Kfntbfwz8xU2q8K/aldReefAQdCSDBs6XMu2kUGLjVUilaKJvcxtL3+jcymNE
	 HQc6VngeCidlW8hcdf28z/Gq5GXUAGvjYO2w4iWIMkXMHtzx7OefDIoGWRW7lg7Wmz
	 uF13+IkRw6KphWUPK31B3dndxG/P7k3FVN7ltSTgUhQzCxXKd4sfwRCfvdxn232+J5
	 fB+zv+oS85DkQOMVtdu3/4qYzxN9n36aZNNHhzuoWoHRu07rdcMG42SreIf6uM+ZfP
	 9EL20NYl1fX9522ckYEUZQ2Kb5UIHnjg/aSoghOZsFmZIl1VXt/47Y45MuW/zYo2ap
	 ebh9WBuXQ/mCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5227C25B78
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 07:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171679526279.21108.9835224966729805919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55591c32d8ddac3ca22a3ec93be156bea2b37444f3f82a61bd5a38ef3d8073a5
Date: Mon, 27 May 2024 07:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716795262
