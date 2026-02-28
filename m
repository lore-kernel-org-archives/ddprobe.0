Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F856FBF
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772237094; cv=none; b=Szm2HJfRwmBqCT1bkyEhezOyFUv+zwe8OJsgqC3ENdGK7ecuuqZt9WBoqarqPdK39ao2QXaZyI3Q103Scg8rgXeic4GkW5dgxETz1TEfqcRcyhZbVXeGK2+4dXMhNqjnvZiQGBrt8AvVwfQ98R9aOy1fY8GD0PUgYSa3rjnDLt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772237094; c=relaxed/simple;
	bh=1DU/QgH3LsaV/JvAHdQTaRT1ydhTigvVPtGAy/Nneaw=;
	h=To:Subject:From:Message-Id:Date; b=QS81lCt20iY40Ar0RUaxRH36kODE0UEbX59WKBA3G7y/cHOvaFPDU7os7nmqJFLbQ+H2ayLyQ730DlOsQXt3fCpEM/1B54x5aChsokNrZVgsBWH2zUQbl+qbCfOxrmUeVripzHyB2HzUxUbCnsEuA3VhOrIk89Q0oTirGlGmmc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqHaCmNZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqHaCmNZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFB0C116C6
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772237093;
	bh=1DU/QgH3LsaV/JvAHdQTaRT1ydhTigvVPtGAy/Nneaw=;
	h=To:Subject:From:Date:From;
	b=eqHaCmNZI2vXN5tSETqim7OyaoNOeNQS3DVANofEASoViDxYD7I9MzgEgsUrpT/KC
	 Gq3bLaK+YR5R6+4UORmk4W9NhBk/XKLCK+/gIgmCiXCPOvvYp+0fNdYzA9zt+DRvEQ
	 tBNIPKHJOhKHK3wWuKtOIuQi6Ym3m53XasZQ4MPX5dePkmscQiYOZOSXrnhUDdjvMx
	 EzPDM2p5Cxd3FA4cAMTK+LBw+prc8XLi4ClT+vsbftz2zOzn4qE6Zo3YNVVvBs6MiT
	 OFLS3l67qGgtmdgZtMJIXNySb72DhkRvlfHDgF7GUAfcWwLqYPxYFqg8RR/EH2jxxP
	 0XVoe7a1mzV3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9447C1048924
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177223709358.20946.4672103474505083446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ce7947c64d17d27da8b0aefd256cfb386e45660c42149257c03ff7d29597731
Date: Sat, 28 Feb 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772237093
