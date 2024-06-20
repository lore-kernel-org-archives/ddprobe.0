Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F941AD9C9
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 14:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718892623; cv=none; b=jQpEXXK6zjVVf6v4jmBaLSv1nrpsdWiJCwu52kzYh+IFBLg48eMvK9ma5Fxl4myzfVpckSGnfl1KzeLB4wpBzRZESfvHQxjMO2M3/misQhDAHe+cdWGQIwTtvBBG+eQP+6NMcXqXHh4aWthDqAPjzuocrwv9wGGHzlO+M724Qj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718892623; c=relaxed/simple;
	bh=mvHiDUV5codgUALHHg0Hsfc9Hdv48/WoIAliJS9tnJE=;
	h=To:Subject:From:Message-Id:Date; b=Tg8WBXmnG5Qy5Cr3l2hgwZR2gdPAsbYzetd/Zsh4IgPJb+bsFtUTZRHA6dSO/K0meF3CfM1sJhxjhnKilAyPGkKjQ9ddjHNVg5jAk1BybshVEzqhITcki91zBzUO2oSXHOUV3wXaFdz2QQOBgSJHMtIgXK+FT6BAAFLEaAv/wnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nos4Wcv9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nos4Wcv9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9EFEC32786
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 14:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718892622;
	bh=mvHiDUV5codgUALHHg0Hsfc9Hdv48/WoIAliJS9tnJE=;
	h=To:Subject:From:Date:From;
	b=nos4Wcv98VYiXA35/+P7ri5hPs83AMvj44BzRWzvK6m+xrqKmcqfBI9LCSDHrl6f/
	 wfXRDz6bip7RwIpAlNjtwYsrweAFMJDGRq8QwqATO/jt18BdADsfi7aAS/DmIfcS+F
	 BHR0HsftNNrTTsUxckkex+jDru8eSfW3wB/tjAxDu1BiTLpSBWjSzpwcreYEtUoaLz
	 8yQh6D7qWMcsXiaEzFXdIL0bREzoDz6+7++A7/9pvNBqBP7HE0V8CpEiSsGGKGqtsF
	 ki2oSL61jQG6XbXEZBhS3E0M9EyYg9o8YjiN1UPtKF3Y7Rb/fc14Vvuh4UdYihTLMj
	 FOiXEW41Ddt9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8EF0C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 14:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171889262281.477.15966530668823493942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dbc199613f999b96ca11a353b95eb43d4e36cf840a76307b0b9a7deb5501c91
Date: Thu, 20 Jun 2024 14:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718892622
