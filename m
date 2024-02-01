Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C2D15CDF5
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706795296; cv=none; b=JXy2WtrNoH/LahQBHa4gXse0DLi9PoK16+bIi7SBBESL8bzwi9m+TZwoMhU9wdbLnSYwEmXvC+O9PojxrtvkXeaq0hAnx9LNW12Ki+ecIV+0rKtawv5iA0lQM+ywCUW4vnOfZQQuB8sI1vbRLnRXyFry15g9db1eEgP6PP8USNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706795296; c=relaxed/simple;
	bh=Js2Mrw/Wt+tzMM/mVZNi7GcRdiHkWhO89eTSYnjQrso=;
	h=To:Subject:From:Message-Id:Date; b=WJkbi8wXDnPd4yxuYPTOSd9woMhReeLuuqkRvtVSEY6wyLhKdjG2kmI+ToFvPO++ZYEEwLpMFQc14Vf289koro4a8KH+3eW8mySM6HYq/DkyklsXw7GJaCs1p14vWw82MYlnybm+SLmjL/m5aNdyNBeZ8jLiGUrheaiC0aYhjlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJrd5JuM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJrd5JuM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7383FC433F1
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706795296;
	bh=Js2Mrw/Wt+tzMM/mVZNi7GcRdiHkWhO89eTSYnjQrso=;
	h=To:Subject:From:Date:From;
	b=NJrd5JuMQ0StkDSC0LomKK+PDuSWdkttZbfrltSMfYpeXYWAZSFp5MNOk0sIUC5OX
	 buyOpC0+nXCdix9oPKDbjS3X1epLNaXMoL2115MmNW9unBuUbp9ANxpvNf1UOEq534
	 7IVDl9QTifO7zD+NglqIQ0Ck8UMQQ0gYGQsDI8puJkkUXQDi9NpKIiHNbd4f+DZkPA
	 7T2o79baLWBpUxrs1/+uMdZwknI6I9MXTKtvaBy139ZkCdQkAJBu2Yjw7UocyFuNdV
	 rnWhgs7eDPaxiiJ0k/n3Ihx0wR0D69DYg0Bv5HuiNSFDLdBAyi8YOJRFS2EbArmhA8
	 n3A0+FsJ+5hrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E33FC4828D
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170679529637.11561.3006116505061099713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2288ee28136de97adf49999f1fe4392d0de5d52a982644e11fc4d72439f7c05f
Date: Thu, 01 Feb 2024 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706795296
