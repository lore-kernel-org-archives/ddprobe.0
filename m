Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF72145B11
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 07:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720166123; cv=none; b=gB9uMeGbegnrh8AgDZ/+1zTBR2ruhzNtTj5xFZOoGUT957GWaUvEKk3wn43l1JkXKIpUnFm0iI/wOxowaBuShCzJkktWcjQRIArqHXgONd7C9r3W6ddLiIzjDhvBIPfI8hqkASg8JgsHd3cazQ085V43f6BNitvIw/MDlMsNWgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720166123; c=relaxed/simple;
	bh=D8vMpPfFGFO4ieWh/USixebwr9ocCSsbasXWlEMNN2g=;
	h=To:Subject:From:Message-Id:Date; b=gButPNoaMqb5WItR8/7A/ZuLvsZINn9CGX1xWYGW+l6FOkVSjfedIa86fOqYruMs8ycark39wG+CYPFTzmLGu3mBDyjT+LqFq7Ih2+CKGgtyCT7SAtJyZTsYqd34cYWwx50dY8kWBbI9GUWmj14iYcCYv5wua9wJ/EeWUghMaVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qKks9/L3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qKks9/L3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4CF6C4AF07
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 07:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720166122;
	bh=D8vMpPfFGFO4ieWh/USixebwr9ocCSsbasXWlEMNN2g=;
	h=To:Subject:From:Date:From;
	b=qKks9/L3xfwinN0jIskcgbV2VIkh9KZLMLbjO3HnsbC2xIjRH/AQc02Ewl0+8Q+sj
	 FMnb1KgwxuR+WKdvjKYs5QVlCAHJv8BF6VQ7+IAeN7fjLOfd2E1eASO1lm2LPLdLIa
	 P4MnyCojIbn1OmnxRPW0q8huhZlk5sN8aM4SqCZQO8nAGVJCf/gyu/jnElKu2PgcbU
	 frf/R8nPRbfFLePm6lfdyqLmYlTDDYMRHCeSh8oE0orylEETt32HG+3L5BBdOB3VQl
	 rH7rPkrC+Wels+NnGmsYfa+TRQvgOGqu2ag3FCUlprmmTdUHrLtUlI92k27/y6MJK8
	 Wp1UfAbYx1TEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD58BC30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 07:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172016612276.20462.15839812169877662034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f46a3c5ea633e09dfd04b108cac91af07feb40c15a1325d473daccebfa31d15b
Date: Fri, 05 Jul 2024 07:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720166122
