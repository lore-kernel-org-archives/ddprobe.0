Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2CE25F98A
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766921034; cv=none; b=mD6HbfQ0NS+73piLlKPWcFVRqnu+aQbpbXWLXFI0Vs+BSPHS8XYtk9UBxdN93EjuxCIzrLHmbrqUnDA3nE1bTdqaDNJZqF22l2qLMoE/SlUcCmyxwdDM4iPEVUxIs0LlE0sY91AUifTArXKpE2q3kSmzfBqBtz0P2qNDjCLRWkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766921034; c=relaxed/simple;
	bh=y9Gyk+wLkPzI0D3xV0cKUbAQS+P62gA89NumDA9qdk4=;
	h=To:Subject:From:Message-Id:Date; b=O0duvLlBj73/CFWE760XiAcd1z7H5dlckVAydL173+cK3GTFXG05y/4CB9DN3mydRGpqwwMQj8Dq0wXSyYaEiQc24u0MMY2PYAGG+U+PBXOYgkwfwYqjSZoX88vQPX5sfQLmuuTVq3rsZnyrmQNAarqK7LdyWGMA2GHOc0Q7w9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a2IfHf7b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a2IfHf7b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3A8C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766921033;
	bh=y9Gyk+wLkPzI0D3xV0cKUbAQS+P62gA89NumDA9qdk4=;
	h=To:Subject:From:Date:From;
	b=a2IfHf7bbp/+74g0SP55SJSreVs9HmL12Mm1nNv34SpZO0N5y5NKCzTYGeLWrEwiJ
	 gDsXZ59Lyslh56G423OLnFGMDFOFkgx1uX+rVBzLfjThlxnEPVQZ00FyU3BbuHK7I2
	 u/7sK0eCTnNenqN9g0SGwzaCx2yiuOWoxdWxz5qqZls9YkRbuKn14AxxaoBTlK0ud8
	 dMCWYd2uk3bYcGo6XA1Pb1rcMLznXvXzFCts/bLRuGiw4FBkh7PqAGfHmT0HMbBGjx
	 k5RmmT1y8a5BAn242Q10Ktsjd1U7GdLy1MHgvGxGRF2AcIqpga3eQsVRNjled6UQzs
	 XyqKVIcmbNhJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955A6D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176692103360.18020.4665576348864667652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c9dd45e5050641bc745e6c61091b15ee993aea969e9b2bd9578a2dced6a6e02
Date: Sun, 28 Dec 2025 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766921033
