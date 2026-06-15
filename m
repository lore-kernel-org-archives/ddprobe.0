Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C39A79CD
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 10:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781518594; cv=none; b=pGryZ2kh6/EVt4IgtyzxZSoINMhEmpnpSyxzO/ZI/oOy3Dg9c2pzzxGA3pljQTpEZfZ3IF26GswgsS3SpqUXAfgX1eaBD2OVr7BZXZ/pPRF4xe3yTsDImZe7lMWz1HMIt4j5EOwucbD1Lgl5AC5un6jTAednyY6tzPfip2A1R5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781518594; c=relaxed/simple;
	bh=VOIbfr1Ct7kz7KUvTKSDMWV0fW3vRreGGgpGYnyksQk=;
	h=To:Subject:From:Message-Id:Date; b=V24gobu6Q9gePCEhGbpios7c27MIE33VzqRR9gwxgWfSX0dvrTE9tcFACj55neK3OxIgWbrLqi7puSOzwMxn/sf3DHC9zbTb5zhzndiytlohYreWvHxzmDVboVIiB8s4GmFk4cCTAOCOyWtilJduiTq6l3gmWFt5tVdqB/g+27Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WrZkOgSQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WrZkOgSQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D865DC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 10:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781518593;
	bh=VOIbfr1Ct7kz7KUvTKSDMWV0fW3vRreGGgpGYnyksQk=;
	h=To:Subject:From:Date:From;
	b=WrZkOgSQH0WZBZjg38rbbos69+2Ga61JK6YV3TD8iNsY9p142ZCyvMvxdRvVfT/W5
	 rzacJZZbpKrVVbDP5vcU6j1CVYN1X2Hvl31gPkoh35j6tDwxHtgoMQXUvfvTOXnGkT
	 sfLDuydJ76qqgdZHIha7M4q0iqOXv2mM6mWbqeS8MtvhmrXFwoP4QqPRrR+8q8c2UY
	 lriDWXYSgtRyeavZ/i6WvvidTrLf96yZwYt0eDVtqGgUIghbr5lsvNJaq+H9RMngn0
	 myYrTqIhHN69+7d6iUmWY00zj1hil9ueM5SkeD21iSqeYZYdbO3ELFqV75Kvwo1Md2
	 64w73FzPbhNDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6CC4CD98DA
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 10:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178151859371.27085.9148472058883134716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41310f5efc6d6765901e35d52c5d47257d580666f26aa0625494c97fe378044f
Date: Mon, 15 Jun 2026 10:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781518593
