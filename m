Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7E919D8A8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 06:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781331394; cv=none; b=tQCf5dHWQuEa44/v2JaI674Nxs5TEgQ2hv/fUDnzs74iv/qoxpUfqJHk8ldSGLdm2nvWPJwT55B2dCvPrwxGA7CspwblAZ/s789aSa2XDRLE5Z2eRRfpLwRy7kPW+e2momMghSd1ZXSi19XrEDIURKDypOGXKLIJr/qgLZvefGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781331394; c=relaxed/simple;
	bh=eutX68QfldVZ9e+543Xzk3TP+tzo8zhT/Fh9aQwFhWk=;
	h=To:Subject:From:Message-Id:Date; b=Mfp2ZE5Ckj7OeBQ3SG8I1en7AKWVeQssl16bv5InwYEbWRJ9P3hxn1+e4MhrlAeECDGjKFlQ40E39bS4+TSSjq6PiH67iUsf9tX+ecyK+SrnhrawCqS/qriJ71bfbZKfPI6665zvlphaBu2vFT3n6NNgNrBRSPdiT6bvH7yjV2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WHq7yGyD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WHq7yGyD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8CA2C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 06:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781331393;
	bh=eutX68QfldVZ9e+543Xzk3TP+tzo8zhT/Fh9aQwFhWk=;
	h=To:Subject:From:Date:From;
	b=WHq7yGyDG9Vg7H6wyh887G07NPsa1autve/frCmiEKrbVv4IENFA9ZNJZeU3L69p0
	 CEcgmSdmhyogH5dy154iVAVDsDzoovd7NyxpR1UR71ddichhs8SBz3qXxpQdMwSysV
	 n8oH/M4jh3ioIWjr1qG39oWZk3pbIpIjWQQbRMnNB/XBOWwimyUr8d71aUjrLc1yML
	 YGK5s95HsDl+GPX+kecTfCJwbQ2rZ3W1f4kMWXxoiNMg2epqF4xZdtTO0xOeNtXwAe
	 IkdGMDDDCrzUnNAFIXKSzuLVCv8O4X1NVZ7l04h4oaREtDsrVpTPy6JOgOGD/UO9oo
	 +QaPtKQNpKVHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1DBCD98D2
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 06:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178133139368.16911.18155133603159128979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8d7ada24222e68337c8e150bed60b070fbc615ac32481cc25140867d4d1adbf
Date: Sat, 13 Jun 2026 06:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781331393
