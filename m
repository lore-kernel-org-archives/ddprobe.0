Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F389191F9F
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723197354; cv=none; b=tlk1365ovC8aBLOvaf/YBlhC19O4P6KUQDwwDXaDqStJACwcTwBIt7dTt8HUqXvhhH8iwjyqXcaG1zAp4N0yGgIoI4JsEzqJ7sfBjPXfrgQDlhFF6UfY7zn2SoMEmjB0LnHZyOXPygJzbHNzVWIplHHH8/Tdo7y7Epb3VMBYvmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723197354; c=relaxed/simple;
	bh=7vEYkIqMVvqy/QHsz74qJnKHWJDv2442YNfhOOlGkTA=;
	h=To:Subject:From:Message-Id:Date; b=L2ms3LWjiVQF4freukyXx60q2mtl7VjlEzb5ufYiJqgYm3srzJABcahly13oJ13eNFTi9HFBZ5Xfqye/90oaif5OpqO1bTpjPfvs+5WPYdzqpCGQAK3e9QuZwZ4CalZGRUhQ7dQNVMICsp9fQtFlLuxKb8m9Of+oOLWmK8dYlsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NiZsrZ4C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NiZsrZ4C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2B7C32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723197353;
	bh=7vEYkIqMVvqy/QHsz74qJnKHWJDv2442YNfhOOlGkTA=;
	h=To:Subject:From:Date:From;
	b=NiZsrZ4C/y+Eugvg862q03CoVsfWDsNz/jZsrKkJbd+c5zkCUsDnPS+wtu8YvXAWv
	 qZZ3R++u9+JVwB44tu6T+Py7m3Q7KZlW4fqtj+Jf8CWB8jgGDBf8axgq7emwvw39NW
	 qitmPWqwCTZ8sbJjgzw/f4RLNMI34o4nL3XNo9leA9PZ/cxqea3on6654KyWeRHzmI
	 UTvUWBhfQk2ApPx7g0HtihXug5nXTFP+FklS/83fLoCjhfap2brVxuzVhtYtSA32GD
	 Shwo1SSYGqtgOWSRAAYU+ypbh1Djm3U73+ASQmryiYdYaFc5ly6j1UwYVsEKIBzdaR
	 bCvguou5WQ1/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937C3C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172319735359.14858.6274331915258614071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80fde131c476d5f8e0dfcbaefbb89e8c1209a0a335c6328ae98ba8804a9fa16c
Date: Fri, 09 Aug 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723197353
