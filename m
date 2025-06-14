Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2347462
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749865794; cv=none; b=Hn7qHtZQ/csHpRSVcaNNhB/2m8AeqOyqxbONKfKJfRyfSEwdAioDLEOTHzfKqf1i4x9pQ7+/rPsUa85EPuFqOJOblNooc6LNpHtXgRRYRZPf5fGj+fG2/eeYcf/jtH7ui+7ZkwsQzI1SC803kwFn3DqSwkJfNwX8SFjJzzkDuR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749865794; c=relaxed/simple;
	bh=nHlm2K0Ul3byQhsFQQhitZ2ET0c2hfNPnpA71wad+UM=;
	h=To:Subject:From:Message-Id:Date; b=PJYXgpVRql9WSfVyvuU0GLAz1CEOup4bLY4KYQ9RTQkjK3A6D4vgrIt+LS5+EeItUviYhng6ispLXH4hC7TsmRpJ5MiJID622ErH6aRUKh6VZHexCNciZbleOxsywuNh8g3vTzWgB285JGD9EzWQQ+9w/Zt1HHh4K0NzeYatfIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXhEHD78; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXhEHD78"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5F1C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749865793;
	bh=nHlm2K0Ul3byQhsFQQhitZ2ET0c2hfNPnpA71wad+UM=;
	h=To:Subject:From:Date:From;
	b=sXhEHD78U1YUAMA3L5btpCAfwDcTPX+yBymoFJs2clbFnhONk0NHLS/zkxQ6JzJXT
	 Z73Bb3/Zi84vlV4qKqOFA+dFJfB9tfl5aMRBnzwTKS4u6zSWdC8qFF5dvNSZ1NKBea
	 AKO1xStQM7VTrvdCYQKvLxn4qjh8InBUgsrmRafnrWLUsuXvtAZb4LH+bK4u1fB2T/
	 rYnhlCQamn+WKWXcf1p4pE7d84BqF0Z9UWDeu2n5l63iGafpvedsKzOQtPBOGknaki
	 FstELRS9RFDzYPMhi9UOyO2f/VqNPT1EwmBEbTnGylmELppZpqD68Q+OoZBK/kQfH7
	 OO8IeLfmv5Teg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE39C71136
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174986579357.4646.1858623845760949842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0ed99969d090f07d19b586c0c3d79a1f7b10f96ba81699596e9b78b688ab8cb
Date: Sat, 14 Jun 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749865793
