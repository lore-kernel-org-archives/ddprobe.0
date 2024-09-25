Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD2F145B0C
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727300154; cv=none; b=b6+aqjtClcBCEfgfYFCAHGCCyt/WO3bNrBAaskdmOjilT9TOdix9tkWGdl/X9umTbv67+OKLnUqlXNNc1/i0lMpvlzyppXxCbe0zcWZ1r4Q1Tx3j5JlTSD/qujFeFa52rnbTWWXqP/KsVZ6AInpp2cGLXshQ+8emD9D1u/kDJ+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727300154; c=relaxed/simple;
	bh=HluwRimPkjuLbAedshYgn0VsqM6npYf69/lSixkSkAY=;
	h=To:Subject:From:Message-Id:Date; b=eEJyWo2t7g3gfFm0Yht5niDjpGoAWGpOo2a8qx0oHN/XyLrjIjaJk4QlTl5lpSyHgHvgGf5Zcj+PmCYLvzBr0ui+zwLFSosWxaxkrrYvA2410eQpbf+k320jdvkpVxMWTPFQ5WJYMIlCnOvtVKjVD7d+wx7Bo/yQhtPvlrOvMv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NXrAlUie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NXrAlUie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EBEC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727300153;
	bh=HluwRimPkjuLbAedshYgn0VsqM6npYf69/lSixkSkAY=;
	h=To:Subject:From:Date:From;
	b=NXrAlUiel3i72zuJxoKtBHmW++9M57/CIamQfyH6+hCYevfeNy7mQ+aIsRDD8W4FE
	 YVnC/OA8jZFBSBkIxAg5EVUGP0cwhOu2iPDejGG7vY38fsPXPUPtJyukaucW3ihS4R
	 AsCIszutB6pBMZa2fx4IAtjyFw1SE+y56LkgkLnBkFuqKsqAQweAiI1xP26vrms/QB
	 h5wqhkiYYtFb9o1LL+6gKZQDueAwBcTv+h0joExXNlKQvWZ3br4yAWXUaJQtsbKC4j
	 e5/g9iWYQY+OjIDfOvDAP18+3UddWhrvA2rJcGLea0DWG0f2Ngg+b5LR945j8k4wYg
	 +NSEpkN7r1eHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E67CCF9F7
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172730015359.6631.11420612807231445658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 709b74d6cca23162a48352f1743ea0228d9ef07c668e3b10aeb464ec055facc6
Date: Wed, 25 Sep 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727300153
