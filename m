Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F56810E1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705721897; cv=none; b=opp1zXdId+dKHTJFLg+L8H/AkFx1VxxOeqmcOOfGkt2PsRyL3Ou4wCEVfD1zJKWlTJqQ4ymQLElG8H6pSWicfazsiTwZzSm/asE+G7IRJo1lVAZXU5CftuF0SaVMSC0m5HEPpqMKyKtAYvX5lhGGcNUMqdKQEa7mm9f+WJjFZug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705721897; c=relaxed/simple;
	bh=vAUh0ifUTBFxOOjjVsMx42ztTH0nB3p62EtmQGfaEb4=;
	h=To:Subject:From:Message-Id:Date; b=DkZ6EDIx8Khm4dhc3fOBLjYiUa9cufY5/gfZLfabDVmkuOwI2cdovQik377YQm8ZdPPfqCSS1adg5HfZDKF34MDYknHAKhxfcUbiBUcMcxQTKD+IkpzrgaJu7CCHs7wV6wnuScZH91DGDNODT3UzDqwpzNNGPI6NuhrZV1tn9h0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e3l0yMIk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e3l0yMIk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DF45C433F1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705721896;
	bh=vAUh0ifUTBFxOOjjVsMx42ztTH0nB3p62EtmQGfaEb4=;
	h=To:Subject:From:Date:From;
	b=e3l0yMIkx6RWVZvu3EMAYD8l0kOh7bi6kFdpX25316jpDm4N9BFEAjc9YCGVwmmaF
	 QIrYeiUIBNaCDm91acsZB21l5aUkQ2zblYtcLtR1yjajH+mbOUCeLQQVTFCkFtgqc9
	 fUOB302vP3aFpXPSHvyhO2+ii/PHbYM+G/8oIMvqWXEhKeEoAPPtsA7dcDFod0oV4I
	 4AvKdyUMRJQCtBAOJiPOBj/+ZdVLv9OZe9SSH9dRNCQTn0CIb4dibt+wgdr0HywmuY
	 SUOv/flB1ARVR9TQK2AHye4VWYn7tnHWEK13rBwwP34r8g4SriAr5yKBV9/Wuh95nS
	 R2KAJxJ2o1+CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63101C47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170572189637.22053.15812002525586317760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79a5b1494b90bb70808f868d0e2ab9598467066ab8168619ab18ec2a5c99a9e7
Date: Sat, 20 Jan 2024 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705721896
