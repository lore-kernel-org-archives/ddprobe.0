Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A85C26AD3
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 16:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720973423; cv=none; b=aKXSwJ3qkHFXwt0IXtWFLoltODOQ4nkjiTuIOqPlQjmKyhUs4yT5JXo/434y7ZoIadIdfAOT5FLt54tp65NfXpMLWyYsBlNYi3jc3r/HLx7jqEee0JVDyzQAVZSX6NNHT7WqbQ1oXo/A/sczGQp6K5I0BEsRfbPGVq7G8GIwFB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720973423; c=relaxed/simple;
	bh=fclE4JiKxXvmzoU5T4yXc6Y7xlKt6EKmyLCqZm2GS7I=;
	h=To:Subject:From:Message-Id:Date; b=b0YEcbzt6Cs5YCLP6uWftqvk/X3l2VPCcu+Nxx7ExIFVg+eEqPRkAzavk3Kn1WoOJHgikxkBFlqcYdhSLIin0FDQPny56EEWxCteyHaJm25KevxW1K6jFDfeb7IC1NUaswPBl/GrNWEj4z/i2r+wyZyNXqbpdktO6XRTZ9ZzW2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F1pUJAzt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F1pUJAzt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9EB2C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 16:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720973422;
	bh=fclE4JiKxXvmzoU5T4yXc6Y7xlKt6EKmyLCqZm2GS7I=;
	h=To:Subject:From:Date:From;
	b=F1pUJAztaW6kvULn45nH9ckorAL/1mXqSfnu4owJOctbGMfXm8tGTPtZ+KW+cDzqj
	 3T0ARm5+UA7exJV8M70WzX0kyTirRtqnGRr8/2sz3yHasNYIDpUC5wo/bc5MdJdAfY
	 md4YoIm2uOf6IwjlBYMw7pNp162cK7YBnr0VrRnPVNg/0dpMWb5unbE1NWj69Rmqhf
	 JaqV2D1Szv+PC4/2NSIXgSb1I1IXwCGNLjYfpVNZKxIfNU8K1V1+3WXGsOww7Jtxzc
	 f0tnY6A3qewgkSam7IK6VVeOGHlmhkQeINK20Fvy8Hfr1ZpSslw8t3fkto/QI5tYW1
	 C1HojtA1ReJ5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C381AC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 16:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172097342278.24495.3340268629886658744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15a1aabf577da1ebb6beea69e8db43458be3355cf231af7564d4cad20a1116dc
Date: Sun, 14 Jul 2024 16:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720973422
