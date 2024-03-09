Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE1B3364A0
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 04:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709959097; cv=none; b=HZAvdCmpSfGlNSZ2+Utkw5DmpeoRhRcP5ND/f8HcwJyyBXMe8fppn1lETGnBGwpZIv1TEcu2IJG5kEsPNnNQmC58h45fd5FAEKTXBbUOS8K245creI3i8algtJ5WKT9oUsu6IWYp1e/+8iEYu9B9zLltLsKmgRIlopVxikSWZPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709959097; c=relaxed/simple;
	bh=/0jAkrzm6sGfnryJ6FfQ2nMT3/0RzdNzhjzHUiMhwJI=;
	h=To:Subject:From:Message-Id:Date; b=s39PR6TamgTOfLDbjjB0eWHz/xnPQn3hydnIkJUE8Tem4bM2nr1Zh4LA57uFvVNfFx/2GRh/mSX/0XnjDW7OvUUP860EUmaMTeai9PATpP6Jfws9QAiCamW3JQY9YREblbH5sLApI5EKWzRVBjtlv9Y8GD+W/0Vr4nHHNWCqI3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jsDEudC7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jsDEudC7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A440C433F1
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 04:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709959096;
	bh=/0jAkrzm6sGfnryJ6FfQ2nMT3/0RzdNzhjzHUiMhwJI=;
	h=To:Subject:From:Date:From;
	b=jsDEudC7qHX1oUtk0D17A+hLaK8A32iieMjMInWTCGxhoFNeZxpqhcjYssQpxxc4C
	 0fgYK4GaYsnxXdn9X4IB/CqEfHYFKsv+b410qerZDwyEFGD1boSJqxWPbnrjsyqXm0
	 EPDOmGkVo/bvZdPbj7tm34MSJItA1Rj3iJ2lFctE3WbCien9dTVkT48J8XnllPI2Re
	 NAxqFZEuZJ2G+4BlK7QBfx8GdoUFGXE6Fx/9bhpw9ZJHhRNOc/PWLhxKgF+dDlsqo+
	 9zVcbpSVGCGCULUgbWtpaBBaFlToxOJgiwJ+SyODjA3QOgTlXIJP4Ter3oljqgEYq0
	 C8BszSneYTmuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63A30C54798
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 04:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170995909639.17600.8085786271559421148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a401731c4abd896d03baad1bf1c0a42eb85b2aeebade69d8f999df4eabab76b5
Date: Sat, 09 Mar 2024 04:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709959096
