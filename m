Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156AD2576
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753977594; cv=none; b=dr1TtQY2UifSa+9GLCxHUUDGnVQ3yk4AVoq8JOtorM/fUxscV6MFKXwUErNw5yF62zULkp4h+UhtmJtli2EFMhpfechj0pYcwpsLeYIEfGJx3x9yZBhU9J0NZkpUInOcfc5P0OcK4PYuyXJp05cr+74DvwcRt6u+0sm4DXoANvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753977594; c=relaxed/simple;
	bh=cciWRZkYc/NVcf+N1xY+u/LyffhnmedTVvrbclxncQo=;
	h=To:Subject:From:Message-Id:Date; b=jBfedLPannf9aj6WSWkH8cmONMiXCbHMDxkucD7LpsveSCU89YvPysESqQQGCTfaN8FxdkPWr73RkwHZAhGUPVOBEniDeQTDK3jdajM8s6JvhmJJYM5tFm7bmayZYeRD5xdwg6jO5Ns/RlCrhxEgWmWo+AtqK6Q80sLzrigGmy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N5hNIV66; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N5hNIV66"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A536DC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753977593;
	bh=cciWRZkYc/NVcf+N1xY+u/LyffhnmedTVvrbclxncQo=;
	h=To:Subject:From:Date:From;
	b=N5hNIV66fpcJUWYyIqyx+eG4Ru8i4+j7ORZC4SPNWM2KutN7IVv8tzco0FW5NBXUY
	 P4pWIdEa63sEVWWJaSS8gvPifZmf+poQ5jfhV96B0ZK89rr6NHX6hcdsAxgjQ5nyUQ
	 uVDvCX6hSsTf2hOVxxEEkIvw1hKoqEGsCPeghzs7blHSW4BJqvrX+mVDNRSimJsTvT
	 PkLxIbyFJX0vte3mMR26KdLPEuK3SAEY6KRzqq7cl0etMYE7lHwwhJgdUZ/s8FG7ok
	 cO/gE1YXRdYuBAF+WvBcqC1kOhacNrfJnw4pES1w/whtls8LTlbpsMqZMZGdMYyBdD
	 BsrkyzOWgiNRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DD7C87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175397759359.316.8201460422442105149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8a770da4f08f62c2b2bf2d288637f3d44f111c61ccd975be40ee78b93a666fd
Date: Thu, 31 Jul 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753977593
