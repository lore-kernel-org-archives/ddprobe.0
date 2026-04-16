Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2716C3375CB
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 18:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776364654; cv=none; b=ddXLwyTj3VWbsUfdM0cU2blQVn4WmBomsJpFatMMINr9oE1XyQfZ0pClJ683UmEJgvdvv0D5SzlGH8+SBjrywbQX/hvt9yovr21bAJzaA9KJU/oJdtrd2GrjAyzCHry5rlzwKtngc8ROak03EqmP/GaFF3rLeoWGv8izup2OSwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776364654; c=relaxed/simple;
	bh=ZYHTjT/E+EwjjDPULjmFdxZen6usEL868GSKDO2VsLI=;
	h=To:Subject:From:Message-Id:Date; b=CKfdyi5AGKTkYJuektbE/NBNpY+ftAcPOQYpb9lp/94YS5ovRQdbNfNLbQbEmwhYWHF5pVm4Vhto3PrdqnHJJ7rMyXygQ0a3TC78luitOmFF7/bYiV/TZJSknZQE+4UMdVUg5I6UeJgjiymgARhsdlTaEsN9aNsaCzMuEew1UdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LhC/+nZP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LhC/+nZP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE16AC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 18:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776364653;
	bh=ZYHTjT/E+EwjjDPULjmFdxZen6usEL868GSKDO2VsLI=;
	h=To:Subject:From:Date:From;
	b=LhC/+nZPmtDqWK01y1nJJNEHomnK5YYJ42l8blg9rjnGo1aJRRw2iJ48dwSj4OpjG
	 2G8g6rRHmOaERDl9JI3RtmWGCz4DyMVvnshu9D1KYp0BtWsEwOOqRiN8HnMy1/UE+Y
	 sDqhAXcw6rOWe3s2eJw/j8Guuv/08rauU2Ng0dayh2h7cPKCJVJo4YnHUgjRau9jhm
	 iScGWi9lGmK2G0Dt8645HzjIDZidsvH8brxXd9KwlSyBIt9eAQysT9g/VGt9w+EsIf
	 gfoZHPCtOpBQO0x7zeXECTAtbs7nCzv32lJpjBEiYckF+BEQLRY9f6K3T7XTYnOFa3
	 R5rWAzs3NXtWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBC7F8D762
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 18:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177636465369.9404.9034467434259991677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e04f44d993a0f245190db18d540db9c7d3e19ee8e711adde1117c7ca6122b30
Date: Thu, 16 Apr 2026 18:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776364653
