Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED3E285068
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771008894; cv=none; b=mB+TIu4K0yzRv2TMsxrdkVjceZAdyirDbKkPh99LFwC42SL/NVNDBAi6KOYejR36FCV02pkaiufDAtzNfFyC+6GYQXKbZNho0TOXA2PvpnLbYCoEyD/hl2fPd8vKe+SUXVr6Ue35P+dlIQtlga84zHgsPpylnz8lcBnVmxYaWvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771008894; c=relaxed/simple;
	bh=u7WPpt9GtJKHQZEnHh+MhZBLopzGhvU7BiDk98PHpmU=;
	h=To:Subject:From:Message-Id:Date; b=AggLmLlCH6bEFWYGeqcsJpt3bs8pzSnRJg51bzsE1CW4cSzb0eLloKKvC6ok+Vi7uIXlNHdu9mIDVd2Ao7hzOc3OHN4UJ/6p0nx0Gw1Iqljk7F7JodcZCJITLe8JrR7iuMjAFgsulqD/z9GTBsDE4kvjUSGnHsq3vfIyrlDHDP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QILYXzNu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QILYXzNu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCCC2C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771008893;
	bh=u7WPpt9GtJKHQZEnHh+MhZBLopzGhvU7BiDk98PHpmU=;
	h=To:Subject:From:Date:From;
	b=QILYXzNue+Q9dmQtjm9T/kdwU51+dNddblMf7FBcb80C15lvbIgGw5Qyd4dN1ISAj
	 /vDBHJCTBKhdijBLm7IPU+ry5p079scySt7dRllO/hL2V5MzyHEpLGCkRWD5oAtp9K
	 socvVjL992Oz33d4OO4QcDFPz0XzfAVk5dpxQiq4x6qxZc8FCkFmvwn870IwKDiCgn
	 8jT1Zi/Pyo505RwUXpql4EVnmnOWF7D/ogaoDBAyYk19VZaXFQmg5ysKraIeI2a11/
	 FRGn/RdbO7pJTVx6TaVxPhi6Hf3WY9frxuFGIdxYVHw8U2+bf4rOChpLfHTQ9KiNsQ
	 GjZSjopXYhFqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A14C2EF99C9
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177100889364.3690.9893216517959672003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f4281d626206bfb7600d9bed3d824850a122febbeeed68ee18cea50e82dbd6f
Date: Fri, 13 Feb 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771008893
