Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E66D15B0EC
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 15:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776613054; cv=none; b=oxmX9wjgTfwkaZ57wIkZ1G/hmhZFw5kcFX6Yk5LhXs5nwobLsAMkvlLVLHVD6L3rP0vF5+iKdU5IYytqsIIWyKvze27lnJmA4FGLKSFIjlFfzY813vlY/SrSQ8EPkCGyzqY4eC4BFx5wnulj1WQovWw+gXBETZdJvKSnLYsE0xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776613054; c=relaxed/simple;
	bh=HMesxenY0kk4ldslrne1pOogIKZF9n2MAgXnSs+w1s0=;
	h=To:Subject:From:Message-Id:Date; b=FQAlHCUBL8Hcmn/PSTbkMDXc+JgsjOyOWjksbb6DZgeEfKdEeDlgpysX4GyhiQUeXwlNi08/rNqN3qtk8xDSKQZjwieEFjEIzfsIzrRZ6y76r/fWq/Nn333Q9z1J+TsZYg+TUFKe6vhSJOuCp+QbS3/+F5OaJnkTzhRw6jXHRZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tuPAyMYo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tuPAyMYo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC9D7C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 15:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776613053;
	bh=HMesxenY0kk4ldslrne1pOogIKZF9n2MAgXnSs+w1s0=;
	h=To:Subject:From:Date:From;
	b=tuPAyMYoRZAoKLT+CiI2jAEhlQC6xfpFD9z65q2/xtFoRg1a9P8PQ45NvHkVnnGKm
	 oAGAZroMKpUUovYJ5tLplHD6k6nSgRapi27NIiVXGs1RCER5AGy+F3d3LnWkR/KwTn
	 JqTO9TFJe6oxSQpNFRc+pkfBxcbbZJj+ZmsJvP/W6I//Svi3rjCT33zlGEq4Wasm1z
	 y8SLLRCtyGwQ5CackoMH0Juf78K+VAuDLas8O6O0yFl6hwXatDqvA2SFn5FWoy4oZ4
	 d/Na+eMVIZ54RjEAa1NRcDXKhAh0w0XcgT8ZafPhfEckL0sDPWHZhqg+7LZuemBGN4
	 gyi/Rmdrabaag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC88EA71A2
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 15:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177661305369.3142.18406259578151765511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98b4de616cdfa0d29da5ba7e0a3da91d0eef734d27b841b9b0f32ca73ee283a8
Date: Sun, 19 Apr 2026 15:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776613053
