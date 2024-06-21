Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 800618BFD
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 23:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719012743; cv=none; b=BS74NsBSbXq2CtW+6vSxd/5gXlH6gh5jR1dxAsfemKsYBWTv2LfE6M9f6fM7LvxIqI4f1F0yeN/qNsh6oTWg/DlD+eNu5ActcszT3Ud/p736iJ6WIpgAP1DpY2lEdF/iYDJJHWEk5sqw8HCGktrA9X58jjPbvUnDb27y85ivqas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719012743; c=relaxed/simple;
	bh=j5hfXd4hF8lbOJCkA+DRdiku/IYbdKapvYGQjqwKH7o=;
	h=To:Subject:From:Message-Id:Date; b=UizRAVJ2MOggyfG1/dN8s/FLJr0ydgLkwXUNM4mjmrrlQrr5c+8X/ihgsAa1mzq3/5Lbovh4K/MGGpCC7p22TGbEWO7n5M9Fp0EDaaF9cmNzTNO/d3YXKPbwYcc5oqP/CsC5/VZwI8s33sRrnGrzCube16BPNWoVM9t3BDtBpPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Juv73P0S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Juv73P0S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF27CC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 23:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719012743;
	bh=j5hfXd4hF8lbOJCkA+DRdiku/IYbdKapvYGQjqwKH7o=;
	h=To:Subject:From:Date:From;
	b=Juv73P0SHH2MDfFpbt6QVcZEd4ixezRgLDSo/z7JvtQN3iQ5Jusd8wxqi/sX7U6hK
	 3Vq7tGr6VqDYTlheQzoPTnC40HmzC4JOHPTj7PtBd9e8RvCqxOrbKjI6kAHyEuJ0YV
	 rUcDx/8iURXKpACUPLGIVuObdlnogQZWkFDkFxQD0OZFCrw7QgHH2ggqrXyijW+bmW
	 biDOr4GECc7j+zLDJZj0wbbRZq34CtrorJW9xKaM1rR9Zso2NqwJP8X/bBFOtIZ9yg
	 qjMWHv8OuNeZSmLNIagKzR7UNjzwiIMMHh5Wrqs4z95cKPCJF+CZZrZvZkL7nPtv8Z
	 3zNc3l+Ufzoug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D59A2C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 23:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171901274285.19021.8343599590123475331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69152c46e01357b33da4c6533f9372acbb0ac51e3ee5ab6c1ed021150bf5c941
Date: Fri, 21 Jun 2024 23:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719012742
