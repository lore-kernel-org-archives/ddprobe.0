Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D2004D9563
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792054234; cv=none; b=jKXLFFAQb1MUaD3pzXhqtJ62oQFljFk0S5fHtBLdErZxaTJ/GQdWxLhurx8twxTTfpahXtydDovXa7vUi2i2ig6gWdr8tdquQrsTDNEO+OleDq0v51/wkubnFD73KnvB3w2hky03jBJrVwMMDfrm0XMuzphOsEsqJoPcu5OYVko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792054234; c=relaxed/simple;
	bh=/DeL2yda56GQOGZ05zyP+/ZTf3JCU1oH0jP+9++rQV8=;
	h=To:Subject:From:Message-Id:Date; b=fD4qIlp+eJWqyZeih2LO7d25QFu6LANBXxol7DeveW8HgNzq++pOtPqtg4Ga9IrSyjtnGJLldBxFOaytdbF5XVSpM9i0JRJzjHaLBcGI/8DhpmyMxMOvbQ5ySNIbj4KS9y48lKtJAdC1/VStoBB2KLj6b84g299L1JGGbF+NzI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KjPrA9+C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KjPrA9+C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C13EAC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792054233;
	bh=/DeL2yda56GQOGZ05zyP+/ZTf3JCU1oH0jP+9++rQV8=;
	h=To:Subject:From:Date:From;
	b=KjPrA9+CIMU3mp8PT1Pa1yA6mrnhOXp6k2gua2HpqTM/DWYy1i+27O3YaNEFb4inR
	 EHdbjGVYS8R/Kz2dV3x02pZjwZFDmnZskNXYWEkc7QLic5Mo/Pt0QyazpnfMbh03U2
	 NAEmcsGCmC/qaVN+PnhY07bI0dZ9x6I+VxjhB7dTRZ2TB0HdNd3xlTTgjtm2oxpw2n
	 eHOvpqZMbp4KL5yEGCm2uDnYUJ1zqUfDQrj1Zx0zWVB81UPbbzgV/4YwNwkCsSOeFk
	 dv9iCULhBjnoxT2NpAQ/mgo+xneMO98b5YW9JRjkG8E/sPXvjHnRFvKks5HSjsmmxB
	 kuaWcbAq6keSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9821CC6B34
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179205423368.14954.6547772469779114076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf93f2a6e7a1350eeccbad2e9f5437109edb72444140eb23bad2397dc68a0eb6
Date: Thu, 15 Oct 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792054233
