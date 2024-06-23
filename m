Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7000258ADD
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 10:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719137543; cv=none; b=rWxk1Bsq7N1IFuByzc/8tmfqC1tFKhcM7aPWAy1KFggOXCb/8Cp/C/I1QUg9qqTErunWwwx6wLLjOP0di0wvWCkGQ2VJNeopn6wW0L9KKcjy5fj8VptwQ08Jlg5QnjW7+3wU0ssRro2qenvFzUthzbZ+DBjHkU67t01f1XJP+Sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719137543; c=relaxed/simple;
	bh=l5AFKU8XC2iJIgsiNakIUn2XR2l5k+B5zdWfU1OTrDY=;
	h=To:Subject:From:Message-Id:Date; b=VCn/YH+vVBL9sUNJViweU7gioYxGttB3wUfVf9y8SXkHNEtrZpCYcdsqbdFu3CePAOOcIOYplzhUMV8kdDWvykpYl8TcTEz76zNjeWYj6TEEAhj2YQ7d8Ix78w7yfOs7itwSLt3v5HdZObAvTtDjUktS6SOSSme5lxFdD5P+vcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U5eocXpw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U5eocXpw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D987BC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 10:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719137542;
	bh=l5AFKU8XC2iJIgsiNakIUn2XR2l5k+B5zdWfU1OTrDY=;
	h=To:Subject:From:Date:From;
	b=U5eocXpwpc28LlbJkvWG85IB0T5cl+7l7MVyo7xFSdG/t6+J4d3+vO9vhKQXUqBLs
	 V8+/whhRWxk45v9MR+UfYA5LQR8zu5lOP4hnnBZ+UR8eMFfOoUSpZlFhbyBn6nJdDd
	 +/6creXrT25Iyklo6UbiQDWtiM3wtnTX9Jz5Cad5qLMKjZbCRwK9GaTkVHBHTc7v+m
	 j8Kw36l5Oq7u6pP8EwrxSquyzJnufm7Pfjmj3Z2mp4D4F1lbE8+Z/93nZkZteyI9yZ
	 kC4vvsjjlFpHKSz8e26eIvePcPwH0M3l77PhmIgSYmVAr9yB9PWi1akOGsTJHyxite
	 8PbTdKUV8zSzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4CBDC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 10:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171913754279.30763.4578335952070501190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9933861bb72157c2de97c1b8eec142bdcead66f025ee8593e80df621cf0f7498
Date: Sun, 23 Jun 2024 10:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719137542
