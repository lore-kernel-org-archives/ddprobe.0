Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313D12EEE75
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791123034; cv=none; b=cH9Of4azT8iEVVu1/PoIf5QGrsQ6rdXs39u/9FHQX5i8zau3O3Ov1ZWtsYEhOHi/47It7+PURtzSnnpOjDl6BtolfTB6fDrYWhVxTr/mzuWqVeKWiSYstLDLAgXpgM/UMCsQIa40BhWDT1epxng6IIzu5RhqDWVMYkaxMrNHOQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791123034; c=relaxed/simple;
	bh=5HaKHZphYZHcD1rm3Pwly7djxw8b/KS8qWzCFhWyfoo=;
	h=To:Subject:From:Message-Id:Date; b=c+U8jJE2YamOte+KgmFU9tvsDLmY+g9ZxL+quO5nqzhhqS9h6PFoIzVSrSWbg1qcf6sYc5sqLhTgml2LQefvM2NmXDGLccfhrT4W9tw4lgaow5VuigZGVnNOI/ZzppGj2CKhTy2qzfsY3/nbmM4DeapQGyd7kuJHA3yGeRhkfVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OdSitvG8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OdSitvG8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32A5C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791123033;
	bh=5HaKHZphYZHcD1rm3Pwly7djxw8b/KS8qWzCFhWyfoo=;
	h=To:Subject:From:Date:From;
	b=OdSitvG8y2X9z8Er3h+DkjYZ7EPZH+QZOw86U89Zy5OVWEkMvksqG33Br6r7piwo1
	 cIYN0cozEySLLKy4stf4Gfo8bqE+oQPKhlwhhqJrADNZ7ovsnMF1SHpYd0U+z9jSgm
	 9FCm2J2Vgl4Htqkzv7Tfa6TgLeMqg+H9qc5awrjroJi3gNu70pDYGvDu/qG2JzhSOl
	 pAzpCiSUxI0BhtyLCJOgsSnzYNVLCduGFWcEJeicwkV1EIMvHhxdMCUvHL4KEGzYZC
	 ASScHap2cooGYSZ/u+X0WEnVZaHQ9T/CmXHh91CS61/v7Iht17YcD1hD4x3/HlYYmx
	 p+7C1YpAvxn0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01A2CA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179112303368.16983.13726339879874936307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a45dd2e167d7157e8abaf02a66d042d547e731a2b232cd861f01104bb4726e7
Date: Sun, 04 Oct 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791123033
