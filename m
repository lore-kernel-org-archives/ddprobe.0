Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03A305FDA7
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770489834; cv=none; b=PAe1Ctta3qzsLqV02gPJ2zre4O8SkeGxyrXD59jcLvhDItk5gs3vNRRkUO10/iCy/p8XpJHg5KLzQErWMlcpLNIrSXPoHfpDqbcuC9KNSfxIFIrs6gcQh7r53nLdln6uqTZuF2fUSh/lxrVhOOwVN/Kw+chEh/4f34XDx0dZBXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770489834; c=relaxed/simple;
	bh=ZT+dPh9oHy9E0tRHCINqqQVon6ffrj+trHYt4OcYf0k=;
	h=To:Subject:From:Message-Id:Date; b=YI4r+gcJUXMY4QjTPtxhaKN0YCrQiRfXDDItU7AeBvPBSwQm8HBss0pIBZJodQSaA1SFV+11U8PvgpJ/jC8MPGmovqKqnxpPYPbn6JrSKwSwjIlOZ0SA/2BMepEYq1BYRORi+W9zFUeU/idy6T4B7vI+JUkw2yv2NfKmJhhm0CA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WxKp7y3p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WxKp7y3p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6381C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770489833;
	bh=ZT+dPh9oHy9E0tRHCINqqQVon6ffrj+trHYt4OcYf0k=;
	h=To:Subject:From:Date:From;
	b=WxKp7y3porcku387/uz8M9JFMAnV1UPZeqgpPq4YIyU352C8YsnqJVdkXIaohq0sv
	 2bahvJegUSsVBUcTJ6H0pawRXaTeZj+4xPKZh2xDynNmivxlxVNzusfsUU+mVDr9QN
	 m2yf08pCIJv/ibEqfpX15cldZgFlcKlQBfwbyfI5FF/V99sW504Sj92uLZRl+6ZjWT
	 cQIdSK/Yb9QbpkD32kiTmM6VwxaBC020w4wKTd3E5iQSzo2kX7A4wG1ZKe1nJDkLIl
	 LhKzH5SM47otJ2524Utt+McFT2mjemiL68POF83wGGqB3GjiMlLdG6u+4zhAdgehUJ
	 spZRPcMFcR00g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97257EE0AF1
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177048983358.19917.9925930081267826637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c76ee0f694465bdceb3909745d44730681d7d4348f0d72ebbff9ed846713d4c0
Date: Sat, 07 Feb 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770489833
