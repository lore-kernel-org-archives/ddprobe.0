Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2512725484B
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751127594; cv=none; b=Z+mz76XjT/PDwKXaAcjwVWIg4FJ2jp90UgVDATzvSa/VQvpy0zPJ9/X/UmtEOSGWX9rml1KEkbxt58BnZP/+I42JbpxFDYMXIjQ8JU5WM2hoSQGWq0LCJ5njiSXoZKZ4xLLvbS39Keqtg5FNdsaAzeKOExBsM335Y0Ew/2a4r9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751127594; c=relaxed/simple;
	bh=6CN6OL139PRiIx8y4Spi/6ejNezW0T/oC28f4h4HwFg=;
	h=To:Subject:From:Message-Id:Date; b=A/jZFvlJfNWk1G8YSd7gL0kTRhx1LrunBLckuta8gY7h3FtV0061Kyr7sPckiXOdAG9+Zhu52ZptKQX/dM+q7DwLqTei2cfzOnGf/RglPM7/ZkoNowXCApRjooG9Wtn8mkLoYa/USZMuJlAymAC1jT32gH7mMx/Mi9eVLV26K64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOOZUDtG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOOZUDtG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD9DC4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751127593;
	bh=6CN6OL139PRiIx8y4Spi/6ejNezW0T/oC28f4h4HwFg=;
	h=To:Subject:From:Date:From;
	b=MOOZUDtG3i/oKuHmNQ7liV60TAe16f1CYm9/xr4y6LTP2liuM738CZf5EHub470wt
	 L9JUUu5GLSi77nKNqC7EdmBdIr40FhwTFHN5K4MHTHJa5hmIPEqER+b0nTJS9WYa0y
	 ecwO2CaOGxy26B4gvPhPKJe2hlcQQpSix+aP0NqCbGAPfuH8Ezw1EFOerDzgat/n11
	 0ukapvI4/PK0aZg0ojk/xZmZeshocV9OdEan0L3GBTE1Zl+FEMNb80ZuA2bZ+IKO5a
	 FIt5sGlrUCR1r+48SLzVVnjkHuqpDaC66VvmcmFc1STXolm6mw6Gip9HsMEvHrLMYc
	 8tlCsqrZlW6Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FD0C7EE39
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175112759361.5829.8086306169891696746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a58407486475f83445d92d2b35505a6ed2a892a3bebaf13be68626b29bed43e
Date: Sat, 28 Jun 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751127593
