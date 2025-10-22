Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0866134B416
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761143394; cv=none; b=fO8cAwTYLpgbcUrgNtzhD/vUlGXtaTp1Qqx04lvYVcyL9EP14Pu+diHc7K7DenGuFmGGi4SCu1uQYXiiaMFxs73EByHjwQ8TPoISi6TJn1CMwp4q+T0bOCfomKZBelbz/6yp6PHvrnH883g3rMoz5RJ6ku0wsW4NxKj5Ecl+3Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761143394; c=relaxed/simple;
	bh=v3r5L/zFqlReKsjDbvKCIqjgpupUKLXD3w1m8S/HhUk=;
	h=To:Subject:From:Message-Id:Date; b=MlAeVFVn4LI0P3r0MZWWHDRAN3pbyLQVNbLla2RpYyt1B8/G0C6vspplQX3Ok645kCH6w900MToPWXtV0IbtYOKBXQWHSrwni6Fcu6cDEk34A9za+PwTK0WPQJdlKafJcaHLKXP2fav2NaHUg9CsclRLIPc6XOm0HjCY1bm8Teo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=torZaLHN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="torZaLHN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A001BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761143393;
	bh=v3r5L/zFqlReKsjDbvKCIqjgpupUKLXD3w1m8S/HhUk=;
	h=To:Subject:From:Date:From;
	b=torZaLHNKSwShd7+csZG36hMyLCaoJ2ZIbPKLeAO/fob81bVefgsJQA6T3cK8Hl+S
	 u4Kwx9RqQ6Jqp8DWSadjEPzsUU7s5rr2RRnLkQ1EdhOVOeljLS8Z/VBa0Pbl+HkfSI
	 wqZ0Wp4Q2Q7JL398uee82bGosSzFtbx2O0ZKO+jSGfZOe0A0vcKXRicWbVcq5nhWpm
	 wv52etX5RD8AAw4ToBmU0iXJAnq4STewqyhpjWcwg0Pz16JyPfiuyF+IzpWk7IlYVI
	 ElqsCogaZP1fNBoc4q/1RjMRJfDnq83SAymG0Di+ROqwEb1tksoPseDwMMy1igs+KJ
	 WqUXSGfbpS4qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFD8CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176114339358.15455.9615929965022835632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9f4dc489ce7d17242f140253620ba0f2ef40824291710bdea8d05d4962df70b
Date: Wed, 22 Oct 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761143393
