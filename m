Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C27128C5AA
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766502834; cv=none; b=Zl9yxZrtozRs686b4FwrwrNOWRAim2hKheclo+or87twHNpNr9q9lPLg0PHN84Owbi8eUB7OqtSZ9LdxD6qD1+e1Sq6KAJFCRDjYir+PdLnriO2yPqJokFA9HVTiRcKvnnmNmTF0lJH2oPD39EEvhgLY1GGOO2ofjpVGfwOJMFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766502834; c=relaxed/simple;
	bh=LsfcMP/1BKYr7X96i41I1N6PT4wwcdTXIhnFXppEhVE=;
	h=To:Subject:From:Message-Id:Date; b=PGhVmuJegeHrAa7tjEF9s4SCxkLUq8lydYvMSUVPUgPiP46eDcUMRVWZmxyId3yaByeUE9TfTGfwX+odyBuwUTnAL2kkv+G6+eHWs1kwshz5eGhEH/7Kv6YpLj6VIzD/WEeNTbEvZ5C0SAAK12uYmVyXHfmyje/gAy/SiRtLwwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hluWNVEc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hluWNVEc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8886C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766502833;
	bh=LsfcMP/1BKYr7X96i41I1N6PT4wwcdTXIhnFXppEhVE=;
	h=To:Subject:From:Date:From;
	b=hluWNVEcbEDb5R8l3gkn840fnjUyO+m/Cck7shdEczFzkAyl3S+6KAChoNGkwmuNw
	 pvavfjhIoPQj7/6ext3YudeVbytUhilsBfx3yG9EgCQXwt0nz2sY+vNDKlRP+Fvq7t
	 jZ88PDRTAemfiy1SG/U518NNmek7K3dwhyAoYv2U34c6tZK+/5gDnjO+L3phsnH2zs
	 Uol+O5a39R+/k28lDSfmuDRXVykOtpeed3SUMgBGG+ix5LprE2ABkYn1gs4JsfEg5k
	 bc4pCyabFzsRotNZ3Zg8qda4nVaoq802O6NmIBGKuLNdv0mdBva1dWBowYw6tjpZCq
	 Or/oen4fP+LAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964B5E6F098
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176650283358.14267.3972345027804310924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a56aef3639934c6d998810f5ed53c8da5c3a3d94f0c76a767aa1e98efb64051
Date: Tue, 23 Dec 2025 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766502833
