Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EEAD242D91
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 19:22:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764962574; cv=none; b=LxHlabR+TZIDVz2n0W4q65qCcru6qzQMKV/w9WEqxOOiAlNNKPQfVtSZOiqYRhHjiKCMLjy3rHIrTP1DC7DaBdaJiQwCg5jSJ2rS25/gssknfI27mVCQACXz1cPayaCtwS5CAUgfledx7byVgFgvjtgqROG75cc9YJM6aTdatuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764962574; c=relaxed/simple;
	bh=wN4JFrVQO7jKJLycJvHVzuIuE3qwpWEeTigSDshmoFE=;
	h=To:Subject:From:Message-Id:Date; b=NRgJHhZLb4hwQjQaoBdpmD4ircbUK/wNfBHkdrWwFDwR7ckzWbSQvILNpXc+uU+b7s4iiFfYx6UM4W68tX3txsBHOQCeLqXgyPx9WiNtuSkhbYQwN1LmeAaA8yX707vAM/EZpphZLSA7tZ+1diKRGkPBVM1aQImLaTS5QOS/W6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+Vym2HM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+Vym2HM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12C9C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 19:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764962573;
	bh=wN4JFrVQO7jKJLycJvHVzuIuE3qwpWEeTigSDshmoFE=;
	h=To:Subject:From:Date:From;
	b=h+Vym2HMhmdPe0UP/is0vxRomNe2THiWMUa4xYk51noRx/3MsR3vuJ7CNbGRjmnn7
	 uYlvTbV47wiHt+Oddiv4KOwzsgv8NzF9Onl396thysy+/bC01EZx5bK9eX+x3UpspI
	 KkBt8b+qXWwLIqiGjG4tb41LjdyGU4Sp08SfpDPjX/MD/jTyzdayLxzpp+EwUHaLdz
	 mvgJzQ1iGlL9XrosOGNBOzNfo3nzUL6a+LUShaDKc5NDSp6Dg7uKDDfz27IxFWVAC5
	 /wtLZmWov8l6rhdVZxcK4f57uSa8ysqOILXwPV1jtkACu7PF5JjgFU8rP7SUq/wIDQ
	 syY/8iZyGY7ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B9BED339BB
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 19:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176496257359.3008.3049173894209247334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c05853532a6173582fa4486e5afe183cfe1a1484b24268d74ccf9cbaf5d1be23
Date: Fri, 05 Dec 2025 19:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764962573
