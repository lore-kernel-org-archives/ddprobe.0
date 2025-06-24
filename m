Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF9B26A1AF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750765194; cv=none; b=RCm2NOO8vaudLkNCbKi/s2kKc41WBxuAK3l5K2nFJUtW1dSn/dNCYAjsKXH/R9EQboIIJoGPZN8cZJgzLqiJsExEfQSQ3iaEIZJ/9THIfHnvPQh4iUVtjr/NuleHo0ozAGmJ5mtTS8f09I+C03XT0z2NjJb+B7vfqE8VRQ4L3uA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750765194; c=relaxed/simple;
	bh=I6VgQzxuUqYIv1aHM220RYYv9bsyvEqR2cGmfovvEwQ=;
	h=To:Subject:From:Message-Id:Date; b=NUkLPJ3Hj2wAxaciBRtq4AaYT03Wmc9ncUrHKL0VbHynEU7q/W5dJsirUfzsf7faMelxji/37HI42vuORn8eZf83DnWdTdIrNAyBufzoeHQqjYw404GAiYibb4G304Ph7+NJdsrI5T4YS7+8iHsZwGXq4unH9lwf8rg+jrLTLBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VBeX3H8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBeX3H8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A103FC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750765193;
	bh=I6VgQzxuUqYIv1aHM220RYYv9bsyvEqR2cGmfovvEwQ=;
	h=To:Subject:From:Date:From;
	b=VBeX3H8Io9Vfsuyn04qs7VF2xGgnk3zTKgd+5jLJspMHHqJNfPFw2ozpSvjZYw+HV
	 Vzt+/klB+9xoQFfuG7uOeOszxLXCd8HUKNsNgtm+z7/0qJpx45TO6zILS9HVrwK/uY
	 1sNb9FXWw4TFp6WLfBYcO4pR1L8AydYo+mijHjhN1yJr4P2CyfEIaVj89xYDw4BBjP
	 1kbD2obGH5vTaXTb662OaVTtjEPTLgQD5vseocyhA4sPTC6vzG33Kx9HIPYFRXYI0E
	 pvGzZNG0ee99j0xjCPBoMffO6pr6sxCBY1wjqD53fct4Zyrv29BLkQHNaj1arQO3ft
	 MiBsczgDlfdMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDAFC77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175076519358.3762.1086870840114430444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea6350ba64e40f2cdf514ef440107427ce4e4b6bbfafa9a2dc826262e2aa719c
Date: Tue, 24 Jun 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750765193
