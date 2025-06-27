Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379AEC2FB
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751056194; cv=none; b=NqiPkmIIMYEwU70CQeKyEmDCVjXhHfHrdCRx5gmYmTZbq311DMzcKz9Zn7c5cN7S6YPFHM4mORRAhuCSqeytCitn7XGCdRhjXqVmyqM0roWPFVY/+FlkUvZfx8staVhVI9EtLVn3loUcw2p8GT3U6X10YbqRqDbR3Krnputf7u4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751056194; c=relaxed/simple;
	bh=mcgJotj4HQ/fHCkP/06FdjzlptuAoaW71pfbXtmN8ws=;
	h=To:Subject:From:Message-Id:Date; b=pOP6BhtEx3FjWPIMERk+JpJzLTtsI665010wOFGDCgbA0Xl5cdyGfAUXj+EXxY/mxYd7Ck0L9sYSNgB8cJV2q7xw8txxHSTEtqUTSAVZ65I5wiLn3zfXjz7NkP9GK16Y+aMdNxFXt3M6gjFx47SC5pT1GMtIZuUtAGumYsUyQ+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cp+l3TAR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cp+l3TAR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B42C2C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751056193;
	bh=mcgJotj4HQ/fHCkP/06FdjzlptuAoaW71pfbXtmN8ws=;
	h=To:Subject:From:Date:From;
	b=cp+l3TAR0pDGuAAE63xc354K/WGHEnPKyLXzrpoB4PAGVZquRZ6MFByF4H8XclHVz
	 GmyQIyMdMBcIuqAqXyenG3jZ3sdSZnkba1n+hJD4Ao7G8yu685eEFsd4PrMME+Pw/Y
	 Bl924PSyoYBr+xpKUWkvkWhrcBp722c5zoRSO1H3leqN5xRky8eZ2nCcXSDxluYcyB
	 MoVr3CpefwiHT/IfnPYni9ambddx4wfHsxgKvco04c3rarhnihVKu/XXrrWsSaD7Nm
	 DIRNwxdBMYETSH5zIEpILv2EHZzNB+/glb9nkBh4M+A+Pol0G3yJWXcg0vXfzg6Vka
	 ufC9pntr1mEIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F0F9C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175105619364.25950.3272416826671995511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d43c47353c51cdd80a7a247219744b687a618208d334901932db7a869c0abac8
Date: Fri, 27 Jun 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751056193
