Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF863B7757
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788165634; cv=none; b=kd+kqDaerpSMfxcNWsTvIk75XJJ65y4oh75rIbgh58qIjusoCzUSL5LoOA4Co4mLUOl3hUrYlpyXjwd1XQ9dYph1CEtSrXjfItz+KPh1fwWM5cJjjOXsjC9PnwJBXyypi755/YzV0FenOPYh5IJZ1lJBhgqil8YSqbA/aLSZ7qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788165634; c=relaxed/simple;
	bh=YuwjAhkkXkKLck5gUQu843uxfiVq05VYPGYKSajichs=;
	h=To:Subject:From:Message-Id:Date; b=lPf/LdqKsMbNzl9g6g47WID1+RMThTYxcT4WMCAzbax/2jMpNKRy6Ap7RR2FiBQmheespYhMrfUX2pacZvW8Sh+WY6yC/EwSz+ZncM/cj1qDLoyRQqHdb3f9mqSjFzE9FA78DGwVMck0lgh0Br44tIFKUx6ucIXhj90Owf+ZTko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=isMZvODF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="isMZvODF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE745C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788165633;
	bh=YuwjAhkkXkKLck5gUQu843uxfiVq05VYPGYKSajichs=;
	h=To:Subject:From:Date:From;
	b=isMZvODFbKieO9UXHVh/H17GH1RyTNip01u9ZyKJAfNnAetFDlUCPCk/PVQWTYfdt
	 3VxUL4iGCtPF9Nkw1+fVNxZd+7579USm1O2+P+zxmlNidi3DIydRXt66lg5BvFXqRy
	 mkCrQvQQMqIubaqNzjK9xaR9/1Xdixbz7ZlSjmPK7mu0wog+szwvgGfTrtgOSXppXy
	 N2fe7RoSgPphd/OFhG9RbDXNjPFvnmWdd6aGpIBFjzaHx5uST6ZhO8VfKQctsyd++4
	 +ocKO5tw/19VgNTm1Po6n76u1P+IqVBd608NoGlflO9+fKo9dXrp9VrF0TLhU0Ns9u
	 l3rOdrcvYm6wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB13FC61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178816563369.420.18398106557912817403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae1eac3574a7965f39367762a46914910405240d5c3f2d7f6ea8c4bca282ed7b
Date: Mon, 31 Aug 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788165633
