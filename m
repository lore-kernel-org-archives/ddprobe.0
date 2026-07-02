Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17FFB47CC75
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 12:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782994714; cv=none; b=lkJxW1ZyW58B4DptygAdeymqo1Mq3UF4i41+3AAeZ6mwAb5SYYsMQz/JbjhMDeMofalAXYfL5ZHCRI73a6Y71/XHeSu3sbHG7preehkt8t77BIs/Opf37gGBRiMI3FQoWk3Qcjkj574M+/AuE5yAr1V+T1aNChrXjSKhal9YteM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782994714; c=relaxed/simple;
	bh=Fhqn8pJ8NroQwFZMR1VkqwrtijA9VV1VdAEfUxr7OhM=;
	h=To:Subject:From:Message-Id:Date; b=fYS2u88TVCEAgjUn8ipxerejXe3zPz3aDSV+0v5U+6898xARg9fNTsa87RFxpRl7n6OMOY/MA5NWNaXDDZmC544/E4tqSO7OgHsSrTPEzMHKuQbKwKT28WwwUoHmFv+BmIPyv+BZrMg248GqI31lbqOnjFTjWuPJt/m+Q02BNCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=avIKNygs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="avIKNygs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA544C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 12:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782994713;
	bh=Fhqn8pJ8NroQwFZMR1VkqwrtijA9VV1VdAEfUxr7OhM=;
	h=To:Subject:From:Date:From;
	b=avIKNygsIh3hiBoLt4Zt2z//HmjtigRKn4FHiZPTn7eNSMJKek4GX51vaIbrmHyuX
	 5YOJ8tRJi0u65UTfgT0M1lpHZFBd1YImueWaxKL5hfcoBju9XYh9OtiUyU6KGkgfZR
	 ZUtaWIKfXqpxacsnIoWMVR8ASFqP3M+a+E87S+7cg6Fi3NlYQCnjBAi4mR9m/GHiCx
	 g6CcckocYVT/DLe22xIYySIKqPIGCIZDjDBv197CQs1EPUs0zzYWcC9dnxdQR/A7BF
	 uF8FmIL3d8dF/dtV46oC+VqUOJeOsF05iM0Jsmhgf/lSgHqG/zmdZlNwO431vT9sT2
	 74Ms3iLwI1MdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9135C43327
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 12:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178299471368.24656.14581703772690782282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fb3af06cf5d490e97232706173677fd0e4473ebe45e02c363ea71fa0b36276b
Date: Thu, 02 Jul 2026 12:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782994713
