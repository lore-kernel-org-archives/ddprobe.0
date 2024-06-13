Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4911A13D63D
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 16:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718297303; cv=none; b=hWZ/GR0/TttttUN3WFqglJaV/9LOhWlVSa6ITMAMZm5zuZa4XMTR6YTgSCkRTXnfQO4V+31clxZoDxFUq5C1245mesRd7eLO83L0efZyZdMckodUEffw4K42UmBwF1ckKhf3E9YgglSpbJVfxO4C5Pxq0CMVtW3/En+X7w7tBKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718297303; c=relaxed/simple;
	bh=c2ULV3OeERnTL6vOdXG9pauOkMSpAu8Uw6ga8Dd6Uts=;
	h=To:Subject:From:Message-Id:Date; b=Zbj2OcUUx40smi0aVX0AzqG25XzyyBB3A2NtbhTeC8Tx6szNysdv+GeOftWwQkUab/3dA7Xud4sqmSlnVkpZDah+2MXfWAuOhMeIZaDQFaourjsS182NiQp67CeUJ1y972M73l2+oQF/Cs11VSi++r2wmDfko9XvAztC67ZUr0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0fKfyl9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0fKfyl9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCEE6C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 16:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718297302;
	bh=c2ULV3OeERnTL6vOdXG9pauOkMSpAu8Uw6ga8Dd6Uts=;
	h=To:Subject:From:Date:From;
	b=M0fKfyl9bzfmu2Vudo5XZaShmaw2uGq3YY8yGfad02g9LU4bMKi3esvuJ50pT/Z4b
	 YMJc2v0Td7HNVdg4ue0hRQiZpvQdMg5OU8RZJ2bxlRbxK7p9ZJXNbA5ETApu2wwhBG
	 Nj1YbwYbNoH7MmfQobkg92EUk3tiryfkXdmJWb+H8R/3Sesmhpkx5+G9u+uCuBAHHP
	 qpJezCpIKYjz3oK7+wdEL53t34HZL5z+eJDVym7aCwyGV9ahyOfWt/ayZqzzvqT1fc
	 AtXwZG4jRJJLOfyYpBlpcAgsxbLKovZqcc24McoXG/ioeqv5/2L3h92i8MXdN9W3H3
	 2q3MCfDxCKZoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8818C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 16:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171829730280.27028.9925147816581550162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85ffd8e477dace2f190516a011950151f96fc643a38a4a7bd5b11104f443897d
Date: Thu, 13 Jun 2024 16:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718297302
