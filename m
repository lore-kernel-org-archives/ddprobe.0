Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E187136358
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762158594; cv=none; b=MkdlIpu8C8u5sx/fJiYAEGtyOG+V1x5Dws3vf7YhtwBb47e5fwTg/k3dU9GWTckRi1UcpKL14fwvgKRJ8s+04ApVKxNnOe93GeQxaD3n/O17XC+qXPg1xnGirXvpXnuJoLP7NUBeR9CUGzE6jrdQ2NIq+BfJgCKXJJUVlSz6qJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762158594; c=relaxed/simple;
	bh=qPSZrBpS0W76jK1JpOUs/5n4+YHsIRY0NFW5mBYEJRE=;
	h=To:Subject:From:Message-Id:Date; b=O27EyEbAWglCYC1hjsotryuO7qNNHeyHMHPtihj3fAY2b/aEigJcklI/Zb9qJJwIVleTsIncAcgQYAMlEA1KOy5QcadA+m2rDJOUin4gv4BddtKIqOQuf600xXIg13EeWcN9XE6pu+7jfnxP+MHtR9q11/h7wNnilXxg6L73YMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T6NZG37a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T6NZG37a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6B1C116B1
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762158593;
	bh=qPSZrBpS0W76jK1JpOUs/5n4+YHsIRY0NFW5mBYEJRE=;
	h=To:Subject:From:Date:From;
	b=T6NZG37aPF8KfFML/JEGs3HKF1fgh7VUMDNfSNfQQOCLW4jd5aPTlspbvzkNpyhky
	 p/8VXj6AUExcEESaEUXFLb5ZEMZMWpLqr2Ko3/P3HC0yNYXD+cALMHcyUHr2VW+GHK
	 9BLGH/G9ENG/7EjGDALmjgHxhJX1eX8A/Y8E/K8m67eMznKnt6UtN3W/krGrWvYYEc
	 LEhokXdknT12Npfy+aefjnUbFsC/N8welODWf73CYqQMo+TfO9Ey7dWI3cXKA1Vzz3
	 j0DG6ckvxoRT0qgwy3S/hTS4wIFy4RlV7qsTMCXKSLut6H/ELQmPA+EKdR/2x5izxg
	 evzPowRcF707Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9357DCCFA03
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176215859359.30262.9864794016328673436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7154a01cf86a63ce35ed9229bcc5fe3de5a900dee166a7b61dd05b48ddd677aa
Date: Mon, 03 Nov 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762158593
