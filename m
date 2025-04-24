Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE70E1F1506
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745525393; cv=none; b=BzmqgsYpndvPh2aFtxKAmuqcT/2wVw7idBrGIglXsJEVxRI5W/IaSqjDu1dmkudLcKVzMyW0OoCqCVG1mLmc0xjO89JSnxB4+BU+dtLDmPF+kxHHhXfyUSJFhIebWShD3aW54t28hcbPSnaA9sNq8uNQ26uBh7WGKJro+cX+0A4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745525393; c=relaxed/simple;
	bh=b4QN3hzXJBxYldx1KLPVrZMdDmNPPCxRXMwM2QIJ9IA=;
	h=To:Subject:From:Message-Id:Date; b=mrZFP0mdeGcWNneQd+Q0agzLVSg3ZfnBfbg1SYVJZFY1SF8JGpRDXPqm9hyZpDx//F7zGRSVYpSQPyyh8NHegJAPyjpKO5SAuHWB3UWqPIqYfCw2O8mGyigc4K473FJ5RIVbY/3MIbG57jrJmqM08UREgmJU0mijayJmjHpCzjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pPUNbaW/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pPUNbaW/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C982C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745525393;
	bh=b4QN3hzXJBxYldx1KLPVrZMdDmNPPCxRXMwM2QIJ9IA=;
	h=To:Subject:From:Date:From;
	b=pPUNbaW/o9z4C7XWtXrRtTN0qjoJOr+skNkO67sqzOToNYouITsy/09rIdeSeNa/M
	 t8pniO0q3f8Ob+KLc49w9GA/lgULOkI7Xod04SvEGSNUkj3uadPBxf6tNhNFXZMvqP
	 8q9SpMLbf2U9vXc6K4EodQmyY4Ebw+NbHzRINtFTbdzyYm7R+BQrD4UfZ6zmksOAXQ
	 UhpZdvKTuijYmZsex5hyavrCkjgeJujFogvGTFf+cFh2ftD5R2tZ6Rf2zhIgJnWmve
	 NWqVN4jrMJEw1zLs2BwcHl3HUZAb8abdm0+hkDsiKgWfX5nZfTm9i3GJ2Ag4DGWkgt
	 BEGM7TfpVbSpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA14C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174552539357.4359.10569423918085576230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14bc5d012683402fe95e1bb2113861e7408e657cfc57b6b4e7fbfb562a7b784a
Date: Thu, 24 Apr 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745525393
