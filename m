Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257CD3E4510
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 12:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782392254; cv=none; b=osMQRic66SA+UwVoj0jcUffsxt9N2jNTv1pbyViICvnjnuB3NlSQhzDOeOIC69boTP5NQt7fEe6Y7K2BZ2U0fZLUUJsMPIvl/L5UGEtpVE+/E6Z9bkpMSs5/6EtWbPsSGeL1sySnfZnfdkQrE3Vwb0smmPb3s63vcTyizKlpxmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782392254; c=relaxed/simple;
	bh=Lte2YTL036Rfvk9bLWTXkQ+mCcqefjD4QWJcS43K4eU=;
	h=To:Subject:From:Message-Id:Date; b=i4RLZHIhapqMSECEDnfimnG+S++FeSh2zaFxwBQwN8d8UqARTS1ko4AuhXtuHfrziEmUNxekvYlwIIuwmxC2M3cRjtX7K0A47nROMbOoJvS3znboN7CnbNSRADFMRza9PGsBYWXG9rIGXjIp4BnGs2a75N8rMBsgIXWPfDryoF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sP/lGF7U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sP/lGF7U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C39C9C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782392253;
	bh=Lte2YTL036Rfvk9bLWTXkQ+mCcqefjD4QWJcS43K4eU=;
	h=To:Subject:From:Date:From;
	b=sP/lGF7UIUQAgv7fXce+IsJHry+M6v13wMBVh1Rehj3WRXQbeczSWvJJg4YIAHZm7
	 4j5Vjz4vxG8LnIutSYac1jaSa1s3dt0NkHw8O3v4CaS1hCpvCSht0mtloy97qXZjmO
	 W42v0cEPxPRA11wQXzpn7WIrDdnu1N5HNXdR4tHYR1RqrrsheW+rd4UJyx8CysxmN3
	 456PCuJJY+SVTVoZxm3BeN5/DkTPM0DitEqHbq3Ltm+q49mJB5oHmJ4Okj7yVx41ru
	 +ZdX7uSVYuWPxGWH/L7pweCEseSt9PNV18Q+mkKaZCM75qHqgi4VJ0m5hRO86Fu7Ep
	 VjufcylCbhgjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEB1CDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 12:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178239225369.7094.14674092559477716096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0b773e318cf3c32ba6f5b2f5548eb5fd3dc7d03b777f7953c6fdf313115348c
Date: Thu, 25 Jun 2026 12:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782392253
