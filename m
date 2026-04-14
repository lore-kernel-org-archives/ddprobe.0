Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242611F3BAC
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 13:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776173854; cv=none; b=M01hLMWBrClBRVrD49PBefDur/nVjzNWIt92ecZ2I9YOhaZJCkx9T7HDZLX8KUTvhR2P8o+hxMJqa/yqOSAoiOEIrDJKP/62Kx91JfkCwHuHBSAeMr5TfKnerRE9PSEBjk8fWjbXNSnHgfeKzsiyY+KRJaUTInq1lLNCGeGlMzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776173854; c=relaxed/simple;
	bh=gU8UnVGPkoJ8SHKetlkri54/A1vDPW7KUh9B9hCPwY8=;
	h=To:Subject:From:Message-Id:Date; b=keR+R4bco6zSmwCjg97bW5gZef+U7W1L3dpjCMe6u9s9JrHfmvmLWPPPAcfy2azKOMFZX5GD6FrQxX01dqvoIzHiLkhBE0Z30X8mGnNBglEIU6HNJ+ZFMlFhkMxrVOStTTE1FoaljP0Dc+L+8qC9M4VdIXxBpn0lZFzZRxdQxs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PymMKx3q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PymMKx3q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0814C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 13:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776173853;
	bh=gU8UnVGPkoJ8SHKetlkri54/A1vDPW7KUh9B9hCPwY8=;
	h=To:Subject:From:Date:From;
	b=PymMKx3qnJKDE28LkAhSlKjT1xkzKuxpqnBCbjhCELc/uhSmfhPnfceFouOHJVi2k
	 o79CKX1wPOcIYRG+vsvT3ik2Se3E7hLDK70f2hfdewU0Q+oBWLyCT7sU3cgjr08yZB
	 KLoQCq90xv/q+9dkJKPkaFmXzl8knDy5ks9SBLADkRIYONfN4PuRQXWNUYC3q5GK39
	 DRDE+DU9bF5euwNfmK63EWWcbicpJL9A5Z/WMXL02N2RGHatRes7vaXIIsR65iz2jH
	 blwLkDs3dyCRvgpfWYe+7W0FSEZZuK+8OeR1pvp4kjigGQoYsAUEg5BRVAYIR9F5TI
	 JXsKEVGhdNexg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EA2F9D0CA
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 13:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177617385368.21966.2121963758623285820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24dadd0abcf7ff188624eef5ddc1d78d5b4d2ccb8bb5671f646d67256c695378
Date: Tue, 14 Apr 2026 13:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776173853
