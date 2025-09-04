Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3D8B2DFA26
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756977593; cv=none; b=gtQ5u2/srqhFq+RLWhKGOS6jMe4W/g317DdC27VH6iuI3PGwQ8Hczl0dVss3NQluQQZ5vk1GNdnMdTvkyuzzvqmDWWQ1pe9+cWORlqMDbG3HLDv2qwgw+7oMEX9K9Qf5GEH2zkpGdf19csfXBgCrXB3bXSE3lSGDny4YHDwrLoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756977593; c=relaxed/simple;
	bh=qjIul86WSQ+NvEamgGbG13FNFzo37YIRYiGhqUdx3DQ=;
	h=To:Subject:From:Message-Id:Date; b=XrspKTvN/rJsHO0o3Kw1pVw+tkAPKn+5EUJcZgy83IEDn+BKUIOGQ+uRjQtyx3YLsohm2+oxNsvldwuen7KX6P4GB1RZ51YbJk9QdsVS+ARa19nh111Jzdu0vWio8OD7Z0ldRAyvIHgEJSrBPRYZa+/a8pefKWZD9F2t4/ko58I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ow8IAnqe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ow8IAnqe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0316C4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756977593;
	bh=qjIul86WSQ+NvEamgGbG13FNFzo37YIRYiGhqUdx3DQ=;
	h=To:Subject:From:Date:From;
	b=ow8IAnqeyVSym+i/NyWsDf8dwJsjvBFsGibk+d7Ea3adkoWYECinYCD/0fD/x7+7o
	 J4aa++6URSH0LD++6ye/LPVrKhj9Cbc+bk9Kh/ZSfoq24wA3cYjTaE0GxF3WggloTu
	 WtCilnXovlLrUjt5cpeSO2xVs8no/WyCvvC1d9TFZaumb3BunN0xJIelDosVyggRWw
	 /AUnkkGC5reyldjRIS9NbYv30nMx2gxqSWOwO3c3jxriEOEZwEdlw0+DWcGhwlHbW2
	 8Ch8pdIzDkgSqeRAY0E/Bxhq5Df1uMIN4YRVGy01zvcuDvhxRWN51N1RYl2cwtyefP
	 f5MG4CT43ubnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904E5CA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175697759358.18696.15619768957254612976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1164e145fbd6c4e1f47a9d480bfd59e5fe2be97dcf4e95e9f751e5a19615d8d
Date: Thu, 04 Sep 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756977593
