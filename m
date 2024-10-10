Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215612AEEC
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728551154; cv=none; b=dbtWO2v3mArKhg+oI7QYUjI4EuIyFhdJaGNbcG74KLEqJkAAJYAOGOD3b5bPFwDGpbc1UV16aIOCy0Ij5vM5gtm1gT1Hnq8igb0+6gt4UrVOUAxBwFkiPH8OHnw2xaEgm34RlZLbMZYiX3WHlAxO0vWdhiwDJJuxEqBthzxLCSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728551154; c=relaxed/simple;
	bh=ZEBTRhhvVdAJt5fbeEzYNLxKBLdidMmbPUD7Mh4N3zM=;
	h=To:Subject:From:Message-Id:Date; b=bj3WG5reR6fE+EYij+XO5kpSoRKEDvMkPOD/Iok9TcMO0cxO5OZpQa1s5KOVuozulQdnslBEsHdhXLG1NEOcAXNuDpr+5vqx8zvyw5n8+m1FxXytlI/cjMuVcMPU0IRGCRDEuOFMOE/jLyEbDuT98NmyqnUviuhY7rllsnUZVMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6KdL+GK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6KdL+GK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B15D7C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728551153;
	bh=ZEBTRhhvVdAJt5fbeEzYNLxKBLdidMmbPUD7Mh4N3zM=;
	h=To:Subject:From:Date:From;
	b=M6KdL+GKLWDXI45qwbZBRYmPT27T+hu69b5LlFeKtuHAgWeyviwOgWuSIkVuGNeUY
	 x5lBHdcTcchPk8zU5b/Q4Qwrzkz6WiTOpaB4mVAjmdbvUuhedorLrGN8sId/YrO88m
	 fQ470TyL0/k5mNL3OIa4FPWxd0XGAJ63YFSRUqvGQBdOTQp0dWAqaEO0+rOMQjdZu4
	 tJKCVj0adK88S+FDz1d94DKjpTIkkUSrcdDp0qAxIzgEWh2O0p3sla+NS0RIlo99Co
	 jRXZCnZFUEKaRvUVAEMERDCiKt/UWut8U8E5UAunoY/azdLBOqbifV0Z0QnImHPe3w
	 DqZQTBHDfoO1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C111CF07D9
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172855115362.12969.12277005459102831036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 363c1e328d8e3ffd0e44c269e62cfa40ad5aa069c2d5746edbbef4d37286b2a5
Date: Thu, 10 Oct 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728551153
