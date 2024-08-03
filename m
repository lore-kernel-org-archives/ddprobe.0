Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199E9A38
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722654954; cv=none; b=RD9FgDExNVupqUSwtj9hdpmvwjNHnRHb2J/LzSbL98dwclFxJ4qVDRi7YLTJr92QrhEnIEEBiK5EYJQyCue1jXaNU5OdE2DhpkXARKBoEdQnwt5fU9blq3ZBUZ33gRmnUz8HeL392Hg0b6Kf/F+35pD1JReyipI07c4afWLT3vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722654954; c=relaxed/simple;
	bh=MlvfFBm0+BO18gZMLJkEv5k+jHFjFfQjXG3xLv9yaV8=;
	h=To:Subject:From:Message-Id:Date; b=dZtE9xUUj1MKahTDXGfS21e1HG7+JYytIB9lfzD4IYO1U0rkSOzvNsVjuud5dW8rpRBegB5F1i/4yg82nLDAnei1nfmPZkJijIs+8li4TKO2dF0Ps1On1AxkRw1VYUYYKyHqx7iATtS6/I3UPYXs8lNigXh8si7MNHAOf9KMKW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PvDivWHD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PvDivWHD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71D1C32782
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722654953;
	bh=MlvfFBm0+BO18gZMLJkEv5k+jHFjFfQjXG3xLv9yaV8=;
	h=To:Subject:From:Date:From;
	b=PvDivWHDgmXsI6rKtaY4bLzz/gVNhMD7k6thW99gT3tcpE+nvOkGeqTh7LUrBqQ4q
	 VU24+JkR8wbnjoQ0u0Ly5JWmW8RoxHkyiCrW6qHFFOu5caEk9vVL5YuyMd+p/A3nyt
	 zWVJScGhdDiI6RpM2qWVoUV3gSNGc1O18gXXkSmHSswzp4QSToKhNcNYHiPV09StqH
	 md/guSxlLLDHVLh1+hNL62GUl9k4R8PzoHEzOEIwIHCNNFmCvk1STxGmp1Q8jXEyQO
	 pQLHPzSLp4kzjJMgcqeuNhBArNPwlgvNXmbqSi/vjhgXa9+p62PzdThAQDhCFVb54x
	 XgD45saDGzJCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E8FC3DA7F
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172265495359.2605.6594181641035990006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67d9482437a9fcde85e4e1b84343a396a562836c500b4932cb430a6face694da
Date: Sat, 03 Aug 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722654953
