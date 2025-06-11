Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33127213E61
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749625194; cv=none; b=HTQ4Teq/tioZqxjPNQF6VNUk5s4HASQk8KsqTf1PBF9YwibBecGbINYM2WaD5kOCNyL7hWHdyU7vrzlzxhtcYxV2Je/W6vEHGyRZkTOo9oUn83wu3k1YqcdhPsaRBy7z9inY18tqFEURlw2EF6zK+4e7dT/fUn+QC5rZ61xyfEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749625194; c=relaxed/simple;
	bh=O/uwxJ3iebkgnKJOAV7AOETRv+t/AgfumtEs4rzaS3k=;
	h=To:Subject:From:Message-Id:Date; b=jcaYpVWL3OdBMZzue6PVOWZRg8YAAbNOtFCVtdbb4IeAg889Vx1sqrGUxXiu/yzkZMlRVc4wzlcAnFQqMaReTNmA1x/G7GzuEToLOVeeS0jXQSQRx/KhsNXJP0GnUkX7BWi1PG3CI7SS0KaZBMiuL2KnLEQ3e8TzgGQ+1rJb7aI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QrjBuLzq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QrjBuLzq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F13C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749625193;
	bh=O/uwxJ3iebkgnKJOAV7AOETRv+t/AgfumtEs4rzaS3k=;
	h=To:Subject:From:Date:From;
	b=QrjBuLzqey+wfE6zPbj6ngusykxmNdKLAOif2uhG5+qO6ielTlY0bixN8oO5IgvO8
	 tIczvxpXYeSuyri/0XnSDAGM8RPTYjxMTRi3h9drhoCvmgnf2EVO8RC8ilKAILatnW
	 vxsiQ9smrAh7i3qTYW5f/Bhr2QjsY13DvpdVuxFQgcEMB0QaMHcq/8PfOXVR63uT4X
	 DqVo4p57z2PDLWCCgxg7Lv+5/A7q61vMQACIDnhKseRp+8KVoc1dnC7+zizxDNm3i5
	 JwffpHdmc0yVimLVUmqgkrLLu55q2z4hWP5PMm9+3Dq8ETla4CrQyvkQCwsGFlH5O5
	 mQTRrzotslEFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B22C61CE7
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174962519358.30500.1069332148948949139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 837b049d4010d17575c5ef0ee70d40cd53718132539feb4fef23e81336daa0fb
Date: Wed, 11 Jun 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749625193
