Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01BF64431
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730166354; cv=none; b=A6B8grbw5KwbPLZPCwrdTmkhpFLQbuOMiM3xyitJ74EFPT6CFuZFhh86d240lkr1OzhEmbcBkay3i9gzqF2s8JDO/vaX+9GObFVcclSq8MmA2gtyaXmC82zPFvazyJWAbavz6TMzKUUFSuYAqqqWUTQqXTmbpOZzcsd90K9C178=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730166354; c=relaxed/simple;
	bh=yEXc9fsrKOxOh3jDAHMJOQ/Jve+8oGZX7+vQzSaLCos=;
	h=To:Subject:From:Message-Id:Date; b=FrTllGDTzFwl6NPVz+DF2ATf/qYteBKRqKMpgMjKlcr1DvKm7D7H+U5UhCDAHQ0YUaip1YCWhctBfXc4gtz7g5AwN5fjTBNOUMOjlN0eRbudKpVb7adsX9MYj5T2gXyMSssIX+goVyVVttrpfiCwOgcK7aW4bJRvH67WMWT5bXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yycg5zGR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yycg5zGR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C1BC4CECD
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730166353;
	bh=yEXc9fsrKOxOh3jDAHMJOQ/Jve+8oGZX7+vQzSaLCos=;
	h=To:Subject:From:Date:From;
	b=Yycg5zGR/KFEJcR2AI0XQf9gqEyp/wMPF+ui64GLGlIKpjyOXZMZH/CtYVKx78UWy
	 yTCaFHnNCERdz2GoaCcR61ymh7AfoKMxDikZcXJXR7Zxz++uUkVYkCf9JxkFc8yUMR
	 ZwbA8xvDVp8L4yD26bl1NrDKjXZuezGsl6yEUA5MhnPf1tHzIDRGs+PAU5Wl+N8vEn
	 Pr4cUmLQdyivGHTPuiyCYnvM5JYznOQTHyZS/QQmhTMhueR3dgPFyZ6cXsZ07IKvXE
	 scSrvEMb2Hng+hysbls6flpwRyceJpxsSBmo/8L+14OWMvJZkcc7BZVdHdvdvXisQT
	 UmU8GI+wrRIqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E7ED5B854
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173016635360.12471.9258669943238693284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd5da9157dd50f361000d459dc9517b7c3d78e0669f2679c524308318bc54f7f
Date: Tue, 29 Oct 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730166353
