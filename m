Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21544358D2A
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 18:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764871974; cv=none; b=D9Tqk4i8vPM8F7dA95bXBW3yXQ7ZVy6PAPrSmU0o+Zhth0jMeddpkNCwD6htY46t/oQpK3yJDh6ArYRyEuNS2qNG1JD5QjbZ31Bg0CBy5U2RZfa2PVBpVUFUPoayov7mkd7TMvblKyewuMpQl6d6dli2wtET6aOsg7Asu7CUsoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764871974; c=relaxed/simple;
	bh=zA0YYsakn++xtNEj4iqtCwghNLDvYqX2GTDkGd7SxVs=;
	h=To:Subject:From:Message-Id:Date; b=Os6b6PEoXHXeZr4R8lWbhGhAH1VxeQ/WKVIJGg9Ksfct2vvMeLcTqVONvdZH88j2BDXcXvZKAHGv8IxApntfoOrx+Rtj63PeX63mys8gTA0zkNlu2xj3lfvDBMZuMeQFdt4/Yo2B4c3BFkE9k1aut0kyA7w//9WU/F3oQYxrNh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NAWPKxO2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NAWPKxO2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8882C116C6
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 18:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764871973;
	bh=zA0YYsakn++xtNEj4iqtCwghNLDvYqX2GTDkGd7SxVs=;
	h=To:Subject:From:Date:From;
	b=NAWPKxO2ddyBYv0rlEGn5DU8hcRubvl2jF+JgyUt91uYS8AHv7Jfjr2Cf9u4xaymX
	 IElsqU/oi9VieXAQ8bRIjGbsKmHiCnbftCY+KY/9M59GEdT7BoCACWHRD5xEUO8IfB
	 TTShoZe6mkc6nXHlPId7wuITmidRugoRlktuN1t3yllQo04BQiBG0tqV8bVkK+63hS
	 OtExJkElgUTbLu5tTlEFeyOJINTWev6oQpmWyYtkni5ua190R4UdiygRs2FdZs9omn
	 /g5ymkv+myNpLYcwUVBbLySav09knGvEj5Lbk3iQJlqEck8k1zKNxDwn5gjZ/bsypr
	 yIkvoWS1gZyDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97369D24470
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 18:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176487197360.21670.8731536844468543434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd87d68ac9a3d5f3aa21780d5c2db32783b8e998fe888f396e6f8711b71d180b
Date: Thu, 04 Dec 2025 18:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764871973
