Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFF2225775
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770999894; cv=none; b=PFTBXUBeMcSOPGb9S833nPV/ySqxm/i9/F6vhqRW9oNoh7icJ4567sMOQpsVgBEZ7VK7+IFG8Xz55j2xjTQIit6yzSJkc7+6fdzw7fyqrAHeg+MlHlmEft/mm62zau42ZMEY8OvyZCMxSQ1Xfo59AOwpnCjtwHt6GwYwWJrFjMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770999894; c=relaxed/simple;
	bh=U40U3IJYf6/MLyPbJheN/NgJcHAYj8J5KhhlsJDQ0Lc=;
	h=To:Subject:From:Message-Id:Date; b=ZmP+ockCjld2Pm7WLFO43cpG5YwNjCrAzVr0rSi2WlLpDvzUliVF7CQwqNoAqg+NgtUFmSqJuMuLBVu3xsdvA0XOA2iAvdTIR3E2rZ1BgaTBg6ZFUW4amPsiWzRzL4PUvE3sfrXyzcuNQbxcwpEbSx2VZp+668vza9DxkrFE3Hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ixLApW5S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ixLApW5S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DE0C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770999893;
	bh=U40U3IJYf6/MLyPbJheN/NgJcHAYj8J5KhhlsJDQ0Lc=;
	h=To:Subject:From:Date:From;
	b=ixLApW5SGn4w6MEOkrNGUdjpmU9phTQJy37fU8QOcHyV/TTDLwJLozzIAizJNHah/
	 Q6kA6ek8EkgjBrXwoMJYqdYbRoqagiwmo3khOk2QNpDTygpXJnnPnV3ADpBidXGbup
	 O4gn+avAY8HlZA09/DaQ/+ERkoon3BMOjgTdX14VIkeap+MU/d6U5zgZyvucgWO5dP
	 i2suqus/mDTZgERV1PLqd+f7trFo/eEutmIO3E68SvGd0KWQo0pyoPGoQILWHolBGd
	 /qsWh3RMxjYYg0xQhOO8asRhXO6AwbBlM1vyZqRhDkpSPGMT2Oe4OdE7ARvc2k62NP
	 GDNjeMBr4MxDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E96EDF143
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177099989358.6342.12220709763224911452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bb6ecf10244a13d3559b93531449d41ad5f8bedfde9f5ed9175b725d938fb0f
Date: Fri, 13 Feb 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770999893
