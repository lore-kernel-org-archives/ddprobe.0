Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36ED91F462D
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758152994; cv=none; b=MDeplTtQlnviQVlTYmW4E6ftslICPtSOGuYrTvcJdyw7M9ekh4uRy4fhNK+2NrOI1AWCHlPOXqIpzVFJEUhh4pVsDQs1GdLNirjVmnXOarKpE80RHRj3oj7UkTFR0xJVdIIyzhWdzsKezgoxpuzm5KF4JSnp/2PsCjulkKScq6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758152994; c=relaxed/simple;
	bh=CCHSd+8YldwlZ21QPQ4SO3+w3G5P46VYqLxcytShfYo=;
	h=To:Subject:From:Message-Id:Date; b=q8vzSTMRDQSN2geAehJxk2OlIAS9TzzJHbunMRY/g+5h/6nnYjqWSOlwrA5NHDNeySPoyU1iNGb5VBv+iRWYdEWn4e+MZvDRdDQqREQIek50GLapSbi0U/v1U/xNZHbjvfk38Bccu+ccYq4sT+bMIY+ezKCmF4BtRy+TfkRyE2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WZcm0bTv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WZcm0bTv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45D2C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758152993;
	bh=CCHSd+8YldwlZ21QPQ4SO3+w3G5P46VYqLxcytShfYo=;
	h=To:Subject:From:Date:From;
	b=WZcm0bTv0SG3TC62v3tApyV0GKtcrYHT+n+1zZSVqmxFSYnFksl4nBpbo30moqGO3
	 hb23xs1/2emjUpRMvC8ugZZpcQgktgl/txk3VUxMKioz0TMadHAAkp20b16iNhaD4C
	 t/lMuPkBObIhTeWozA2uBy5BQKotY+yPv9VMKDhDRYB6envMO2qNojXAK2hecCSzYB
	 YMt+rTilWqnDhM1Zc9p0I21q7Fe9UAxPoSx8gVFb8+k6KoR7Fw1eLoWlLDdbv+ef+s
	 lvnTBWEiinXoilBVh+HHVWPSsAiJW+cL7eassLvJ3JqKFJNSM4z3VUIhjLr4BW6Cry
	 gGJMMF4wpKGTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FD2CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175815299357.19706.13363348305224374557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c494afd54b8a45c07577b17ab50086cb2123e1456e9a2028ef7e59a855ebddc8
Date: Wed, 17 Sep 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758152993
