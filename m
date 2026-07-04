Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51527B672
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 13:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783172314; cv=none; b=BvLGXK1X0wB421lUUbTCptLHGf4UsYhrTu64FM4wX5XIS765WI0mOj4gWA9sKx6WgjEhxZWi9OG+kzxfGZASwxBZuqgfliCeSAD8/rhXOgIm85KdVv4hyO8fXnXMRq+HdYpFYA4nwF6YYWFdNPtkUr//jbmjIUwAS2QiBpclmWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783172314; c=relaxed/simple;
	bh=LI4SU+kjfOb2cLTKCYzwKGBOiBQ1KeSc3YIGL+/wD6c=;
	h=To:Subject:From:Message-Id:Date; b=J16cKpXd0m3aA3NnT4Fvq7UJz0rVSI+1uZRGc4Ek9BXH9BAftpkXppm7l+ZLP6rwuYqbQqOJILI0KXnyDaLx57aAxY0InMBY6mMagXAyQGsbPKiTYTmRzIAvuOh3nQpW8ipag30NO8uSaOACKnvkSEYzbetYoLeNKvuprOHX5rQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fPOj8e2j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fPOj8e2j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7CCC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 13:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783172313;
	bh=LI4SU+kjfOb2cLTKCYzwKGBOiBQ1KeSc3YIGL+/wD6c=;
	h=To:Subject:From:Date:From;
	b=fPOj8e2jpJJRd5DRPM0v9nTM/lZGebeIuGkl9LgO8VazLfG+kgfmcVCQ9ICm5HBXr
	 93eV1JZp6h+Pw7FPs/1IwRFoBSiaWN8pNE4V5Y/HW1DnSUcqkTFaN20JcK5CsV0GpD
	 SD11xEhQb0V8pOEYjY8Ov53VovhEfXDyEDGAu4qHPURpNxuHVriR3VlGKiMY8GQIvf
	 hma1uoM9gDmlFDIJEjEkjp5F6oihjiIqxVXCrbx4CZfu0/XsfjXm3+4SQq86/2PEBM
	 KawUHZUKXTJCChnH+d7197G3mW7TmcfbzyLvofMRzt9gYuw2M2EEXed/ndy/6PYRvd
	 Pb0I1UUFfKS1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99D2C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 13:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178317231368.14187.6153116621587052894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feb5226016d7f737881c8f6dfc5e2579810e0fddb5e87da85c14f47397bb65e4
Date: Sat, 04 Jul 2026 13:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783172313
