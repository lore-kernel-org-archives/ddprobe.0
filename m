Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93BA125E464
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 19:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739214354; cv=none; b=Y4ftj8JPJKZem2oNWjaKB8N5+UymNAbCzwdTccfN8GBu6YYW44NkLYRkFPzSws4HphWyWjjGn/Ep0K01+Jxl1hvCVgiCqcaf0fT3f/Od5+QRHX66uvCa63X4gClyMdxzjIk80hRnj707UkPGDqNvUQGaEvci/e6nIuAj+LpqMxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739214354; c=relaxed/simple;
	bh=lE9QSsJuGcMOUGSYs33z+0nTFCif8DkHPQ5JZlOIm6A=;
	h=To:Subject:From:Message-Id:Date; b=VsaPZdW+ZvIMlZ86ccX7ls3RyOUgHpfb1yT9o9E7UgWI9gQnzqBpVRefeBXF8nfajhgSoIoyTrJJOfcrLbjxDJwKw5bxcQs+DvYJL3OlNvuw/emUrL1Pnr6kGgXGCa6dbmaq+C+rz3+xme/ztn2KoC6MIiG1fnlQRISJG06OCJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uFyJZmpn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uFyJZmpn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09A35C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 19:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739214354;
	bh=lE9QSsJuGcMOUGSYs33z+0nTFCif8DkHPQ5JZlOIm6A=;
	h=To:Subject:From:Date:From;
	b=uFyJZmpnVIbbcmNNUs6gmD1x4chbRat4hLDUEk/Lcpr1tIjJ/oevj9zmRw3cA3Dz5
	 Zz2De0QNtlfiqhO4rmqxbCLfCS5HXhsMJN+MugvLRkynp7vVG5w8lXufCfAyLvu2xE
	 TUJi71ywdb4N5Y1jtsLjS+w54q/65NmOQekcMP8VzyPj4tCvVrI1v1U31Xu5Owomkq
	 cVTgzXjLukDkmmYJ6QVcg+E7wiLBeO/+afG8ArT+GwSIXuZc7RC0xob19IZzf9b+4/
	 ufUU/Jo7nwDLyMYuxr8lW5ZuvzdsrGjSaPIJqN+R4mJqly8pbMuMUSu1EmAIyL3B9T
	 9Ub+Yq1My7HcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCDEEC02198
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173921435374.26478.15756665315008684094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d298da7de8f24d84dcd22fce958682e95bc934726e599507c0fa8fec9fc7f70
Date: Mon, 10 Feb 2025 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739214353
