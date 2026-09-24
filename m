Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3549041D104
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790281234; cv=none; b=TCWatrn6FxxOC5KnexobI5krQlxliSugrDA3mAkFYr4bf8+eUESQ8rruCSATNY+0IVREF2O+HlfiSaW4/yFpJm9iy1k8rW0tOIOPqvCOzX0KA41p4slGiSkTHQuUXisU38dTRJwc4l4VTfmTuZ+V+BCk11wL/D+7VGPEngePyxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790281234; c=relaxed/simple;
	bh=46xJ0SNkG+la5VqsICguDhc0BNki43YuUFqnyl4fYMs=;
	h=To:Subject:From:Message-Id:Date; b=cGr+H/YqjDQpmHS0sCzWZrHerFCi4qMZP+Si2VZrxQ55sYKrbvcDw33qLkaPO/GiQcMWDDtgxR4sim3jEzwTOGhTbAM87NackyvmDT0u+6aC3FF0WX3Cmj0KqdyXmhYknTsoDmysrEvE/IZmrPPIW4+xsgSYRWcLNfR86RZYRUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BExPjOG4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BExPjOG4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C52B2C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790281233;
	bh=46xJ0SNkG+la5VqsICguDhc0BNki43YuUFqnyl4fYMs=;
	h=To:Subject:From:Date:From;
	b=BExPjOG4r27Ylf/10LI1FDXnt4dFQJrJ+m6553iatciaS0I+RV1XDRwJkjpLeJdag
	 VNuqAcMFhtOTQmM+THKaTbFFUtOzNMEODzUEHbu31qNaPRWcnpUuemc+l8Xn2EqfY2
	 2xLpdH5eJ59wJbGmyFInlwQGTAP7wUuMP65gVQYlryDQOBz2aY8Vhd3N91T6DWzphk
	 RnNTlVzS9/96a8xrr5J3EeZuaExyfQ6my7BAF+SXIfx9Nmkb0FODdQscRMixjCxbgO
	 KFLhu0/SROOALt2RyLO1jnn/c9BQZkodbc5LWYFZ6YSsJddEKqgRTKIhq5MkotRZSG
	 np/k49MFmb17Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2EB8C9831F
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179028123372.27131.10746426461396833715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9318e92a6ac0221fb9bcf9d90c3c7ef3842f710fc16a5866816be88c4fa9f225
Date: Thu, 24 Sep 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790281233
