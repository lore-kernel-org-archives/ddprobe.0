Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E50AA1E491
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 15:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711724897; cv=none; b=tROoePUn4iqeXeprcgQo7gHRi0oTovGt6kMcCaYmN+quc9ctwmZcBEsaw5Y/enDulMbKMKs8LbpRvOF/L3djxz2VFHIvtGT9EBWDPDwtyeEza+6kKksYz7V4IED+7AjS4WojPiDDRGq5tqSDqG8cxGBqzBNzOdTfd94P3Iw9piY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711724897; c=relaxed/simple;
	bh=StwmB14oPLywCZmf4152HnstqFOZ4/rYbfWWgKvfQiY=;
	h=To:Subject:From:Message-Id:Date; b=Sy+WH1swa9/rKTlM3vFgXwdnG6GpYV0eCU7WEUOOGXPSGWN9Ns4BKMR0czEOPBhMzJTbmrU1xJcNv6/gCU9TY1pXGGnfCN1bRNExzWqAUBpbLxG8s6B39XNVBD5WCUXsvcCq19cUnkiOmWVR4gvIgtSb5s0PFMWTVJF+tBp1Ng4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pV8lvXBI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pV8lvXBI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76B83C433F1
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 15:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711724896;
	bh=StwmB14oPLywCZmf4152HnstqFOZ4/rYbfWWgKvfQiY=;
	h=To:Subject:From:Date:From;
	b=pV8lvXBIemz9Q4bb87R3f2PG4GDeoD/W28lEyzuwEU2IAh2uL7W6r0QpbgNPXP6sD
	 QPEHRFx8UMR1vMfUxt8ZHDmLyk0SGsizy7++KEFntwPB7yUTIaEuVjyCpExg7rlmGm
	 Q10M2OWnuodsG05prxY1FggTbbEvmMly+K9yFfr82SgAv0rDEyId5iIdQ53Wn6dHGT
	 TuO6YWX+xhgfXV9e5YDCylG5ZVCVg8UNOLAx46L5qh7fNXBjh93bXUMqG1XNVvKXkw
	 cVUhMO8JDKPS1cD/g+EFbNxvm9lOPnuIVGsH+vV1CkRvQPlJzu3zMwDdMazDGMX+44
	 Z/dcRzqvJKPlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67DF8CD11DD
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 15:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171172489641.10550.10481281960131394203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59c47fc3d244386d1b0b3a096e8660b0df64c2084a7f5ac6bf333a5bdba48805
Date: Fri, 29 Mar 2024 15:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711724896
