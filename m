Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D242BE04B
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756872594; cv=none; b=YaN6l1OZ3qe6kKY0/9nq95qwb4JIIR3lkhDM2gL/pdY2LhnU3KB2jCeFfFP4iiSq5QFkZnjh6d8jROCjOpe6hDCHnwsGje9isMasmKArJDj3OhP4W0Domv1HxVU9b6SiZUB03NEdi+/qO5Xy1SHHdQLeIFk7BaSJRzngdON3az8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756872594; c=relaxed/simple;
	bh=P+vgCXJXWWOMtF/8iEQRaulq2vnRzvK4JPq3uMvQnis=;
	h=To:Subject:From:Message-Id:Date; b=aaZdjt8JsHXKUxkChA0RcuHrfl+syxUscVdrnfVlJRojcKOa/h3xtwouiI6nFOM5nSyjXIg0XmuBx91geJnzjPASbVvsnULLd/FeW7pS8bNi6+7GnMchJNkRnR9fYbeurTj28+4ccnODcfT9aDn3qInUWMiJXZwriPisEqo5U+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qCH0RF//; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qCH0RF//"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1423C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756872593;
	bh=P+vgCXJXWWOMtF/8iEQRaulq2vnRzvK4JPq3uMvQnis=;
	h=To:Subject:From:Date:From;
	b=qCH0RF//bpXs/VE+hK75T6Vp++MNcMDI2/WJhoBhPN3MwOgRYkS3sy4jwyLZ/o3y2
	 sXAjECbbq6ounlFldtkKL+tYsmV9pJuRRChjuvLh9/r+VnOrtivVc/VNgK1n9jHJiV
	 KJtWQLXyFYe0DfEYUVlAHIJrmNaPnMAfFtn/Sb463KjxuEyoWPgVgiRPcB2j+6zt6C
	 6HF8pYc6zN77XMWicsbEfsVnsg02tNv4vU6hWTk76I2DSmsQJiPOyqYcBd7q9v0adR
	 lXNXyouQKP3pH7mvnklQuvUZF4P5FhL0e5VpF47x5ko8Ir4zii0Shof7CkEN0sKuae
	 l8NLWKAlI1fnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6FBCA0FF2
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175687259358.31461.8877596348403734920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a3c6f033278c4aa5a4bf7ff92aa7278456573a54e05cd48a8d4199de86aa4fe
Date: Wed, 03 Sep 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756872593
