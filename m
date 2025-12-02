Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4CD279792
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 19:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764702774; cv=none; b=RXjuxPLrNMWMLPliY+2Zv1+f4+vwKn46BClf9DKZXIauOuIJu3itsW7Uaz/T0lR3e+e7yl2ETOQ0kJHtU5X6J2voZ3oIXtTsYMZ38Tu164DzCfzP4WVYscLgo5+EgVJWLa66UEAZx8itPiGvFv5Xx8ufM5kJbZ1u72FUxB5hSHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764702774; c=relaxed/simple;
	bh=gWRxj8UPAFimPl81eO2AHfy0MaeF2zMPXrZhHVE710A=;
	h=To:Subject:From:Message-Id:Date; b=uXYQLQ+GM7eI/LEaZLXiocyRE1hdkYavq/BKLXgipe67Fz9bgbRr+WTEDgM3aXtUDQRHiNaTWHuL3CCylXdG2fO2eaO+bT+tMPZoyQ3b99K0Odmm4NcGE5rE14Lh70amdjK0v6tiMdnr8BEPQWBnc8zZvv4Siv50+XS4VHyWETk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TNHxFAJD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TNHxFAJD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5BFC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 19:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764702773;
	bh=gWRxj8UPAFimPl81eO2AHfy0MaeF2zMPXrZhHVE710A=;
	h=To:Subject:From:Date:From;
	b=TNHxFAJD+X3J9qD0uTXHcyzdMcqeISGA6snNKmx8v/NJki2eFgOZacIRJaDnmxN/f
	 30xs9rG6V2SZkv+qi3O+wMODx6w5i6fjcLVytLhKmlbc0dogk+6bVRRw6YYQg7pSxZ
	 C1J37xDHJ8ld7ebrgsw7aIzfWtO6YV9lqvarfrMFf5AfRpfWbzdXdCX0k94BTL91l2
	 JYRYMAjooUvmKZ8fCF+YqYDrX1J0m8XgcCwOavjo8Dt9S+E192CvKcG/2ikL4IfPFV
	 AXTrUuZNaPIa5+7JbcFD2m/cS9CmkAu4NYbTCGP3deT/ZDqo7hFiZuAqjLVdKOtGHq
	 jej62gK+zWq2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E8BD12668
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 19:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176470277358.25390.9558607271521325111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54511d4d60cede476c9bda5b474171fae9339c6cb6c68366e45d6c36cb306d31
Date: Tue, 02 Dec 2025 19:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764702773
