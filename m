Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10DD435CBA9
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 11:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763292654; cv=none; b=c2cTrE5NvHe9kaasTmn2JwEu5YQSh1UD+WUFLvkHQtXShkhzKVgJHnKD3xDt5nOQM1K4/9aJIGXso2XzOztYUpghasLnuhgcirSfEf+HzHCHaODIGeX/tsUln1YjOye43RNPa0C35H8ynnarIULCrDKnXEnlyzN+vkQ6fKRpxYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763292654; c=relaxed/simple;
	bh=vL6uK7gzrRzPUOedBizN/QJ0hTF22UrNOGjwT8dZL10=;
	h=To:Subject:From:Message-Id:Date; b=UyvuK7hojZBHa4Ivr8DiuCbPJtNTNpACc4h0zTbRY81MUD0B2yEqcShCfk02O5fhXCxJhGOskQi6gri97mrnPFyQ5nSwARJOqwPJQoMyClweVTyHpOcAGh9nNg1eoEl6BBs5Rb2ECi0+VTyWg+JVN7kgxVpNAyHiYYAY0QEjZUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V8ytFTCv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V8ytFTCv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2512C4AF09
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763292653;
	bh=vL6uK7gzrRzPUOedBizN/QJ0hTF22UrNOGjwT8dZL10=;
	h=To:Subject:From:Date:From;
	b=V8ytFTCvOd9hycJBcdg/LTwwqQ5IljMKEr8BafGuQoZW2qntOSw56lDUfRIsgEqvF
	 BlDyUe3FjC8D2he8QpQldNxscrAFPropiclpMp3XgQTHTZUnL3Njh/Hs++UY/PT3+C
	 +Mg1nAHhtwT/EEaoFD1FE8bY/5o4R9AzBlKejLYHgAixqZWZeZR0iDyaPrNCabmM6F
	 l1CbvexI6NcSIVOoDp8gSIHfmAJQpNMWsnZEmy925Z9HicsfwNSzCHA+Q8Su/Swkhz
	 Sc40t5RTNZVwzRMto/dZ3/Ps04+rkEpGsGo4N80HtIeEh7BrUZ2qa/7V5m+aFLOya6
	 yFep6OOnX9BvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D2BCEBF61
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 11:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176329265359.25820.8053538272473418406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e49afe59067024ee8b3fee946ab36ba19991f1a7616a0c701d9c502d04a53160
Date: Sun, 16 Nov 2025 11:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763292653
