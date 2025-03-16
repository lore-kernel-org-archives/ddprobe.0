Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA5720E6
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742086194; cv=none; b=i21IJbXFbMmrJucQhcF+90NbTIBv/h8vHk+/023vb0ghGSTfb5iXw63zYE2r9ZlewYKumLt5XhI6QTjbgqO6t97iNl84IhKlgXp9rQ/X19k/eYQ3AGa90hjvRPnMvxG/Q7Y5tBoPqeeih6G3FT+sIIr+o8dqr8NVaxogYPfk9hY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742086194; c=relaxed/simple;
	bh=AbWlNg5eNDWL7h2cv7JgvaPk8gXbqqFDg98RbE6mykE=;
	h=To:Subject:From:Message-Id:Date; b=nqD3TKK2ofsPNl5nXgmOD/L0kJMuUCb8v5oJcw3JfS+yZMiVlD7S3Q5XFcJJWqZawKSRrueCxQiXwbFoTbJsUXq3gpY4K109lH2Ha1XSj3IrQ6+b/eOh7vnYTRVF6eQ+BkRbyFGMqGrgm71VotJ3hL3GtpwA27uGKKMNvf1qWso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gMRV13TU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gMRV13TU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE78EC4CEE5
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742086193;
	bh=AbWlNg5eNDWL7h2cv7JgvaPk8gXbqqFDg98RbE6mykE=;
	h=To:Subject:From:Date:From;
	b=gMRV13TU7xtPitC9Wz95gmLLhg1Ne8Ey3Nu+NupvVjA9T/PZ2Xl1Vt8zpXmev45IN
	 I5Lu7cKkTJhq18rhMnsO1/KRHFtGIQkACT6g+yyA+YOj01k9JKsldZkf7VOq0p6/vE
	 oXlQyN8sioV3B6jRaIl/W2OgcF9oBUl2tlYHuNY28vLrktqbT5RwcGVAUika4KxPGB
	 xdJQLJt7N3NKk7HOLw89pwgjPOqDkZXlp5SOyy1FVUWhKdCQrqqWsfE0GwehpohB6o
	 N/C8EzUVScBe38TgZjSv/+6yHReqHPwmKlmLmcBHo9H799ovmRGpib0VAUi22gY9wN
	 LAJdn4ra8NqNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A38FAC28B28
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174208619361.14461.8999704407610482420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e860b8b4d998c410e04b380b108b59995f333c194c0fea967df527e426bb2a22
Date: Sun, 16 Mar 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742086193
