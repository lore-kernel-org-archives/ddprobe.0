Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60FD01118D
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707118697; cv=none; b=b+s/hRFZ8mpA+6dgiRg+dBuAo6vVnhu/W3lF/hqWMb0FCSZKvN0HIYjrg86n5ukDaUQo/EFERS/GkKNPQTqexqs9VVGMC++tKSY3QQzaiMQ0soJQXz4TTMMHwFwaL0XKjZBwKajdM/GPddugVf2A4kZujjqlSz43Nsjzb+F6LFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707118697; c=relaxed/simple;
	bh=NDAjb3rwnz24/18y/s4dzPWDY8zwTOxwlDm/defpw+w=;
	h=To:Subject:From:Message-Id:Date; b=tcodAknvjSqzZDbv3X/oK443yjLN/AldBWOe/r58yNQAkGDP9E5CoE3dWszFeE4tEOcU0QB0jx18fnkVqCr7qhqvb30KWOZyN04psC/r1esg3I52XIjfNB4WtjWpz8Ql/dD9tL5nuEQv024fkhqrJaWqcdTz3ArAIqGNsCRjJvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HugWg8GK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HugWg8GK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8828AC433F1
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707118696;
	bh=NDAjb3rwnz24/18y/s4dzPWDY8zwTOxwlDm/defpw+w=;
	h=To:Subject:From:Date:From;
	b=HugWg8GKv71/QlLH9P+vDShJIjGU7JrG9V3ohjuj4duKiKjMy/ejNAbcqGkFy7BVl
	 wMpIjz4MJCybU7XS9y7U9dbwuGe+v6Q4yk64E6O2Iw7Fxe5Zqla66PFEVytviZYn7a
	 eWL4FxQBfbxNxpmubK0Gs1jvWp3pst7dWJNGMX2hZNQdDfX+uLi+f3qoQMkGTFVkj0
	 oOtcj8SUy39qxR6oQVut6uVxYebsCv604ekvwRhGDOMqFrWn9Hd59MF98pNv4U1sdo
	 u4UaH/SeBHsNUxFvXuWGAIwBpvGGwd3lsR/fPnaLL2P+XDlfrm8Q0QqGMQ2k/nnXnV
	 cIaxPeAePY5nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DA7BC48291
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170711869641.13586.5991558490568257020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9706eda4160fe9cfa6f89796127636fa64844508c6206985ba34abfdfd96da07
Date: Mon, 05 Feb 2024 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707118696
