Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CAF1E7C27
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752013794; cv=none; b=cLqos+0An5fMZ5vuMHWIxWadBAvoU2tUA4WyrzsZaXxL7q4FqvryE+HKtzSGugghFC/NuDaxYyZD5sSTldOnw2jcvMeMmhHoi0vrPbDT7/GO2haLNkrM/CmDlOHAO8QekoiCMzbHT44mZUgkZpnHzUJvJchUQSjAw5WDCHn/Hk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752013794; c=relaxed/simple;
	bh=fPlNSps6pCAnfgde37Jr7tX7+qu3Uk571GOLrDRc4Po=;
	h=To:Subject:From:Message-Id:Date; b=W1IANKYsrIdaWRWGp7Yv1lUN6yL8ongiYExrzFT9obistlwxe2T1wOm6jnuktuGDgvg7ALy04XWjyieibv4GTa0zR+YxRKF0g6ZlWS96xWNtaicCl+JEZ8I+h3f+idwd4nWroTVkQQAIeEdaerrAiFJAAwgVOJJe82xkUTplSvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYn8hV5S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FYn8hV5S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2781C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752013793;
	bh=fPlNSps6pCAnfgde37Jr7tX7+qu3Uk571GOLrDRc4Po=;
	h=To:Subject:From:Date:From;
	b=FYn8hV5Sfc3dn1urJu+lnwriD64/6C9Rhg0kRyxeemedlm2Z4iV//+kkK3tWPBivw
	 6ZoBlutx52l3FR9C1zlpmxzqfHrr2CCKHS78OJ6CHA4cebha7iFWKPwvgXiYY3EZh0
	 HPRaG+hxVVnWrK2eNLtEF+I8g/4dm3uhUR+B+JSMR4WAaeadvmbUiN7sXyimGRMqR3
	 jqeHNV1Uslgru+UBMDyTaWh4XlrWFISprs1WW8ig6gFDhxY0Y50clvXNu7ajTsuCyK
	 QtWbYKta1yeGdxa1Qm2kDgyWMaVNFxnAcF9I+gQXmzHn5nCKNEqe3by9wkh/mWvYqb
	 vetqGYrPFpL2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9054CC83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175201379358.12867.16609599727213223557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74fba9e618ab00051ae0ef2965e693b5689b317f32fd70f16c602f8d30fb9a09
Date: Tue, 08 Jul 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752013793
