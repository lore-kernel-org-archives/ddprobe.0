Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F32047DFAA
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789468234; cv=none; b=TIKJWzEoGFVeqTujvbylIKLNCjdW4tjMv974VKJhIv9AI0oztFIx8zClb4TX7Zg6CYf4in0KG4kWzeMKxVyijYxjy8lgpVRa+1T9ID/UZQGqjd97NKx8Z8XV2wBZMCkj0w/UBLayHhJXsoEAjD4S1xVMUXSbntrp/OaVaDScgF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789468234; c=relaxed/simple;
	bh=GY5DE/onu8aE/SlkhqRuOrn2PSzKCILnsSCBvA8wLb4=;
	h=To:Subject:From:Message-Id:Date; b=ko+OP/rOGxTaXmP8uLOMNq/Tv1qpMP/TswmS82k6z1XZRwDf+R5O/fnsa75s8mXKyOSquhNmYmiRQrPK7156DTkmw0oEin9FZNfve64WXH4+yaCjRsk1ZjXb5gOVuLD6gzdgfw8KS5sJqn+qYw6H1lVWq7hqLFncguqJLU6AnkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sDEp9tDS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sDEp9tDS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDC7C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789468233;
	bh=GY5DE/onu8aE/SlkhqRuOrn2PSzKCILnsSCBvA8wLb4=;
	h=To:Subject:From:Date:From;
	b=sDEp9tDSpvwEZe2b5YkBJLZa8xtGPHXvkiB6nFfebiV29u7U9y41+/wTHKhjkBqLb
	 dO6DyOlHSDlfYyr6Q19esT5MYc54S1n5jyiY5gCnPrtqjFIY3ZD4CpUQYZji2ZvXYi
	 TATbXdYOkJl9dnwA0LHepeIJLzvFxk1OqhctMZOb/TzBaP7uqlCu0CPiY8SFMiYG0n
	 EZZ5tp0tqd5fyCeAHk1+91j72P8mUzMekMaPTQSoTGJFCL73A4kZzT/G7PZk75j9Fb
	 ifnp+XIlGLMBZb3jGTHYQJ23DF8kSJQ0Ebd96Au9t9LPJZbeZKt5b+jhArurbo9zP/
	 TlDg9oltLQvBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92C8C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178946823368.6731.10229488179325113477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc30bfbb7135b84e721bb38b2967dbcac7a38eb8276f9a2e686441ebf6da789c
Date: Tue, 15 Sep 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789468233
