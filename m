Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234163446AD
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774782894; cv=none; b=aVRYH7VmXYPTJu14jhSO3/gEXfXMt8VJkNMpxtNxBn2p2sGXuChBcYLttsoDZWkMRQ6TBjBoUi5BdKchXqSxkSaJGO5OoXL3fM4q/IrkhQVOAEKsdQTgsGA+uywv/pNpv1urG+INfIU19F9yBCFubx+Cx+OuEQK4sCmQvrkFPko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774782894; c=relaxed/simple;
	bh=C10ra36p98tYsfaPRwUFHNTuto2YCvEDC8f9XHlLuvo=;
	h=To:Subject:From:Message-Id:Date; b=Gv+0jx8CYSPtnAfBwyBMQXBgvKmlY/d+Y3ySNN+AIbZ+7if42EOamqxy2a7WmvT14CqycIOOsZaHktB6Fc1tucNyIrSYkvK/z20eeykcUsXrLjDyJt9ZazFeft/eZ421IOf9bExMu4GMEgh7eRexX6URVZNGY2NUZksZX8/UpFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ogjhRIF4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ogjhRIF4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A509AC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774782893;
	bh=C10ra36p98tYsfaPRwUFHNTuto2YCvEDC8f9XHlLuvo=;
	h=To:Subject:From:Date:From;
	b=ogjhRIF4OIOZBQf/5Fep0v4BxDBa2vx7FVndjJyts8Rt3omrZJqpUDiI9AGFfZXxP
	 0m0oP7g9Ui7XQZeGfxchVXKa2WUAHyVsfqc7j6ZHCNTqLaZFNG3YQBuDJv6ve+YK7N
	 idZEAL+BoBI+8QfOsJSQl/TpioCll0yH0sSWeu5MBOuQGuZA6raAOv4RE3x7nIHJ0J
	 FkFcINNYeM90iGK5wX+890dS4aaR/rd9vck3GICw5oMZFSqeGCM5t4oJ5ru2+IQ5l3
	 vUoZ08jjk+8Hk1oNbgjmvgl4RPO5DhwyqqgdfM+h9ljmR8vfsKfGCyBfJUOd9xb5Wd
	 ZwN77v0NLjFCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EBFF3D5FF
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177478289358.18201.14585681276991879434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cde4b4ffb80819f634dfd3f2069d9a1846264c94b3cb7d0fb9d52a3af425a0c
Date: Sun, 29 Mar 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774782893
