Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354122BE656
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751484594; cv=none; b=C9fT8I6My7cYu1GZ9ct29zQxpTHDQiz+fTj+FyaKdkJIEUlDsBEWEp+5F4fEEnrEDaqBnWtH8GEyVEK7xSDbcwTeo2S7Y3wyWiFhK5Ti6UsWHnib9tERcGcVVm3KzXdkzrc5Y8NjLtD+3YCfhGwlcIS2wedza/ku/OANhMoA8HA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751484594; c=relaxed/simple;
	bh=PlVGczo9ICu/ugIwqhrcDnz2AL8wXIA7h/B++LH6Y3I=;
	h=To:Subject:From:Message-Id:Date; b=Hzn8YuVQzQFBISjecpcr731O3yLMHQtIpHy4TcVk+4wHLtpZrGfvA2KWvSBUENDoTpPksvA6XohfRyo0bkcLgGM0C+G0IHqQ/eaijwLpCQjei7wDCTU0JXgX05TpjDwLGjGtED3khL2CAzy8iX1qMDOzk4fsQ9wAmhdFmQCYvkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1dLvi+a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1dLvi+a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17EEC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751484593;
	bh=PlVGczo9ICu/ugIwqhrcDnz2AL8wXIA7h/B++LH6Y3I=;
	h=To:Subject:From:Date:From;
	b=g1dLvi+aXausvF9dJX3PUfaGos7so/MPpTXscO6EPK+3pCRGb9AA9Y5zdIqXz/Gob
	 bGuHL9kXfzF2rzM/O7FgXkzCvJLuC6VvgwbN0rjwZyyU+5OJb3lqfEikjup4GjLYip
	 et9iNmOhsFznnfekmZgINALaGe0pcwETn/5x+O1G7Qqhb9kl/pJyKk9bPqqxMLIBCO
	 PKboWg6MkwPt58Rg2llfrzsaLRjkLvIyRIGdDHhPVhqZqrMNGhxDvp2le83YW4xFQM
	 QYbJPETKR6cQvT1inU4v0znq0Ysvs+ERG7V30HWpqv2tqC9xw/OwNz76lc3R4d9dpe
	 r3A6QDZUTXrvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5B0C83038
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175148459357.1671.232510765174984682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 218379864fd27b9c2653eee35a0801d4be8c6f509d1e11aefe162db075ac0813
Date: Wed, 02 Jul 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751484593
