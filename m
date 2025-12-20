Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDD11E8329
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766214834; cv=none; b=uf2B+kh0mQ++h6rsfW/EuMhZiIRkjX2GT81iT2TFoofLiSsUpB67JLOiaOdLwUFd87CKrhQigJgMnEd5UDS4KWp4vOmpXKxaM3Ov+Goql3KFADyLXgsMT1iNb9T/oDnS/iR3rIHziJdDTq0thLEpoEKpeDg6W0joCAQ0fDTuvPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766214834; c=relaxed/simple;
	bh=jTLsz+M8VrHlVJizUdKCk+s68E7Oy4h+JbfHBDppRpk=;
	h=To:Subject:From:Message-Id:Date; b=ItPZMyMiVcHq+9JLWcLl3a1scspqieuMneUjfTEw0EMIyVbZEB7MsiGM2MeVauqRaT+oTfKRIA4dQRql4jnaRA7KSK5DEze+O3Gh8RYDohGfPZI35g70l414IWim9WS1HNhpdlDwLfBaEA0U0Qj0Mv3Wt8WEPaNMxvM2eKyaa1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qtetSUyL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qtetSUyL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E73C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766214833;
	bh=jTLsz+M8VrHlVJizUdKCk+s68E7Oy4h+JbfHBDppRpk=;
	h=To:Subject:From:Date:From;
	b=qtetSUyL6YFIdsSYIPmaxnmlOe6yLfqPcns4lunYU0hKlkB1qO3pLg3iB9c04Xvmf
	 H7k/NyHYiraRJTwozcGh81Ayl7fifZ2dGQIV14BfuOaDh9U3hiaMcGQI2/AhTDGBaa
	 7v52Fklr9jKU5gbiqMW/7YhnFR/caRHlKa3S7HWAXUlfEjvCt/ytLid2d7tWnJWS11
	 eP84ZLC6LyiepM+HSL9KvhL2sdK9wksh1fvFM9TdAICenqunpIBulaCQrwXEHqu/Hb
	 YWyzm8ceJ3vI6cpH6yXGTK2OSJ8Rl/lJ7GgerK8pBYbHB22MDRnkf2GsvTV6Xb1K4Q
	 zYgXpr4gOAifw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F546E668AF
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176621483357.28710.9354685224117266193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95f936bf31db329111966c15dfc0c9f8a41aab9cab8e6bbe0f68165b9edb822f
Date: Sat, 20 Dec 2025 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766214833
