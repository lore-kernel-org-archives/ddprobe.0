Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E82D2581
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746158394; cv=none; b=ZecW8ffuoUpxVbc8luPpHU27l41ZASm9CYbbyaSq9hV0YgTsVrXsff7SUPd7Lj82h6HxvRdEoc/534B4Az1P80J0hIIm2pePTxhic5BRcevdBYhuvfzAzxfm4PwR7mOw9EqhGll27I26HhJCB8hLs5xePJIrQ6mnC//hLiTo2E4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746158394; c=relaxed/simple;
	bh=jikYmDC1bYNPoWHE/FG2puRa0pmUo2NZogU9qvMP8bc=;
	h=To:Subject:From:Message-Id:Date; b=ONPsyNnBPLSIhNJLcfPFrgTBSEH+RmG2DpsYLYzS8TxBPpbCfIvKzF+yC21EzFOu+O7YR93m22lYsrpa7Gr9mdgqPhV9t/0bH3fOGnm4oBmBSApQAPn2B/TiqKbZMhxas0gyhYz3LEK7t00OBnFxAkR0+RhVETpWv4WVblxfSj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WgGhzuE/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WgGhzuE/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA78C4CEE9
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746158393;
	bh=jikYmDC1bYNPoWHE/FG2puRa0pmUo2NZogU9qvMP8bc=;
	h=To:Subject:From:Date:From;
	b=WgGhzuE/3d+zCOGAGqXsZ7B7MEKl2STRlYaY8lYDcWR3G8cl/xARndG9XdopbsqlK
	 we7iXWBwpYs+oFqtxyr/As3Nhvxy3oFpOR6BapXAMwZhLZ0TNuXAjFE1XJOuVDF/2/
	 104N3fL71Mzav3U+Eaz9NS7KXxJu5JcZdm+4tnEsFXbLCtpAgfmVDxUpxccYQ6rOVN
	 diSH1C0ZuQE31tXx3vTjc8kxzvMT/xj6FVFRvvPobdkLx2C+0LUq/R/XOLnsWkWf/P
	 5iG7+lkjoagd983knY5qqrPVhEDeKYgVhuew2+786bP1EDXwKnTEsKMcr7twf2XhnS
	 biq+dSiN1oKvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2C7C3ABA5
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174615839357.5075.10314405776848074150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aaf096338a1a512d5cad230536f993e5492f2d8f0ba87f101ca5ad0dabb514c
Date: Fri, 02 May 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746158393
