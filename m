Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349FD221DAD
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762641594; cv=none; b=Deg4xkkhJD2IioNs7L8hjsvdhwToJFF3FX9K3UFdJuPO0NV4fRpzLeoGMQx7uKuBsch5CggXS2PXDp2A+yTojathFw6r9r60w7+WLIyqiBrmIN4j521ZPozo0em1saXzpN8MDIucTfpNzlDLgwOLvSKeQlovhsEoWL9lgocg0FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762641594; c=relaxed/simple;
	bh=+ZQ2xe3LZAVM22FAbvi6RnQMDk0tZ08uBGdrx4A543M=;
	h=To:Subject:From:Message-Id:Date; b=PqCsPUZ7kyc1Yv0tvLL7AYwfAsPGmE/89O/Y+vs2Xdhiv9c0pOAIKQrWPVES0GwExVj0ytL5c4ibjyEB/d7vKd+55vqcEqgnnHrlre2EVrdo25qiBy+iazMLjqVy8+bUm/Z2b9x0K/A1TROKY4CGjjIgHrSnX+b/u0sF00FXhwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ltc44qje; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ltc44qje"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5615C113D0
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762641593;
	bh=+ZQ2xe3LZAVM22FAbvi6RnQMDk0tZ08uBGdrx4A543M=;
	h=To:Subject:From:Date:From;
	b=Ltc44qjeenWzkHjbvOpwwqWmkH8401i5QYPwYZG1t4g3iOZ+u5s94FKdActNm7MjG
	 q7mxytd/kfEx3nZ/fqp7EDFVGePuFJhnHi+x0AmOS+go9bi0Rugym8245LlBZrIaqP
	 bJyZwcDCToK9I5oWPie2eBmbJ1RBFMclYw/WggTMm+PeTFR5mM33ynJ6zusL1OBvSf
	 0pBxBBp0TQBcSyDppLDVrPhxOHsZSMKvUluIaXs+39saTFPoW8oHZgIcT9SgCI5fTi
	 TeJUUmzqg7wZlxe0Vle7QEXZOLivi0xapGr/7Z2KMuxZvUB1xtx4qM4R9kGdgNjCdj
	 ADXu0ruAIb2rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9624DCCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176264159358.11444.18203304934329884697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 725a1ddd3781f61d442ad64d679bb43fd10c877c9a2b57132525e297acc8b45e
Date: Sat, 08 Nov 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762641593
