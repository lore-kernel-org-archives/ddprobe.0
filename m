Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1218488
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760590194; cv=none; b=ddEFn3lnbiskM1fhvhrCR0zNwTKw0z0tiiZmVR+TxO9gzQxX34CqjztyZ6iXcYIJtAXL6iQ8bkFBErt1tZ+mndn+ZWFRy4h8+Ck2NfN1FQywb63m3kSWdPjL0UKgXQz9JQMhsKmiMdVvoJeYzfw3A4C9PlyUUxnzMvgKN5kJq7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760590194; c=relaxed/simple;
	bh=93Oqct/aT3h079hNj7oDOSNv2dMBqD4jLJEh07EZ2gk=;
	h=To:Subject:From:Message-Id:Date; b=SBNIpXrVLUdtZggGT7EOPHwR0yMb9DG05/rODAnWlJ4wqPV2GSGpPT5mz3ZN0oc9+8J9BsYTJ11NqyQuAvjj+24ikqZ/ldxN+WIFqH5lwb7kuPBm6BKPnbG8EXpSajBZ6bOBaUUjiNTtnFYPzHQfJZTxd2zZ0yRFhesx4mOd5ME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DRBJxLLg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DRBJxLLg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10C4C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760590193;
	bh=93Oqct/aT3h079hNj7oDOSNv2dMBqD4jLJEh07EZ2gk=;
	h=To:Subject:From:Date:From;
	b=DRBJxLLgl8Y7AAcyrV13GRgguoSErVQ6ISGMaiWZeskfWyoz/iG1sQuXiBVuIlyel
	 DEzchjMqrmBT70cTT61T66blWsPiUHAlpxv4YYHkUJ7VzHDjiAZqjg4xn1VVMvfeWT
	 KdRguBl3GYvSAzJ+BRj5aCjwZuGA4d6UlH08Ecd/4cU7YmO5CwRL436cPH79kak4B2
	 SwYSIlJKCH449Uhzb9xIqD6qnWhpwBSt1du+8dbcs6vanmfd4HpO3j7GqGLnhxpFqj
	 bcrBiM1XoFm5E2/hdgyNDxeJi0Nxa1jeUdqR7BikzhnABonQP2qTlk+ZvmPxGY+rwF
	 QTEnN4I7FPlOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E448CCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176059019357.1043.4139220707811612462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8853d12972620298a14a9ba03ce1ed01b9b02c35693d861f9c2d5940a1b440b7
Date: Thu, 16 Oct 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760590193
