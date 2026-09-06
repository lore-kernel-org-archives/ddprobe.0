Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B571A6806
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788712234; cv=none; b=QvXl1Llz6FgxmY36i9sE5gQgln14OlCmkNBlCdHc0GXij608+7lO1NT9cvW9JwDJFlzukHxm4dZAka1BzpKFBTGemJ1dSgZdSfWEvnT3RMxlWnmUegynk4JZu0gB9+ivFRpzwkj9fwoc7k60oK3rtJ2nJ1+P8F+Yh045JuFGiiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788712234; c=relaxed/simple;
	bh=vJmnIEauedTz2IjUXHrerCvZG55Kzf5xuCyb87aNBzk=;
	h=To:Subject:From:Message-Id:Date; b=brmATIx/fXl72h1s+XjMfjJIz3V2WEWe8KKjKLDsBWewcIM/2HBY/2ZGNYQCug9y/bA30z/ZEcCAvBzOExXXeGBst2pxNglXYBOS9QCT5YBffsKFIDRmLyadYSIG2Q950ISIqp/lPA0L3/OlQfU6WidjFGUlWVouRaSZihU8Tc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ghY9V/DH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ghY9V/DH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D901BC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788712233;
	bh=vJmnIEauedTz2IjUXHrerCvZG55Kzf5xuCyb87aNBzk=;
	h=To:Subject:From:Date:From;
	b=ghY9V/DHRIAfpO7pQTaxdOefoR19dFcJIVh5rBWb5FqpAirRmwbpqy6bFNbV2rzQy
	 uzQwqJbpliiDK6xqMuumhL/mEI7EBAM9WMLyFDZuzSXbQw+RacuNBd4HO9vMXWfAA/
	 GIlyo64I4udY/i0+2ooqUnQkxwfwmWpm6vqze6Q6u32ngIvgfPiLIT8gWpQxTiZa/X
	 nmkJBbJK88E39RQG2O89ynD1UNDbaGfYxLWceGEZBVA66lBDLTlO89wpNX+wrfm6s5
	 /3g+Lc0+J2AOX/HQBxwlZS38WLvs0nNjYIWPPvz1vXAjmJkdy72f37HhEyPRMAn15W
	 l+Aovg+ag436g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2499C79F85
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178871223370.3806.11647080809884959138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 736a7a3b5856389bcc1da32adb25f772c714d7aca10dd134914acd7a25a46dbe
Date: Sun, 06 Sep 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788712233
