Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D032E88B0
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755177594; cv=none; b=o3fxnHiFUXL+DVCogSCKnSbpWl4PHz5YBNrfGenpvrPjit7UeYhxlJgT1fhXwM9Mz6mboSwhDFeWcPNojWmiOCzYXHUMrr0b+9OfidKy/WmhoNqYQCjpIjNGD0cgzgsGntb6+Oo1KgePM+W1RNhku4iEBs5BjHRX4WMolet8h50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755177594; c=relaxed/simple;
	bh=ll1wQQjRWvk8SqsmbBmSELM5eNKB81KPjk635Z5TcKA=;
	h=To:Subject:From:Message-Id:Date; b=ouK1GfP5vP0eJ5kf5wEk40uVu6ti9c8DKUGisLWtm8BNgfX6vjbkvb+hsxjmz2iH0foNyQDRY+GDcBlWe41KKDP43EO8Aadi4FRnvRuMkHqaHgMl9HflBmCQH1C+WYISxL0ZVYOlkWEEPykNibGX/q5HFQooSFj2tPoQncsexBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DU8UZn/P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DU8UZn/P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A240AC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755177593;
	bh=ll1wQQjRWvk8SqsmbBmSELM5eNKB81KPjk635Z5TcKA=;
	h=To:Subject:From:Date:From;
	b=DU8UZn/PUYE3EIitZdYpPstPjKA/RQMwlmWLuh39TNhr6eTUwIqwM5GRdDkotez4S
	 4cDuYtupIRJoVgKzLhprSlb2RZ4aLPEs1ve/EEao/EnVeyLAzTkJ7M1NMgptFoHUWK
	 KW/qdLwcvNjzITqptdVGtFdmrEke0lkYGBrdxjMregOBzxorUf3DzdFS2yIz18GQRo
	 cWA5Vo27F+BDQ2bPPPDgg29bCvqTI2WrJGKbBwEqDBNGoTRZDAato3RJQp5wYjOoeC
	 KR1Y8OMvj6c0u1APrtPayKnhVUspn+UN583bCVHCkK13PZab6P6CHkCys8EdVz63iS
	 f6S6z4ZytqaTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F466CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175517759357.27144.4220069171507616759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 223a3af56d34dcc836f03a1fcc4c31d5ef0259c93246e0edae98b2568f549ea9
Date: Thu, 14 Aug 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755177593
