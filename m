Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCB83624D9
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 15:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778598034; cv=none; b=EnfIXKaBE1jrU+leA4JkWUa6+2nWdC/wRdQvVenowtF/wYiUDUfZh93Uvt1lZGq1tzN2tGiY2cIiNuwaDIsXbOLjoGjW/F5tbLnHFDivNHYcrv47fHpJw+JkTAKUElsSDSmxgCQvPcwXhdp5jNjy25GSrnjYd195WxQZMwtfCjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778598034; c=relaxed/simple;
	bh=qzShj6JehABp6ICS0tdbWkofyuQi4gOuMhJqqgBH7NA=;
	h=To:Subject:From:Message-Id:Date; b=QCHyMs+j0fAzRvJ+9jJBLR/ygJm2P2evF0gZFvPCLTnmQXlVi0W0t1IA+41AJRGXP4mcEUNa+yewv9SZYvK7WG3cLggAmxB2eZD+z+JAaK8hQ7sp7n2/sIr4X839J0HXHVT3B1S4eh9Y8XajKXnIWouYX0YeTA69tazPHcyD2tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNbXa2Q6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNbXa2Q6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6AB6C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778598033;
	bh=qzShj6JehABp6ICS0tdbWkofyuQi4gOuMhJqqgBH7NA=;
	h=To:Subject:From:Date:From;
	b=GNbXa2Q6ywtVYLBePZ1NZxXFhDjg6p2VEz4a9JZ6l7/6hEy1RGGECmNvN/fmSkW6o
	 kHHQsb+5uv655uR8LP54wksDsXhUYi16NSkcHAj4w3I9u9RjPHp/cKk1F8kzvuyFlJ
	 H7LN6BLA9tQWuUkZyHhukRG0xey4oB2AYGi41yqvuJiVYKFKagRUICvzWsR1TtwyH9
	 8p6W9sEFn2IuZO2p9bZJcgsg0Q6589KdyKgjK2vBrdRXlXufIZKMbUk3mUtJe1YiZW
	 GoARXZmo3sZmziaUVWy2dYMJ/UZ+3k5uGfk99H5EtJ0qGXw/CZ0jJ4vHTlVmcWpvVX
	 mxGVlTOav5LmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FABCD4F24
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177859803368.31989.5752781925368170333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 041b0b7811e63a81d1a0fa2a669ea6f4951339c31420941b8e4aad0add8491f3
Date: Tue, 12 May 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778598033
