Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E6A21ABB0
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750277394; cv=none; b=fVYog3/Hr4HcZlkRp4tU2g7JZXAauPWdSKZsC1Hpn/hyCeHJvEPtiCrz8UJyNi+iQOsyMb23YmJpryfGGUKamXw9qQsxk2gaBRJN0N9Lw/GnQh334jSknK6mBjc59qI4smbFrs2V17dYzkpyagyfuNdCeZdo4moDDMB0tgzWRco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750277394; c=relaxed/simple;
	bh=34/qKqIoPMNNFncZs2OSCcvKhhUU/eWJ7DGab6NAHR0=;
	h=To:Subject:From:Message-Id:Date; b=dXOImVGyj9Oejco4MCKitMXkk3DG49bYYPfCZzqOvS73w3/AZ5WuJjyZVfKMQwPEbxQm/mRU3P+9OvK+EHcXC/Ziaxfd0Ab8MvOpHYCyI5i/XMXLHouyszcll5caEOO0RsX47y8cVmPHVuWM0KB0IRPg79epWDl5988hhsq8/oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aaNMvjOe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aaNMvjOe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49FCC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750277393;
	bh=34/qKqIoPMNNFncZs2OSCcvKhhUU/eWJ7DGab6NAHR0=;
	h=To:Subject:From:Date:From;
	b=aaNMvjOeAFPjP3xiTL/xrWggWwFyjQSmP2QRLdT4Pof/Qes9o+mRXyoNx24FDyumw
	 IjcyuuBimEsEOyj+zY2l2nPqihkautX98bfU81bA7pPx50qosjfgCdW02akOXrZ38K
	 kihDVM0CisMqoc2pPCc7Ps9uceZNsyS2+Y/wbJjyrsDq26ctHx1e7iEYVr88BAHPZx
	 /cSYWP6npZdK3Uv4axrhS1ht8nn6oCy/OWFScKK7KudLwF4pAGYvKJbf/XIiYGmote
	 ex7NtDSxxNWaXy/FUFltRkgAP+M6YNOAY96rXzJU059tH1LvQV/+/TFrkQpKibnlG4
	 T7WO4k2Qkihxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9031AC7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175027739358.19371.7007451064103809971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2db787581cfcf7a4a57813ac6cd2a3ed242a85ea89dbabd08032b56114886316
Date: Wed, 18 Jun 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750277393
