Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D0BD182DB
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 03:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717127063; cv=none; b=Wev22Kz1sl9V74MIsjUHw7ml+nAwMt8ADdU5NAFtv1eKoZ6ZsfrWf+7NEFj9GmTeO0g8huVCpe/CzfIjax/vpoKcGgdbcPFZ/5iiNzlz/CgxFaVxRBjYrspGjEqrhzK2vCQyea1bfi4asODqF2yQV7Oh1KG5wBGAa9bGWG3xAac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717127063; c=relaxed/simple;
	bh=FohgOU5k+O//EpBiDm6yt56B5FT1TXnh0jW0w4CTRBo=;
	h=To:Subject:From:Message-Id:Date; b=MTItwaFUqvulwI0gQhW+luk6LQGyQBJ4lV2Ae4ayuUPc/ueEjAvwTvsSbuIndVZ9UH7AtfXkD61+qVJ5oJNQOT5R9BW12jddxHBgAbrxKl0jXd5VV+jy21fXn+gvwpvKNA4nLbmhP/g5j0X0+forrozL1QYR8DkA/UnSVKIjybo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q0Hyqm5I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q0Hyqm5I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA929C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 03:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717127063;
	bh=FohgOU5k+O//EpBiDm6yt56B5FT1TXnh0jW0w4CTRBo=;
	h=To:Subject:From:Date:From;
	b=q0Hyqm5IMTqugLvIVhOx9uwG2LEGCLXbTwzmfCksCR6oDhQCKuePSbDvR+uQcQJUB
	 xhpAqzmNrXRvx1rk0ExFhsTnQsv6AM73VNX9XzPEUuikb/2lOYRZhPIJufUcU7TtLG
	 NUZYinNhOP2KcIqBPFqD1wMVi9fMiOn6j1vZgCKLQo9vS6RTOGyihETSY5CCDhfGlu
	 8Ht78cHaprXRFbi/x/GbKtOOIZKVGeCwtuZTq0pw8f1yBozpmP1+Ipb+JZAIaeX8fd
	 YcCCfJMV5G5cs/yiBQZ7jmVxyky8+wh6y6APm+9yq+Roz6LWHevcQBMvtibkrT2hnR
	 ZlBlWPdSlMNvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C59EEC25B74
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 03:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171712706278.24376.17010897494247889085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bd802ab4d601144372c2964a3c5146f0e66e27ed74a75ede2cedc73aa7d8a51
Date: Fri, 31 May 2024 03:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717127062
