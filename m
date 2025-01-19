Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45341179BC
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737254154; cv=none; b=MQYBbbGTq+nqviVFIEVj4emoMrEiDrSTPBOdm9n3hILtZMEVWFVkmZUJMZpRAixlOkaxIUT+IB1S4Hy919jpf/nIeYO9qwTcJ83k+vwnF1zr2ZhiuXgdiaUs5LII5dJJS3McxQkqi1HGm2Mff06F7DczCwcCZfsdqdG5ZV0REzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737254154; c=relaxed/simple;
	bh=ZtUU0Q8pwO0iY5zvynlahcuC+jbC+dhyoM6xD0Lm0c4=;
	h=To:Subject:From:Message-Id:Date; b=eTAO0rWNbXahRPWz7U4DBUIo9XDwkJ4NjpiGfe8WrLQK2oufw05adJuIT9Cg6qW8NDvg6UedLjbd0QFFCxxjsqfFYNHsCXK4W26VwA3TSgXdvkH1NPSsznNQJ50XbWmG6AC0lMVJ89xX2Vi95DyA5v9/jU1tDW/xLiHK4szSYV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wbp7Ppur; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wbp7Ppur"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBE8C4CED1
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737254153;
	bh=ZtUU0Q8pwO0iY5zvynlahcuC+jbC+dhyoM6xD0Lm0c4=;
	h=To:Subject:From:Date:From;
	b=Wbp7PpurIhj3HuBhHJpRYujbLg8w9tv4gXX7LSdtXTIkuof9jBq4snrD93kFkAmUx
	 aXYiPK0n8cx0nC113eflx3oZv2FE5xl35vi5V3ujpI+8FdwVhmB3VPiw9BFZ+kBiem
	 eGTApxWZErgNz9gDE2QWaYcm4BKCrPKH9jaasCHnahWPt9hg/XGNv8q73d7p1mqIF4
	 N0DdPQNYq/mvpwOFV3lh+c44ima+XnWsB4mF524HUqml0FC/Dyl5pPiZZ98xX6nfkG
	 SbXXodAUDQJAoZ130sgYXkfssMl6pykRqeFB31N5m/8e+ixaGo8qLlI1WqSqHsxoBq
	 Fe4gqiFSpYFYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950CCC02185
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173725415358.32543.18064266736616111606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 892eb69472abed53847cf6c5b08e86d82ce4e2ac4dc0ba758fe4da6098329b04
Date: Sun, 19 Jan 2025 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737254153
