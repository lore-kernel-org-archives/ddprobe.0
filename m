Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5296B3BED4A
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 21:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784325514; cv=none; b=szpZoaV1/xsji2kU6MOqe20uEEo0R3NixKUqGq/rzaiJJIyagCEDtf2wKPgb2IzAdPi+UASYUa4fVUKNfIjYzkO2oPj3LonEiW4uhOt1jMlgzSH3iL5Bkqjn28/C7RyIqMcR8sJDVGB6UgL9Sm4QX9oFp2E56nlWSgRJ8XkB+n4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784325514; c=relaxed/simple;
	bh=H9hgG6Q7KjSom2b5LpjSnIWOLiMK6ggE+55+NVoBt6E=;
	h=To:Subject:From:Message-Id:Date; b=IrcuvU7n0V6kBRlQkdH0eGKBQzbcj5y6BKvi4G6yEeU38zcn6kX7nLsdaAQ3HTJ50fbHhoxO4XQEvHecB9/53HoioOql8vrYr+LgXsEhJCuuAr9/kBDbZ+tek3YC1JvJcrgsR/2JVjafQBZvJCCHFXEy4KqyOdxPsaxeMex2nto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oaCRYtVk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oaCRYtVk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E0BC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 21:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784325513;
	bh=H9hgG6Q7KjSom2b5LpjSnIWOLiMK6ggE+55+NVoBt6E=;
	h=To:Subject:From:Date:From;
	b=oaCRYtVkkhyUQDKM2xReFCgCPhxyqz7B/0Ehy465DJnjlAUMw1T/IcmDMVoDR+Bit
	 WUhzn+wi8z0tskaQrKMNO7SGKY1rdIn7bVF4A4aSVP3GrIOI+9S31e2RXvR/VuTc4E
	 mgici/JrrZqGfbVHMWftDhESNT5QcSGLBFBmw/C9vdLTGZXfHxOklf+ZvgcqGYRTpr
	 Wx6SGKwQnm2MZe1hcqb5IO1aUwe+kNzuAP+vA8NDiafc0JrD1cWmCZjf5tFxkbrpg7
	 QMBHSFWWiuLscf7Ig3x+dDgAb+XHf7TK2LU/96oFXTqfv4rYhl467Whff9hAYwisJB
	 +KuQCTUkQzlbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAFFC4451B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 21:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178432551368.1522.17665020053995009047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67b617bde136811d8a0a3751f9333f3bf20432b641c4c82f5cc60282ee72cd85
Date: Fri, 17 Jul 2026 21:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784325513
