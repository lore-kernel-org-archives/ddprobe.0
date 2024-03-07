Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E860A5227
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 04:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709786297; cv=none; b=bIKhbWlmeqBPeUtGs3X9Ze3V1bz5X2nNfXF0bKLFbYmc9jMjWUtQoDejI2vifFEqxa2RF0NI2D6hvOSiragHRPTReJjyORsNtzL12JmWJvlVb5npHvohlC8+C48O30LiAt4GTJ6PNUMaJxGHCdZ9bSVgwZNjrvf0Jg03omA0lz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709786297; c=relaxed/simple;
	bh=lMMXQJ07enyLFuFoETyFTS9mFn6EzloQY+NztLUbr8o=;
	h=To:Subject:From:Message-Id:Date; b=C76ZwaUfgtZDj6pm2RxGvFLW4aDuD6+uaFkPeFqaYlpgQ5VrsEOuC98J0mWRYsu8/2Xh5TaXvrA93wawvSadwmW4XLWnElJChBLm9d1F4skOTsM9ap9hf1P/J+k9ou0tJRH93ZGuO42MHVTVUqaSOzeOHl63u8dRjz5xmVhTfkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gdKCsWnY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gdKCsWnY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 789E2C433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 04:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709786296;
	bh=lMMXQJ07enyLFuFoETyFTS9mFn6EzloQY+NztLUbr8o=;
	h=To:Subject:From:Date:From;
	b=gdKCsWnYmgMYv3v8jpKAuaQOCNPJ1STpCnY6WZdNh0BJtmXh9xAn9FTla6oKMPgJx
	 9YGR/isC/+taL5vaweJJNBMrHPPr4H7LY5ruAio1PfaAIP20Do/YfKrse+3S5y1XAh
	 bhy1k4I9CY+2++TbwljNhE0XnPMPxt2y/u29UHW8nNVcwvq67Y8rvw6nxj4vRG2VSD
	 3Es9sRIhbGvcuHZy1AgvdZ72nGRUZ31CHC37mGbx8Muj6ldfMk5Srj7x9kL2dBQJbO
	 aLdhn7yjixSPj8qmhzoF8yfBFHHxl3gBApq0slyu02YqOGZgr1BjlS80rkVeRf9vtA
	 JkbZ1S2sQSCwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E386C48BF6
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 04:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170978629636.9732.2250608537268125974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7439b7496931ac4bb2cd4a4eaafbd1961a05ce73dc8ecf6ffe4dc7af4659c8f
Date: Thu, 07 Mar 2024 04:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709786296
