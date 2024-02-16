Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0741477F22
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708085297; cv=none; b=caNjkKE0LKXuisdWXCiOKOkKcMO6nZp85RT7wyYogR0FCep1TPPSDnIilmWp/NG3YLUI+R0zEuy3jHbMSW/3A9J4a44eP27KREL7ZdE8xSW7bGDzJ7tWcn+quyGmy8ufCfwlULwZKhaAZKBeLj2RWDN4YyTblg+QiJv3gLH6cng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708085297; c=relaxed/simple;
	bh=ot6Ul2gXP5y/r/8R8Lq2cUI2oMEotI2OwV4QwFpvUfk=;
	h=To:Subject:From:Message-Id:Date; b=FiqvI4Uc7ggwlNSDJ+TjHlbRRDSqEIKoRjT5k2J8HN93GYtOn0afMxe3+t5eOMqlXsRZszO/PfTSIYrDeC9nJWbwMa/Q7NgHrSNwqjnwExPLyNow4FEerjexoiFC0oTQVJu5oBo/ZtPBIteC89eINxHOlo/ZQT0JiYdLMTN+4Ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q+GTrP3O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+GTrP3O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86EE4C433C7
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708085296;
	bh=ot6Ul2gXP5y/r/8R8Lq2cUI2oMEotI2OwV4QwFpvUfk=;
	h=To:Subject:From:Date:From;
	b=q+GTrP3ODBbHexJx8Hr/D6/FIFlVEf15RDVQBpLP53At5YTyn73BnqaFVSjyvQzdv
	 HzXBBFX46ofde8Pg0H8nLmdmeqXp3qNNzJRmdfuUPi0WVdYompg0ai7HEEsVqS5a9q
	 /fpYxQ3gtoDQhzVjTc735C49kEPr0hsorHPlYmSPDoywscQSxSeQ4OFrgifW2NN0Ev
	 3Q2gCN6o6v8lRGX3rSwyd+FaZSNTE/e20gBP29GuP8ZoIH5+vIbPu5Oh5QjKAqQeTh
	 Vxb3L09mDV0/V5cGxd+S5Qh1EaKfwHrADZb/zlbStnRU7pvhSrp+eB3RikowjKrrTb
	 YMHy+wOrOaq+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6678FC48260
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170808529639.14499.7229485797470755152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e26e7f4f476ae2956c788f42af9981709e2219d72392940964a34684e6362194
Date: Fri, 16 Feb 2024 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708085296
