Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CCC438B
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748594394; cv=none; b=Km5qhK4yD1/qG+12sG9ewmMIhOnICoYWgFPSsMDL70kHFxdzwSpS3eGruAtGpt+1Xw4fqW5Ywha5OdgCEZkhffDbH6ne2Fmi7YSKrwOXOvb8sZxz1H2LmqK2qaHk7k6O/oDa8dLFeZiJuOGZ/z+ULz5PI3wkp000giGmg1Li+k8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748594394; c=relaxed/simple;
	bh=isC4h53Rjm02N96yKBPDd4FYrVEBnzpB8ua6t70cZZo=;
	h=To:Subject:From:Message-Id:Date; b=BiwUXKFZ2RbHQqjTDDVTnBzVJgdb49oLfadFPOPTSl4FW90ekRDLAv0rCRq9UNUQ+UKVq42F04p0C2/z+63RFMwJ95RP89GJHbQEiqmM2b7ESEpFWnKecd4k5bRP8MRg7jllO7x9pQmzky/cQL56R3NcKuA6PCGJ2moPqdSqu2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=THBKFvbC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="THBKFvbC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EF9C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748594393;
	bh=isC4h53Rjm02N96yKBPDd4FYrVEBnzpB8ua6t70cZZo=;
	h=To:Subject:From:Date:From;
	b=THBKFvbCv+r4lY7WpV2s+wTLme9fnYuNeCMBuX7T0lZXRJAILa3O+B6yVCG1FRZRx
	 dIJlIDoro1+7u3KZ8bVXTpZNEAtmoC08thu2mNNYQaudzDAM4WTVl5BpYjKNvSPKzB
	 1bGv5KObj8BrX/3yxQpqnlxunWSKdBBjxq5o1ENBtp5pymNnUIAg8HNzNBVjEnXMBl
	 2hHRY1RXHYQ8s4vX7VgBZDtgSTRojLpuVJ7XWjDdMITUKLHjbssYf61GC/1po/o4yZ
	 GD+dGqKDGsof7W5W/jsmi3SgEqedZ3SR+YXDa0ks09mdeGtVS73WZYlpbFPYBWhTLU
	 bUf29EK6RA9IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CAFC3ABB2
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174859439358.9344.18366793932457910906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f071223a34e113b0d3a4af274c196a421566912c3ffae79c2f68b276f3e914fd
Date: Fri, 30 May 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748594393
