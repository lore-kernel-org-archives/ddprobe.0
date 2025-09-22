Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19DB226AEC
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758527994; cv=none; b=lxRybc+TP6t82sGIwCOpWv9QuYTIq9+CTJ74Q/oY3nu3TrWAyhfI0PSoUIktRhakU5DNuqEVUzbQyH97Ng/Kzw0F4Rm/OruIHa0KyE86LnugNJRMegtj+P/7e2OuBp8onUi2nOZJgWiR7N1nCezFQ0d+x1HoCOtqdqbNpKEt+Ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758527994; c=relaxed/simple;
	bh=vSzm35pUi0FfjLod3BB0QLmaCNlizVVEX2giC6ZIcF4=;
	h=To:Subject:From:Message-Id:Date; b=sKhiTvtP4fwaQFyoTwCA0jFim48Z5MPKnOjZKFqu5xHsGFEvfmlMQ2+ljie0iPuUChibfPm1EdX2nNQ34pwUUaQehRN5T5OHR4y8+3KEECcI+TuFaMAwWIsaluoqdb6tghVBgIwJhYECgtHBmFcMn+mkQ6OoyIbZvcJ/4RM6QYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E2hTJP5d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E2hTJP5d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1718C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758527993;
	bh=vSzm35pUi0FfjLod3BB0QLmaCNlizVVEX2giC6ZIcF4=;
	h=To:Subject:From:Date:From;
	b=E2hTJP5dD27wytcT/EuxQ4UUMlHVOxW8cAcNbGAhsbHY8V2o5zB2Ee8VuIK8CtuMO
	 ORBT4ynX0FADHnATUbzfuLT9wYdYpa4UPdQBF7coSaP+uDKYsplntUnCgbEcN0r/me
	 U5tOfC83dyROqjYVmkfLlZA5lQk861Nxpm6zJU7q9VeBghCNWOa6VrcN0/lc2gzMRd
	 Ee8ZAAlEL/oim9CvbVpr6EYzNNUNIg7etu9zF8p/Ut9ssr2YHzkztDIXz+zQisQwts
	 4n8WJYzv6hI7UcKxD9nfmwXcTsFm4TuqarJbiD0Jir1fWFl4ZWw7VJmps4iKMSoSRs
	 uX+AZSQRh55uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904E5CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175852799358.24885.16093705799688951763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85ade30d8ca09e2ef753d6c3feadf52929592e94c69a87b788f34f016d7085ba
Date: Mon, 22 Sep 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758527993
