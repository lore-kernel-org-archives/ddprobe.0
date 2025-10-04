Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429D713AD05
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759616394; cv=none; b=Cgb2n7OWGhK5faDl7qmTj+3LhoM1kMpSwdgXk9KmoafALFLPDZRsJJd8B57OGGf/i3MvHQaPcR8MKI+P9S/MqCEyBDRyJphWWXQVXE6LmMc745Xa9cubuQ5Wa185wj8GIMwDPZ4qxVxAR/a6bEd+j7CcoIDqnfzA3K0nq+Y2kN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759616394; c=relaxed/simple;
	bh=zTmhdQzexQS58mfr5IwfCfYqzivFZIa3emduL7fodog=;
	h=To:Subject:From:Message-Id:Date; b=kK5leFgyaRWkHGwhazYSHwzF9lyZMI/OcP1pnUnSCYJWN+EAP2gtfMRxYziCz3hkZG6A3GK8fXqU0GCIfimvCq1g1mQaceI+kEasQnDLezwxkbkAWUC2F2OJYVK/9xZ8uTwK3VYDEOWHVSca+O3MY4FqT9EmYu8jSNnpo7LjbKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qWQmXbbW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qWQmXbbW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FAEC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759616393;
	bh=zTmhdQzexQS58mfr5IwfCfYqzivFZIa3emduL7fodog=;
	h=To:Subject:From:Date:From;
	b=qWQmXbbWg6M5JGchKFH1Z07ESuTglXt5q9UX/z5eZsqlNsaN877AXJ0QFvmtIf0jo
	 eHaAii/KmsZ1U37kDIljIRAKSuHAUTUyaVpRdmbJzQaX00DU6vZEkI0joERXv1X8cO
	 pHfT24bDuM8JE/w9dwHPtEaz3QX/GKTWa4hCNUKfZRvVOgcY9X7x3r8edu4CKWshQP
	 r9KgD+9tJMRvdxgzBwIwwSCeT/K9m/PSOKp+YtiRnvCD8JYEmbEHgnrKbnLrt7w8de
	 AmfdTOws4VxaC7IdXl/7iZSl5T4UnmEs+YNwQ53U2TEJD+QaqYqcO8y4gQrZFP6Sg4
	 Nl5UIHrkK5vIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9213ECAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175961639357.29070.442774499441956315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f34263974a77debf1d5dbf4dd9fe5aa9c1de67449e0eaf12a9c5ae83a85357ae
Date: Sat, 04 Oct 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759616393
