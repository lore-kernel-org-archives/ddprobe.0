Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A9A321129B
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743135594; cv=none; b=kBg2jNUG02eiBIdonEvS/Ss6DoPWr4zFaa9SITs+PF8w+PdRTOxiyUdEEcn4ShIGOCXjr84sONovIOXrkUwq9Nb0E42nt6IYxB6Gv0jNdujC4bKcltPNoRgU1NydonN1DwiVKNMimin8P30LsVgvnKntkpg0afgkK0BJkpS8e4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743135594; c=relaxed/simple;
	bh=V1Tub0PXV9kjTnCiT12YfGKJcVtFsWBgN0Bn+5PR8LE=;
	h=To:Subject:From:Message-Id:Date; b=X+jRi0RIJqUQeh+DMZqijxutviIuGCEtcIB7vhTBGZC/dAAoArCh1F//J3l4K9BFVRTwXumzlSKzJw50vcj2cr7Ecguc37YBHlBohZwK7+gtngiAn2OunCvxp+FmvaLmfSWVy0km1DarjlrNu9SZ5YSMqkn5kq61PkMblpEHoCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JBSRNwIH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBSRNwIH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1CF6C4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743135593;
	bh=V1Tub0PXV9kjTnCiT12YfGKJcVtFsWBgN0Bn+5PR8LE=;
	h=To:Subject:From:Date:From;
	b=JBSRNwIHG/TYu01laRKzWb2wUINuWEkSyhlJ0KPq3Mjk/iPOlXDZXgO91hML2TfX/
	 VsQY03ETNtZzSzudzMa/RwMq2ZLeic0AsNEvDNS7kw9e+O9McQL0AE8TMiblTfo2rS
	 rx/ZaR1ywzbykw4KyARiggVrkXPsFuSEDihyGA+KH4MHLm+5/XrVqdPje9Obc1T1+o
	 b9EKFohvjwad9+ZGcZdVc//Ynw4M/jcIAvmfsMtDcDCColFXateulLrSP9vDqpbCep
	 YDFi+7CpkCYTqaUbOh1PwNBxQIkdinllEFWl3lxevsJwF9A8Xt+D+hQKf79EZsN7ph
	 HXS0ONCnVzwzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A242AC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174313559364.15664.8841153811541686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7485c83228b1f0d04d314bbda6f382c1bdd4b63a001a60997e7df868ff86ca84
Date: Fri, 28 Mar 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743135593
