Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF7722331C
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753954794; cv=none; b=d+kAb6odBRPE8h+KRxrizO8ebqwn24QaS6g9YThsFzuoo4Th0nV3PiopqS5EuZkM+gNWEc40Krx4GsHKX6toN7cozHtELIlN8Wi41zxgVj+Xe0nEM00W1TVSgiKrHZo5pGWY4bqQAYXp0w4Ae7MWCKetuNfOUKmD9114JSMIcFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753954794; c=relaxed/simple;
	bh=kWyfChVWKi8hOiuGzFnOBhSDypZ7fo+pYkEKvfLPO3s=;
	h=To:Subject:From:Message-Id:Date; b=AkNTXYCZNGj+4fP3kW5bygjPZO1nDSeB9tZS859vq3S+ahy3Mo9zvDobCGTAg0IWlXAczLeYckUjlAF65/vnNU+ywvtuAj9aWbpPa3SNIJ6ZjkXZYmZ8sc8W9qDIYN+GEPWnGC/3nWTsdmtFl/L9Q3kVVqyXAzbZ6jUs3MgY1cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iTgB3fL0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iTgB3fL0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8A7C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753954793;
	bh=kWyfChVWKi8hOiuGzFnOBhSDypZ7fo+pYkEKvfLPO3s=;
	h=To:Subject:From:Date:From;
	b=iTgB3fL00ePeSKiMvJqD4ZNDN3i3W2QHtwpD6WaXPqcGm+rgjWMcyirwe7IKyj2lC
	 KzYfCljB5qWxvE7fkhCXlN1VGE7tYnZraLP7TQt5qtfYPAh/2TlGUmM0mPxN5LQY47
	 jXMGdtHExLN1duXwsABKJQ4oK6uMokJuNDgAog6ndW+4gH8lyPIdF3a4cktd/6FlPG
	 pqOL44HzNJ/OTV8ZSKmKlpT9yhJuZBYsLEUwAqmLAcr1GGixn/T8BpT9zxXSamsGke
	 uRlJpMDvSuoAZYHI6RLz8Je/g5fns8wGa/9S/KbbPQtjFlCzU5s+Nb05Ly4N0aHJxL
	 HPDXqw5FZOemA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F106C87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175395479357.14131.10683007905686795776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f81b98651a388426c7a932e5c9a3aa2912032843678f5c8189d3870a260d4f4a
Date: Thu, 31 Jul 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753954793
