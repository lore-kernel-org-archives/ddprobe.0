Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A66A2727E0
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760627394; cv=none; b=jn+TeLapqSKf6PLgSvKIADA/wdlATsUKMPABJINRl/Ali/GqAWhPdvjBhHeofMTXjMbbY6/hy3+fro6j/gKhXF1/c7dPyBMVa5JfHiW999z6omZPzPkwCGs6Xb9CKNS1+B6UJdYh4DKyMmpaC272eC0GUTFNCdQjmcJXkut/LhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760627394; c=relaxed/simple;
	bh=l03xKCA7upCckYaMr27G9JHRfyGSyFz+YzxSjnHulZs=;
	h=To:Subject:From:Message-Id:Date; b=l0FvhgQhAJ6wyqWruF71AvgcpkHWk2ZRCwe3yhp5LKh6wLRLRN9zQETbaA6Ng0uiW2xpUSDt4aSyiu3dGMkX3KRcZzaXZrLq+h26n3egg3PcdNKc4o2we9hNMg5hRAEQYYfpwLd8sNMtjvC2Xe9TsPP5rV72G0dksJsDFjKDcDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=avLQLU+T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="avLQLU+T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3AFC4CEFE
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760627393;
	bh=l03xKCA7upCckYaMr27G9JHRfyGSyFz+YzxSjnHulZs=;
	h=To:Subject:From:Date:From;
	b=avLQLU+TpNQhDEA4Nij5AdtrRc2wnTqA6T2lrfzdGkd4eXH8yMpE0mh7eW9uxwFOf
	 KpiHE3NFX0Ivv3MU1oXbuPMulVrxMGR+d3ZtV6wEB5cnLuUZe5GTUbK5Hjs4CxFcM9
	 QA9jOrvDdIj6jU1oRR93n8eKM9rQf+Xc+Cq/C58VCVOpNoo8wIEOk2ROeZYBHPzKBh
	 tGvqhnxwdms9PZNLN91QfOJsEdwgaVp0e/q7PW3FZxSLKYwI1YkGBrys1BcquVqRX0
	 ZP53NX93O+JoS0xFNvOSx6bK+YSXPGfETbUJR12UnalFE+V6H7VQZaYscNygTNw3c2
	 Pu/V2J9T5BTnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD65CCD195
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176062739358.32150.13345578854682818173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a5f47604dfaa8b025fc3c7adcd6afd093081e6869c7ca681cdfbe358ca4968a
Date: Thu, 16 Oct 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760627393
