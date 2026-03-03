Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463A2382387
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772525094; cv=none; b=GganM2IjpJj7AKlJ06BuakLfI/Nz23a+hgsacPbiXPln3QzXP1yIoTg2pjpoCtJn4eUk1moFyhUdP+yjl2sfYm7BEwmBlKptSNV36ei9ewdyheHl7Sf/f0zo7Tj11HzpBdeY+uyjbi8hT8JTW+zQcBv69/evo5/tC8FAyA3tVoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772525094; c=relaxed/simple;
	bh=jvHPAb1O5a5Ilbr3pTEmkoB38M666XphX+kl9Wp10FA=;
	h=To:Subject:From:Message-Id:Date; b=XV22bn9rHcSDOjcY0r8mTTdY+/JH2+jEJR56jwh3WJ0emnyw6C+CbpWeP39Tvkffnwg14o97pVE+ln9lJztaR5VUQ8jADORvJ3NSZ9P6jk1E6pQdHu+bkF5auCBEfj5nf9VmJwp7GGOXQyFqmubh6x9j9XDXuNuCbrzHoa5olTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NLVsedlB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NLVsedlB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD85AC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772525093;
	bh=jvHPAb1O5a5Ilbr3pTEmkoB38M666XphX+kl9Wp10FA=;
	h=To:Subject:From:Date:From;
	b=NLVsedlB+Mpt8+xnn18dvTvw2qeiUkj4FjNfhM2tUpRdCYoYEkSOY6W0XAQkmoE/X
	 ytc1W7rEMM8ztVGwdGKzKwMi57vCkZF0+XaS1zX+jusoUjrQt6JQreEyU2w4NEJXck
	 bXFE+gFxYQPKLRrv2T0m5SN3WDhKbgTnSp2qHbnZNVZ3A4WQw4feq76VLlSh5KdXhP
	 7iEfiLyR2z62qsiYscMVyFpuuxFLSaWmo+v7lWpePyaExvtjfH/vdsIE81+7iS8brm
	 O4kmPGFKK+pAUWHVGsAHg0Wbea28zmAzcFBxvpvi6ISoDyo7Ul3kVO8n06bGlJslcM
	 iGCuS76ILR1aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3FCDE67A93
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177252509362.18793.89852251035267174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2304b0afcd04b94b0459acf3f10e465bfbb2aa1877834ab4f76039cad5b71a47
Date: Tue, 03 Mar 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772525093
