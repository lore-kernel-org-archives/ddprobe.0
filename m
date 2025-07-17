Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2071A289E0F
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752743994; cv=none; b=f/8OKuY/n0KOvj4J1JXHzDWeeDumf+hL7Q6+abnREGQYsG7KEt7SpS4TW9s1uO1fH+CYfIckDnqTRVZ3smrtscmCw5iFrEDmEW68YjunoXEvfzmBu0K1uibdQFxwgZZfggEXompCFq5TGLJN2W3z0y8NJgxxh5JRqKu6fpjzxu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752743994; c=relaxed/simple;
	bh=dL03CP13gTkNQzrJJuI3z1FQGcYwBkvPkC6pOupX61M=;
	h=To:Subject:From:Message-Id:Date; b=D7SsbSx88QcokPqPmgdfST13bWuPIL7AQh97f7N6/+rlheWJIMm5xx/7g/lY3s3gA6oCxqXuFovNyHCKfLvd4GvaEGkGUwJHoKHhRH1oFmIy8A9RGF229Td/QOW9PtV0q/v03QWvxsJ0XNBBOK7OuBql/8fzqSUYsnHcSOFRRWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sa48kI+I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sa48kI+I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98563C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752743993;
	bh=dL03CP13gTkNQzrJJuI3z1FQGcYwBkvPkC6pOupX61M=;
	h=To:Subject:From:Date:From;
	b=sa48kI+IrO1+H3a8oHV8OqSj3G5k39Ps7G5SUemGXocGden+jEUwCgKhUbj0EMiJZ
	 RtYBnAYJHNKokc98PGmbFKIGPhqddSwG9KQiJuGOEFYEPgafnxzE/oesMqyPfBM/Fm
	 svy7z5Jd/hoP5b6R5tv1l/oIuJg1t9DHLLzJ+H+lCxzxfUxe8k5Kr7VJ45v0rBW+IA
	 b6DugDkVYeC3hehLqPU28iQILLhFwV63ZNhjvVrwzivXl/S4TNn0GIlJ36A74QMk/q
	 UMS7Dx6s2g3JgTan/9yYp+Dmr8AfNp95gv1PTpj6PBz6iTuWH+fsYyGfMuaqEvaYpM
	 G9DK3Gxs0V8fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCB3C83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175274399358.26834.15482767391865772426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d0cd0d0f1b41e5d208ab55481aa56bdc4fd8e68cf1f409093747864e658ce4d
Date: Thu, 17 Jul 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752743993
