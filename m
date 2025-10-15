Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A79E2C15A0
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760566794; cv=none; b=Xi+gq221sAvQus98UureiQEPwf27ysFuCx4a6kZ+TM+rbL0n12FVpA4miUNMxUmaebQ3944SlgIaexZX6AzkWCOjQS2C8IZAg8g6AVWY8YPyixq2l6+0CwYcvgrZarPNmHeA0TOQRmduExId4sxCdcH1R8xCq2ae0mfpcotWFEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760566794; c=relaxed/simple;
	bh=AJYK8iRa7Bnm2GouW6g3PVZR0h4hpQaKDEqA2vduaH0=;
	h=To:Subject:From:Message-Id:Date; b=RAyr1A6Gs9bVKf0srYWV3fYcoz1Tq7pzcl5CGgty1+BtLTX+X/o7CSoQlk/EbiWJO6RyESYaEYl1o9WFGRiYzcGgxY0+w5TpfFJK3JCu+evkcdHYYjPmGF1damnFjJodeoEyMJAPJBpt5/rjqDG3KwXY+rHKmJXn1wl92HbkNrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecEToBhB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecEToBhB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E24C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760566793;
	bh=AJYK8iRa7Bnm2GouW6g3PVZR0h4hpQaKDEqA2vduaH0=;
	h=To:Subject:From:Date:From;
	b=ecEToBhB7awLdP7cv7tPE47a4HCqMc8b43AKuQRFWc3zR1Wvn+hL+A6lbJ8keRDSM
	 iXdD0iq0P27h/iMVa99aEU0jGaE//WRLifZkH+0AaKjOeMBMeT9eRT/1dl0zZyfR7R
	 wmBHRkLytChePewNk7IyurJi37QfcY9h2XzYxvxnDKWkE0VzYenLLMpO29zwjahr2F
	 p1dGypBUgNThvqxuQWJVWPmNhqL65ExxVE7EgAH5khISCEkeyrV8SOB2s318rnD/aN
	 RJt5J4RYyzpHePDrplWupFRalaMUZLaNUirjV6rX726Pd9Tz0FrpP+W6KVcV9aIbDM
	 SnF+NgirLCMRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9078ACCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176056679358.20956.17852270814919765640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58aae02bff351a62022663226ee8d92159be7f960f710a55954a8c51c2fb50cd
Date: Wed, 15 Oct 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760566793
