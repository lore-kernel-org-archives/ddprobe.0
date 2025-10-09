Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2169B2E62C6
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760017194; cv=none; b=DT2xhZ+nwUrC0TU99bZOIWGrt9r4TkoVUxILNbttxDYfFzq+9OsQgHrMh3xRDx+qoD0MzL3Yzl4A7Phaxf0AzOaA6H0OhM7qQEUjHjk03G/vUXyhoO0NvxUulL3VOnN5zD5AKQaWVhs04OXGJS6k2MIbJ9yFZK8eoKxB393bhAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760017194; c=relaxed/simple;
	bh=BnKoP6gBIeGW38Ccttp3BRsSCzmPpuixA7aBdhbQGDI=;
	h=To:Subject:From:Message-Id:Date; b=XJtELyH7gW0v7c6hvAUqLxQch7qD/7kqN+7hDOHfk4k7CWWIaHEBuPShUO9Q1eC/ePL5KujtYfXr2FykUCf5hzOfYXcKWU/ouxSYk39/Sd7EQUiE0nUTe0benQ/zeMb1o2UnLuxGXKSM71zYT6jQAgXl+/IUG7jhnorHN09xr7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L0k0rhyn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L0k0rhyn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A489DC4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760017193;
	bh=BnKoP6gBIeGW38Ccttp3BRsSCzmPpuixA7aBdhbQGDI=;
	h=To:Subject:From:Date:From;
	b=L0k0rhynvVwVk8HeiorkhH7jIT8O3rCbaYcDSqKYdcTrkWmGE2IvgvsI+HmoSrTPN
	 EiKFF74eqj2I2wIiqYhNlHpssHnH3vvvgaD18XSNgSNBqjetXrslP5LrgGQUONhtho
	 YyGf3BxOPuIe5CT1vqjjduV2cXopTcPvxvjZAjTPz28cr3TGYrbt44L4UseIIoheGS
	 hxtR7A2fa81SyNL9HkdVXShDvj6HjFpCnxPbRheAgjbPyE/5WEwwpSCjOtE4VJi0Xs
	 Llw7iYMf4RDpl52oNupIssUdaPkBM+kkSGijN+FBSe0gcbJvDDB0ehyzkKbp/IXhsU
	 t7CANhOM61QXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903EACCD184
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176001719358.7259.9692702073595842861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6b19c5d96e57548229528a67b01d36b222aa1b93d9124387616c1720751ad14
Date: Thu, 09 Oct 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760017193
