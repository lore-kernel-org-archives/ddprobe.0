Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61901624
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 05:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717565783; cv=none; b=eWrhC82mn+wIi9JNOPLIC/UE65bfCgKOvy3exjMvnvAGH6wSudLO0ElzNxx7LY59Gws4zpPNXGyb66LmLrZfvSu6GsRg94uSw26yB6ZJGRadLBefPTA53OYeJqkZk1SEez8QHzKhSwdX04cB6BwjUX2p79KtC7vbB7y+yfVkZmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717565783; c=relaxed/simple;
	bh=Y6uHluC4ScE7ppkuuIztjF2zImskKFStXLbKZCT8+w8=;
	h=To:Subject:From:Message-Id:Date; b=mUT6djZHZ5r2emBCJsovAzr6hRKdjua20NmXwT0XMcawYWl/8TndYrYh63hgg7/jxmxXugHyS3W6J57GQmRWQez9Cqw+S3CeFrhLf4MotNU74EyCMvW17CnAULs0R2RyE8k60zPLYWozGG/vir2JFcbo4Tz15k9xZeUtIJ1mTCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6Dd3jbY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6Dd3jbY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAFDAC32781
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 05:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717565782;
	bh=Y6uHluC4ScE7ppkuuIztjF2zImskKFStXLbKZCT8+w8=;
	h=To:Subject:From:Date:From;
	b=M6Dd3jbYYh0z5gtayhyLptFhfRmRX5tupsDJG4I9UbVXkTRwRD1/WFmHuw1Q7vrcL
	 sqGPtAVXAFR/D0nRhN+xbiHm12EmJugt48Y+38fcbn+PM/Rt8Fb2bLwjtggZE1MbSW
	 hBGw2+79STeToTvUQUbt4qFau7kRSBN5k6QOw4tpduYzy55WA746sTicG58zoaULpG
	 OX85kaQVMs1LOl8A1VDl5vztou5b7CFtpJBiIkRjN63AAMWCfjz2IspRNJ0QooREiG
	 mP2Wcij07DK9bOqxd+QrhEwSX/UGHc732odb3Y6P0GnpQUFwCccjRAj/nPfut6FIpb
	 b8NLaJNWYTt8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7471C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 05:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171756578277.29521.3367430754577088747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e5ca5b2e0f2b9014497b24ae8a3d07a96ccb50187bc6de44599bf572d8c4ef2
Date: Wed, 05 Jun 2024 05:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717565782
