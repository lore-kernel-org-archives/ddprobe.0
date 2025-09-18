Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF32B23182D
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758203993; cv=none; b=EHpV+QO34d7QaBsr4hvV4nOIKHWO8ur1ekDfNe38wydC6atw2iEzziJHQ9gdQwHKtGn8soaAcvh8sbkADKy8U9aIDpvNmcmbrYvmXG9Ilx0Y+61btzDh4BvUy+BvSMRVTp4zB+EFrfQzXZ4QXSQ46PdWpX1ekEC768jMH6K/FZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758203993; c=relaxed/simple;
	bh=KUKpXzQfLlPCHU54DLVjIrGCS2ypAKgxw80l/ILpjik=;
	h=To:Subject:From:Message-Id:Date; b=ZULh4pa7Vai4drRLrgGiW++8D5Cw/F87tW2rjtlsXPtIZPpkE1Upe6v7u6OulgW0I3CrGuPuKIAntmxmqS8lF7+Yxv9i79R1c+DT+E1KDemTDNH0TGow99nKE5zwapMy1KQw9Ce7mkoFXwnHIvnwce2OsMFwmi+SyeFRzMNFrpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RAaMRI42; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RAaMRI42"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A121CC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758203993;
	bh=KUKpXzQfLlPCHU54DLVjIrGCS2ypAKgxw80l/ILpjik=;
	h=To:Subject:From:Date:From;
	b=RAaMRI42ivRi0vXnorVpnZWjN8ptZ5Hg3ym036vN2XrZfiZw2zSKuRsYu4xa2jZxM
	 R4VmK1KcB59VqAcoiMiI7gstD9MSaIliNlWg2mY/yylkqf2LY6JIUG+VKCdqInFPnY
	 TpkswD0xg/tLei5znxbJQTzErTXa1De7ZELJl335T2TI7W3IYjIBsoXquXxNFen13n
	 WOSmTnhWwO1LDh/G2CcN2uTnuCI3W6sbIKTLmgnNMofEMzSNo52MTOrdGRZ6SRPMWe
	 KFcJBzT8mGxc8vBz4CZCeKbWUepwZZh4wP7i/vY9+azCZKEhCgUxtj0HoZC2XSDtwG
	 0GUkFAcoHr5vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92986CAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175820399359.32190.120451431408007170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a46b38f812107763a7eaf91217d5ad39e88772ba7528113a49203d13e79a145
Date: Thu, 18 Sep 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758203993
