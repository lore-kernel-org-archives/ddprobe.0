Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208A92F39CD
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761608394; cv=none; b=gIQKK0Ie6HquQlBNUf2xXLJRYJ1iyiSSCID6MFyVTnR7HUifeSdjsDKq2KjDMGAT/8fIsfK9r8ppB/jRhvVYNl17kzEZrCaQpyHGBMVgSzu+xY7AtM1Zngc2sp3NsKZqN0tvdz9DOEOFlA+zFj0GP49X3NI2SQAEpaTrW0tbFh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761608394; c=relaxed/simple;
	bh=AWdrX21odXpPAbwhRSwoHNkGl7+Dz84UBjoVX4ZtbV0=;
	h=To:Subject:From:Message-Id:Date; b=j+iozCxUFyYUykA8W8QP61SAXhDEg6FHlCjPNHZakyXs9BE/sNVfhubLOhvSP4K+Xjz+K8zeKyjjTumx5eylsff9XRHuZq6AqAaWItEaSE2FZJBro8hFXBQIQ4LoqONLC7OQ91CDH31SS5bZIgpSrbt2vrQ0ZTUun0uWdIIs2WY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uA1S87oM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uA1S87oM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7908C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761608393;
	bh=AWdrX21odXpPAbwhRSwoHNkGl7+Dz84UBjoVX4ZtbV0=;
	h=To:Subject:From:Date:From;
	b=uA1S87oMgM9KYOIwo1sJIz6L1Pd0CBLg+yppedFa8eTsAz32mXKx+mToxGK0KfFh7
	 E1RlJrMMs4FBv2rH3vjAApSrlUA5h2b6oUOLH0elBe80IlRr0gzhE+m30RJoviSDnx
	 JY83KmKD0CcYo/2zx4Cw/a9GH33l8qmnbH5qAj7e4o/wqCfKKmALkPI9ozNI3Rmj0o
	 ojKDNfaWedEwtSE88533XqdVYNnTjDw59FEgU/DrBAMhvbOR+ZvECeNTkX1niDrC9D
	 5YrgLdiRavAuKWAe2I4fUgeAQ28o0MweR0+SgFkWO2wQ/aF9PpPZ2tALol/c3w5Nip
	 5h2MWNrvxo0aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ECBCCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176160839359.3436.7220861982064744695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae7b7ea4c36663b97b6da670691fff13a00d9f51dca8e2f9d360f438555a175b
Date: Mon, 27 Oct 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761608393
