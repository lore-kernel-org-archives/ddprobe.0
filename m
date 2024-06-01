Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4454A1E502
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 16:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717259063; cv=none; b=itaH2ehKWnmccN4bEk5nb6QkJXtBRd/Bl0ZU0J6GCl0RQUG3Htxoq0rhPxAdPTTyLf7g125S/4KQWa8uLub517plXrG0kxgjdml0/rbZC2G6hYD0i1f1vTeDtg4DPfTKa5COrQoZLT9bNce2d0qT5j9VWKwi17iG8haD4m0g0S0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717259063; c=relaxed/simple;
	bh=+00wKA3jWWt1AAJDJ4X/1Ki8TGjvRPxcUh5qCpiaToo=;
	h=To:Subject:From:Message-Id:Date; b=qN1e2Lm0uUWs5Gx3SEmy64UZX1+jaFalnfcPPA5vxrkEOuRDpC1GGbyfgvsYTY7AYKyminYrJPmue9iDR64b7XDAxvCMMx1/iGzwt54XNwQQKBAfieKrVxXMZJtGYdWU04/o07XEfZMN1WWhobch+7ugEExJJGQTUtHzISf9pko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=goqStsZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="goqStsZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D8AC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 16:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717259062;
	bh=+00wKA3jWWt1AAJDJ4X/1Ki8TGjvRPxcUh5qCpiaToo=;
	h=To:Subject:From:Date:From;
	b=goqStsZJruI3BQzy7AROuTgEPruceszLDLXttwV4Y45Wb3q29kaj9Y0cv5xMKMqTq
	 lcUQB+gc1oU2tN7tAc+SPkGo2DrzoAV8QUhFvXmDwGYPegL1Pl8aYuJ7G+igx9SMhH
	 iTx9xffdV1YmpUPgLYjwwW6FoRhccPG3j6cZJKQ428GdGbWH/7dOQP5/8sC0wMhKJK
	 PflU7rPbTXEvL3t5zqKLvi+2yeDpAg+WXdfI5UKuQq/lpahjoD48RsKrkFsBk7pwhR
	 KFKJX43BnC7wTgDAYMxR5XABWEk0df3+3iNxwV6S1xrf6rI3a07dJ0YZe59FVGGrq9
	 o0W6zCBkMyQ9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF71FC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 16:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171725906276.9079.3901614932904149685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7aca9800bcd23a66ff058773d7b8dfd7b3c04b21b558e9b3fb753c62cbc1cf7
Date: Sat, 01 Jun 2024 16:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717259062
