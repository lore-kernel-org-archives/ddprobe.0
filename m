Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2871BBA38
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749232194; cv=none; b=WyiQJPqC9NxqbqvJvNyI0pVGl1ONvNbORgLa4YRS7OiFtk/hzXYAUAjoZxq+asBldUOTBnwNItKpAdOVTvnzFd8EaAMo6pi1GtKlDoj4m2sY9/lhY4Qv5eR9FQoRUKwPJPJiVJfcACYfbvvG14AzahkeOJ6uXzb3vkOODWctHkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749232194; c=relaxed/simple;
	bh=kmI6vbe7K5REGY/+gQkHJBmVPewmu9S2wDKXSDuNnq4=;
	h=To:Subject:From:Message-Id:Date; b=bg6U8fJeoWaXnOXSXJfOk5poCU2lArzCMcKhAz2CBjU2qOYzoiwLh9X8Dq8U7oqAvyHCQsVlHTofjbuYwu/EGfJRt5bFioa79AjqekwZezPNDGapZJ9Y/s8NfeOtiPPLtlSdWOH/ryojMcIEletDVDQV/seMq6kLcGbqI3xLMUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGmQ07DR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGmQ07DR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8301C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749232193;
	bh=kmI6vbe7K5REGY/+gQkHJBmVPewmu9S2wDKXSDuNnq4=;
	h=To:Subject:From:Date:From;
	b=KGmQ07DR6DtO7zSVpyxwe6ypdYlxugT2vZViVUohCT3M0VQm7o5PL7ktWOKvPwT4B
	 3GJXpNd67tGIcigpdbDeeKi9W9JerCYMsRrTNgDlXRlg71hECE79hndTWl1FqHr/vl
	 7pS7UAF3/tAmT1W2GLZI5k9r5eMjPR8S1TJl5J6dgbFg7LeFEBcbcO4RJcbcJzFLbm
	 2xcTkbTjci4AcOGh18o1sH8Oecczk2bWvwhN2wgNvV1VRBlMPOvCk1bzAREPJThbvN
	 AdKeY2kkh1lezwsAJrVii4SpIGoaBHlXi3DK9C3cAzK8ISqRbQdwK+zHr/SXzVvIJR
	 g8O/7EOpN2uMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926BFC5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174923219359.19441.6484767794014100681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6ef2dd45420ea175d0d4be0047a9a84e74712516ee6b0fd71e74a5ac50746d3
Date: Fri, 06 Jun 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749232193
