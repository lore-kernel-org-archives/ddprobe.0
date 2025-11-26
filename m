Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0002D23B8
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 08:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764144174; cv=none; b=naRNsP2TLQMoKG2JkdfI/5gPEBb955Zot5YrKaRNuQ+FA4fDf6hABz3st0n9YItdz1wcGJ96WL7u61TJl6IiJ7FhWVCIw61TnNArAD8mZAtxdCJJrjwmpNQ0pdVB9Kl7zMqscE/b1sn/MpM+EFoIWftzOodiLADF/oHN6pW1EUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764144174; c=relaxed/simple;
	bh=hupYpzMLYhexhv0HcMAHDs58RHQivbUJAP4U0bG922U=;
	h=To:Subject:From:Message-Id:Date; b=foKN62/AhHPIzRC0MyHesWo8oGE5IkCBt/FjmrM3dbd6pNwGT4EwEZiHnubK0IH9C+istQRB2Nt1c+FmE5LcQw5XysIXOTy1uEbyY8YHrOE2emtBIFk+4XgLVkE5D5bZioy0pJlPyJZ2fo5Eb2AHMQIUVY7HxOX4GDBxFCII6f0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cuj5uMV+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cuj5uMV+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C466FC113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 08:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764144173;
	bh=hupYpzMLYhexhv0HcMAHDs58RHQivbUJAP4U0bG922U=;
	h=To:Subject:From:Date:From;
	b=cuj5uMV+Po0tEBt6OnX11ozv6b57nZ/29qyPIMDq//p42rL+ougs5+ZOgvpWU6sRn
	 nWpaS3LL4CfCA8e8RUXRSKeBjb/e68migZVCxofS1r3xjaCnNbMqpCQNETdGxmgbU0
	 reppwoLoTFpW/1c44+fI20n4zdnqbsFJS3XLPTu6gFIgV0HqORy3E2rI51RmQ6ZQa7
	 Cz0HyL6MXMzuv846+RrOmsFRkv/zmaw14n9ddP2sIuqujPXSa0NznMUziyZSCfsEeA
	 WY/op0SL3hfyoMLWJKppE39dpjiunJxWYcgVrrp0opgdmlRpoIWgyk5+EJ+tHmqK4G
	 UwC7LWMD+ngXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24CAD1038A
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 08:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176414417372.10402.5554315807990960768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d243e25cadb771ff1746f95f0ec789cecf179b2f6051d5a4f3feb71ab90b5ac6
Date: Wed, 26 Nov 2025 08:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764144173
