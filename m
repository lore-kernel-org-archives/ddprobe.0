Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D93919995E
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752266994; cv=none; b=TNyc1ORkseOZfgy0ynqp9Rm13e356qGZHdiUPOmLNBwvJUpC8gAdnBIFyqmj5/SYoKyBLgZPUc6EAWpWlSwKtWX6P189elTHWWSIx4ygxrdIEPh9JR5eg/KS8azSDlacf0jTx7QRReZTUflnqnWeNVwy+4XajgVVHzmExqGJj1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752266994; c=relaxed/simple;
	bh=fhFXHvxyp5lTL6fHsQ1LwSmBMFTdKhbR0iWnLW93G3c=;
	h=To:Subject:From:Message-Id:Date; b=j7e0phYbKXZZf9b6KD+UAFb7dRaax40QzSjV6zKcyVEcaONOm4Wh574YEGEIIAPmDiZMRzEYV+PO8MyR45DjKl79mtR270JcB2fczSLc5eD/uWRCPp9+Xhte4rkyBFC3/LHcIv0/aK8X1oiOtLQeja1ijqlxogSVfN9oFpXGkUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pdeEieAX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pdeEieAX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2673C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752266993;
	bh=fhFXHvxyp5lTL6fHsQ1LwSmBMFTdKhbR0iWnLW93G3c=;
	h=To:Subject:From:Date:From;
	b=pdeEieAXNEXGZPIBZfLcLEi4cYCXNUaasamJ/TAVeNCEymrQ/i3funZ2CM56SoZ7i
	 k3e1PhKqxqOELQxA1wVwyBX0JjhVYqh6y8Ek6t1o3IdXbwA8l8uE4jw7bXB4dfpm1h
	 oBueic7VnPDLTxy9qUKSnU07jgCRb/4FzKs+4KD4zTGz4LwzJSOgDtCfRVSAhG9N3j
	 5G8cRqgCVYAK9SluDfD/uvOGUWfVHe382QqAs3rwglcEDQZ1/zbnm0h2aVpymrrvwj
	 cVIp2SDbyvfgxJtaChIpxfBxRbSpYn63ZzLL9hYcKC1DUnn7sNqyWKIBu9oUjmZ99w
	 mPtRKAiZts3HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F3CC83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175226699358.17037.83349755152842831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0169c706ba9a6d18b26320ad0e0856846b7b44a0d442b0dbd42fbcf9d52073d
Date: Fri, 11 Jul 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752266993
