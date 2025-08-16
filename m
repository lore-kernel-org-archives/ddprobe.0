Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0F927453
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755387595; cv=none; b=VYTfUht4TV5taqBvGu0vchNYBTOpZh2xNuX/6lXyF7QzWI5zFfXQZquK9IycElWxfYh3cRS46trzSmNrAOeECa8YTYP4iXIbyu0t68o6GtgQUjbPQTNijOpUy+N1gGriHw43FoIfEC2XUA4j02lTM3gKGnlPhkkmBu7la8+2iW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755387595; c=relaxed/simple;
	bh=4yPdofwn/LLe/sWhVjgFCif5Em/xUvqTRjrR+tnGrYM=;
	h=To:Subject:From:Message-Id:Date; b=IhF4go1VS92btaurRvotH0gq9lNw81rnhMMyooUNkxy07TQ52gQ0z++atSuJr/dq5JdR/wUewUdWRhRxKcL6gVn0EM54X+4AOBr073B29M+u5C0AqUlsKqL7ZstGjkKpVS+rFUWz+HyqgZoqgAg/MJ9CwV+6DhmDouTdpqA8JdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nKe023X0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nKe023X0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A87C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755387593;
	bh=4yPdofwn/LLe/sWhVjgFCif5Em/xUvqTRjrR+tnGrYM=;
	h=To:Subject:From:Date:From;
	b=nKe023X0GOstI/ioGFJ/4PBxxRh8VU246cytp5QxczY1LPV67PbvkkmKnFV3vTbDe
	 VxugxeUxOv5qD4J9Pw03SfagmXnXcEr/5FcD4NUTiY1utX/BM+E4lFnCJKz0ma89t+
	 XtjziBLYcAHwzy6r9AaICCA+eNY5ThG/HRXJg1Zfh8leimSLAOZgfpXWl8Lt9Rv1JR
	 WuBGa/dL1GB8J9jGZJuht/lMRqo0ZLy6cvjPVnnjHOpl+U7IelClqAVUtx2gBJMZpf
	 NpXv2IDvQ5i6IKk7YqnStd3uzAkQI2JswXa9zUINAKS/pOJgHkHflwfsSpEPgbQoLr
	 rlVkKxO8jgKVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FABCA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175538759357.29305.13982307722932630115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68e1df50d065a7bd2ccfd11294e11ca2e8e432c199b80fa4d6f6f0668db1fe03
Date: Sat, 16 Aug 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755387593
