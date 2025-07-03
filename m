Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADE4225D6
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751522394; cv=none; b=WfXbKTw2k9z4fqIm2eS/RJ+QWTmWstDfFENl4fGj1bSnfICLjeknWB8HW2sl3HguJn+fFXVxJZ/6tF5/TFuTBugF/bJnCyUqq177BkUIBaUcfPPehWqZo+XeCvtfqj278I/Kj8pfF5XMtKWCULS2f8w6fZrUu8ZRUJkshgApAGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751522394; c=relaxed/simple;
	bh=pncYaMVG4UTSP1ERTY0rMEc0MSW4I5wG2hR7LzyACUE=;
	h=To:Subject:From:Message-Id:Date; b=AARqC7E3PU2/Dl2poND7iFGmgeaiSnF8rN1ohoOsZfGDk2cAS7dHgeA0w92IvI4cminKyOyOGETgH71wJaPBUKz+jzNzKzhV1NBhhtfWxLgRfcxrIk2V+KrZq/GVznifk6HkLfpgY+yzTh/i2/9uJ6j2nTsB9E9CxeEK7az/huI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NRZkrXl4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NRZkrXl4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FF4C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751522393;
	bh=pncYaMVG4UTSP1ERTY0rMEc0MSW4I5wG2hR7LzyACUE=;
	h=To:Subject:From:Date:From;
	b=NRZkrXl4w1b0FhzgCsBVje6j5HctpF9omw7VFLXd2pN7dS58jlFmdhs+WKiVPKwIQ
	 dvXaspf/KdYLjqzHdrjA1EkMgoGP44BIBLq2Z+LP+roAI0SuuIZZvP+hzoOGuOb/lM
	 Ei+adg6Y6BvRfVB6ZQzlzyM4h+D6jFhZPrMLxyCR/ol5/wcBExTyeqanLUc2cGL4x4
	 nJgP4FUZiUo0kmURpkakaDcjD6XXnqyzYOFfnoqcQQkqeDPwcASEJECrdRhJRyW30i
	 D75Kfsjja2KtL5PunfOT0v63fETHNi5AsHltWxrtNNYZh6CjxyR/zhbUMNEY1qduEE
	 KUPG0R+NuwZyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9124FC77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175152239357.31006.11614232680662595340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9789b46d6040ee88064848cf555a9522b2901d8dbd43a3c0f6f2806d9b6ab597
Date: Thu, 03 Jul 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751522393
