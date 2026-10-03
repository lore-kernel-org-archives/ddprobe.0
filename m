Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AE1233924
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791041434; cv=none; b=fqgeS84wAFkHUGz4FDLPJ8MVKlhqEi9no9Gv3JqKb50LoJVD9AXHBwsApf03yzpbjz4DhXkv1I0R86jaRXBd8upmp/VLnNQE4bwj81UCoLtX7NfdZ4tambj8PTJmePdcPpa1w8ntd7bSjpRe6h03XGvFkUabmuH7x9T7M314mgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791041434; c=relaxed/simple;
	bh=aBCXeKmnCn7Uq+Wr+mvKyVpu9hG6gs5o6CVlSbYsQq4=;
	h=To:Subject:From:Message-Id:Date; b=HRPbLTU5z+LSJ3rA8P6dgErqQ2OaRmtGSOYtUJ4MA4dEqM5H41i3kzIZlhOn4uW9mmyLpHUCzpXq9YXpf+B2w6vbTgTG1z5hEPXhq2Rt8Y/stDJhYbMlcjD2kJqb/w5OLvXItlJRE4fFW+YHDRNBxspIsXgj+kzqXhNWj3xhDxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7cX/G6v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7cX/G6v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFC6C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791041433;
	bh=aBCXeKmnCn7Uq+Wr+mvKyVpu9hG6gs5o6CVlSbYsQq4=;
	h=To:Subject:From:Date:From;
	b=a7cX/G6v4eBIJnWLZnE8uiOvcpgdKtqdEclNcDVj1fFPeeiod/rYVrQJ8BVLnGbFB
	 XXykwVEnDeGspQYCREJSXwzJjfAARjrvXLE5DqhprfrSIIYQh0bKDTDguKpP0GHI3h
	 2GoTTkVG+trI0oS5WN//MBUppHDMX1WfimvcO+/JKNFGu/AcdOcsXcIEl8lZiIJdun
	 XBGTol19YwBz0IiT3JcmcRsG2H4N6FNCPpEb4KqdQLyKxCinb/h5M10p/fLw5LVOek
	 QdTA3zLJt1ZHXzUGiircaWowlXZ575mDzcskDLcBY5TcaUe3lJ/HTJIhqh5egvPoZ8
	 scNAa12AAmhIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE2ECA5FEC
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179104143369.5336.8853556415014602819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bed73ce0f9798388721a4ec75ceb9c12cb1a6a8f8cb522eda21ed949960c5a9c
Date: Sat, 03 Oct 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791041433
