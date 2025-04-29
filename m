Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2876A127E18
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745927995; cv=none; b=uL1NnTHkSttT7KOXRy6Vvi6HKGm5sOEdzOqdAut2VpGH/WUzkB55uf/9hpOVpH5An9mvFUdQTntvBqJw8pZA1Sc1FcyXaiTHP0RVvrV9gTY8CjtjlXeYoXXvreubd70UAKN6R4xxkM/D6UUuDb21shz6u9w0XnIORLYglR0nsYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745927995; c=relaxed/simple;
	bh=IH9LFbXxdE3x/GvCNBZV3utX6D6JucWvjsjHEyCznU0=;
	h=To:Subject:From:Message-Id:Date; b=IxU5D7M8RcU20ODQWd0RIi7U7LoqCR1iIskLciLdyEtxg7hHFWQl73Ve1FoBedcjZZSgyQyhDGXteS1/R6k+qcHZR/6fJwaOWDt+B857iZHNihdTkYIAj1FhFe2Ozsr7T4CGRgRL7mLYBVfPesMKBHV0Zpv8WbimqE5PJe2lPPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AS5zj2kq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AS5zj2kq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28B8C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745927993;
	bh=IH9LFbXxdE3x/GvCNBZV3utX6D6JucWvjsjHEyCznU0=;
	h=To:Subject:From:Date:From;
	b=AS5zj2kqXmIOVUSMMDPAK1lUyw9I+RFbU839G1aKOkb5+ZvTc5dOgoDXq3DWx+zFs
	 utl8eY6vSl6Y0uzJHRJmzPMIa+tZyoVYBy975Dizy3DfRNbWXUvfezaZ2c4SpVEV9s
	 y9WFVIvKu9oMkora15UE7I0YaejiMSjdfBctLEojOLbNHO+Spa8iqbG8ZfwKlCHaB5
	 Jk9NH9h5GeDfUWGEgWNuv7vclVWl7MHAUUBvvDHHyacvWRBdTm7np86KtEjYcdSKuA
	 DANh9HyvbWD+2A1WesMZCsOnqZc/sxJZkzcfyl4n1XyzKMYZ9vkwxmaA+t0oq41W9O
	 JR2hLEDoGrBag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5A0C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174592799357.31616.5343735873411877109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fd4920e067e9c4d96c8e20c5930686c43f3b0fd1da6e7c14e7849c00936704a
Date: Tue, 29 Apr 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745927993
