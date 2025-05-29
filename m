Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5859C1DB924
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748544594; cv=none; b=tSxpxnGcfeLtXY0uFiYOg3uI9XynktX6PqgPwDNwRJrwpEe74VK5GiqZDTS0caUFkd1JKve47rEwquoljOZh9UGVtDkBd+aeQ8k9Wyc4su/5A1Fc6Fa5ToZjTJbyhp6L8U++PjjE2rBYRgI1k/EGW1d7+ZOKVwbnsCX/zT3fiEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748544594; c=relaxed/simple;
	bh=fVG42JvH4eTYNadlbLv85bE6x0lRFPePlS/UyN88tNo=;
	h=To:Subject:From:Message-Id:Date; b=h72zHL5YI36EQ4WOgZjDxt/QohRf6WUGB5Ju4HzjbY6KmozO0T8ZD7VKHQuGDH9Y3pWxcu70dnohxHdhWgMzxvOpV3RKOUYPBa5cynmmeDKMuGkQdelo64YnIWxnMZfBCQ7kFOFZK2gTQs0XeJiP2Ze9Te4OKd+sbCkZfBX5VR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GMWoLJ1i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GMWoLJ1i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B75B6C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748544593;
	bh=fVG42JvH4eTYNadlbLv85bE6x0lRFPePlS/UyN88tNo=;
	h=To:Subject:From:Date:From;
	b=GMWoLJ1iH8MJfYZobg45WQv2unKR5lLfqephDh1ZJ47N4epnP7KLWgOVLcttz0Lww
	 w/+kgkY7CPTBaGzRjNTFvvyiahb2MQWrijMpbd56V8lNANYGdiI3tqSLvYBTy9h/7u
	 Ot8QIGF47AqQrhI374Nz4YCUWOqih+ZfrN7hKqbmn01CNXKcRz5/QkzkUTklX+M8XJ
	 1h6hhmDdjkrewa3JH8FBZFMLPUaNcRlZvhVLOW72ucP2TIrcL2qRXUR/dkwye01nlo
	 16qjWUjlbEfbpelYZNcqm4Hr6NKhKMcYqHzOLOXdHPUL/ptBVVY58X1jQ9oJv8kHdx
	 IqM948jyPEPQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A139CC54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174854459362.14013.12691054437707961930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96004ee423f19d05ccf8b77fb40d894e8b57af5f41381118f58e89b49ab3d676
Date: Thu, 29 May 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748544593
