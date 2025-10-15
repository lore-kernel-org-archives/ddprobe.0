Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249501EDA26
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760534394; cv=none; b=YU1BDeEp/HZxfM0PYGIuuOdjBbVkdqPtqWjR+b5/JDdf7xKnPU57GZpxQyc7fTHdrWpREgMc2IjgZKhc0VJUdMy4ovmYa80gmVnAF322rg6fS+D/I927815ple7aKf4S06hbtBhaBOnSwwclPGb+3bmBhUmahyF1qaWPC9JrQPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760534394; c=relaxed/simple;
	bh=1frnzmZoMY7i+fOtJd6DBehTHGG8YTMetfZ7OaDKdSo=;
	h=To:Subject:From:Message-Id:Date; b=fC0OiP97H19P114jLlqQzfMMOCyWlpYL6d3QaCmSwqgpqEtDKg6XiyVG68NDy6vCMG53cnyQfVuohVvjKkA/VJ3F4S1avprYxs7mQEaVG8oBs9ic1+ZHE/QEIvYrnsi8QhSFy9vCygdppiIu4Ih1mdwFskmQdhHaWK0RSVsuQjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qfAC+MnZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qfAC+MnZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28DAC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760534393;
	bh=1frnzmZoMY7i+fOtJd6DBehTHGG8YTMetfZ7OaDKdSo=;
	h=To:Subject:From:Date:From;
	b=qfAC+MnZ9yaOvL91AjK02pSsRRiiO6BC/X6ILdaenUbm+aXGKV413kXvC3H3+f2P+
	 kfPU+shJA8jYxX0ydPP5W1cYADgubwD5dzENZg62k6lcHM5zt4Uht56RLMSqUDSxxb
	 S6R3lUauvU5k0rgT+JMEEaxky1rvcuj1VqX8ZkpPwZyzqmxTbcntzq9lYl5EsQI+Xv
	 BM+ZOv64b2buTf8PDMx2FgVb4oYIs69iF+b7v7MNcHE3k2ieE7ukKUZfKw2ARYF9TL
	 LcoJfTmCoZ5rGB7sx4gznnncyAEWpAXQA/8BveshlxRfTPs2mqn9Wwang6lNX6utpj
	 bkj2Co9oCMuWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCEFCCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176053439358.2267.3547313098581928396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e61281fe6de118447005986c5d23221151e260c606c59b86b3f3917e46a7ae3
Date: Wed, 15 Oct 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760534393
