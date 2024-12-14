Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325042033A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734196554; cv=none; b=RHYTevzxFJCLReNYF9nb7IMI9Aokv8NbXV8PEO7qFnDQVmT9qCEBw8HkwcbUBmagpCAohN2Ieh5pJdjrUTgrkG4u7cN5XYdkpq1ar8uU9pK67dXD/WLxnYq+mfdUjjmKZpBm5fJWoQNMlTXiup2pa03GKkbTY2Smm72ANFWbeuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734196554; c=relaxed/simple;
	bh=uvD8Cu0D7fn92Rh3D6I82oPlAe7nOuK5/jzOAKWZ2Os=;
	h=To:Subject:From:Message-Id:Date; b=NB3ythChbIfd8K6YJRUN4JmV9MCWx0Ez+TvJntdq9TzOOpUB95s4HgHJEQ6po/gfMp55t8+hO5UX1nCOfrLRDjalAwP8qeZigwaNugbIjosf4QaQUzYulTkOsD6kv2kBFT+vS8oS/h4dmY49citCRYG2VNrh6M48Bchc5mq4BvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=URdghQIk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="URdghQIk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93B4C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734196553;
	bh=uvD8Cu0D7fn92Rh3D6I82oPlAe7nOuK5/jzOAKWZ2Os=;
	h=To:Subject:From:Date:From;
	b=URdghQIkTmVVNCtdhtGwbeeUglW0iO1OQ0q/sp8mJKbrTxzjmEcBz8d5dyoC+zzLZ
	 cdDYg3ERI/igQePbwfP+lT2KYr/2fOVyGj5NqNlalCw63rwDxISLYxQ6TgSvK8+paC
	 7KTaiN/pmf5WBoAiCK1UclbAjRUf5AiDCbGNo7wcyGNBZBibiR+5RXpQwzJUEO3IRE
	 Eyh92FajPDM4mjnjXfWzcd/JVDN9nt/D1Xu4zNtbPsVap6tukx1E5YvYN0XdY+y7uO
	 LwaXVG152ooB+z5aVZifvFbbV2hr07FNwVZbcBBK/FNAFm0gNkNoYVGnj+lT9ZGEQ/
	 nmfbu3ePyPHMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A0BE7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173419655358.28812.9566923227301605556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1327c058293c49a22859db72558981485bc3f9a92d6efb08338667c96d661f6a
Date: Sat, 14 Dec 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734196553
