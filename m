Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F54F9C1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759617594; cv=none; b=TJANgnaHpvkT8DY8uJO574N+pRbrXK/d498MKEQ7paRalUZiYbmnoDWz4mMOqS0AD3GL73CYil2AiloYrKmOrjl3w3KdDPPKHCYEj0qReTdK+KwSa8IM06TfoLGjvBOm455eCVl6Y95EZ2zLDtFknZjEAfSTMt1xLMQN5ItuYpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759617594; c=relaxed/simple;
	bh=V5DIlmIY1Y0B2m/xIH1iOAZziCUC5qTcfIIBF3WYTXE=;
	h=To:Subject:From:Message-Id:Date; b=Yum5XO47CCnTLLYnxNyUD6BDBvEHehGH2hcnnY6swPcCKdCxeC9/hwnZZ0sfoHiC4jK+3EZoyMpHHfIusg+PFTkoRda7IEeWb0+u5Ad2586V/tivIS83V+lnLoTAAJYy42TkmoEXJVghPR4DVjMNoCiV6fl5HToIG6dh8IvEIVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZw/CfEl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZw/CfEl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4466C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759617593;
	bh=V5DIlmIY1Y0B2m/xIH1iOAZziCUC5qTcfIIBF3WYTXE=;
	h=To:Subject:From:Date:From;
	b=SZw/CfElD2wKHw5wYrb5/yJYL4Np+Pye4zkMykQ0eezhBEXEKr2M167OdMmNXiFMD
	 37L6qR8hxImv4r88ipwkwu0cy37jK32FR23jHejs3a+H6R0EeF2rHHl9B3fJgOeLgK
	 1ohMVwiy8/TkkIGaEJgh93G9pvjx5CHde2Y99P5jaCQQS6njhfjDNbf9j1JEL0qZqu
	 62OQdOZGimCfbguUPTbRNEKhztv+ZRiW6wE9J0ETADqHJPajOnZDLdjbN2sc0iyVuh
	 /u6/k+RmpM00eHZtmS55AJaYWrgF9cXkVqSqbicIMGqLyAWEj6uLqBCzlF2K2/xcJw
	 dhMiJZ1JZjWSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D58CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175961759357.11886.92749010982059328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 020d9afb4580757d6628647380d87e96e33f0a6f88f5047b0ca16b31c9d47fa1
Date: Sat, 04 Oct 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759617593
