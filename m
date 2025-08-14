Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211D5341AA
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755145794; cv=none; b=HPrISLYJhSwwSxlx11UHjAAyXNRlt6yGo1KWlY8016KM+Cs3b7FzHN1l4z9pGpjd7B8Njtop9pKS5ORw1gOX9lIdbbXCDwZQEmJoNKJ/1HcgEw8Q5zxXKbHfaBdD/diMh0aiF6j3Ogn/m+/dEwFwAWowQnCJBugjkoLtrDC7kX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755145794; c=relaxed/simple;
	bh=4fA5l2LoAn59L/7xa7YB/eof9AZNZzbiZpLs0bftf0E=;
	h=To:Subject:From:Message-Id:Date; b=dZBbzMr6aJ6t9hT0nfwX5jQhQwKjwfmstr55azZV6+ShnnLS+PrDcyn3TYRDYyeOZiYkA4/N8UgSRLtlAFu1bXKQsLxxgJbcznfCYXuPgtMLLbMvfCDeO+H2zAr3rVN6xAQzwtUHRiPVOyuKw3QAFXpipriefz7FWXLTPtqPlcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=En3CkDrD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="En3CkDrD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E276C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755145793;
	bh=4fA5l2LoAn59L/7xa7YB/eof9AZNZzbiZpLs0bftf0E=;
	h=To:Subject:From:Date:From;
	b=En3CkDrDrVUkys3hFVJuSsoTE4hexUvu/3aLpA4M+9uuKHTDTDW9+Xq9mup7NOOzE
	 Da3CzTQCgp2h95/5R50KHmITcezgdw7QLcTuFO8xrLegzIXCOKHG+tVM3wWN7nz5qM
	 b6o1JuPlZDvNhzN6UfGsbGd68eeq0jucpYna2l85X+BuneSbR4TwyzdrQM1KQstXk6
	 9iAR5HOfGVBn2bMIrRFHYcRx+zkOG7cK0QBOXvswxkYUn60QrTYvIBNfCVflldjCmx
	 RUulmyHik1hBxXL5FSvDFi9aT1T95pijB9qkDddSU4Q0TnZ5Pa9WfvYKY/dUhx4vsS
	 i6Yl9DjCPDInQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3D6CA0ED1
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175514579357.15241.870737323111527319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b36ecf04c8360e14caa36006cc0dba7c433c8a573caf425f63a8e6eb3193ba3
Date: Thu, 14 Aug 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755145793
