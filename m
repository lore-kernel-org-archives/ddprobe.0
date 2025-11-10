Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0802F39BF
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762811394; cv=none; b=JZD3729H+2slhjejM4JFQ9LvidaS+tyhX1ZNlrdC0Nbw6RIPGOboZ0yEy+11xE1OInouJO9800jmADVNprx3Wp4O6mlxvHwm89nwyPJVTuSyCyo+xDCW/DN7V/lWsKVk6IjiZFQ0SpR8WM7sKs4jZmZr5QuGZ/VYeyQuL2nroM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762811394; c=relaxed/simple;
	bh=3D/b0icrtd2T0HLCYGTBQz0xFQ0J6YSDdeLt9FrsO5Q=;
	h=To:Subject:From:Message-Id:Date; b=styIVWMjNEBTwS9IxT2VnljH3L26Kes/2GaMmi8s3cO7jYKnJVdRRtrxCNYUm74lhyCxacBIz8Cy+bVkLuX8bvfkqhfDyqukjEDBh/RrIIUGbl3bXWtYccNshRElrLCgLQgPNOpkya0skWnW1tbSvnrh8eXJoJxR6MqlVClIVXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dc27vHvN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dc27vHvN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27C0C113D0
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762811393;
	bh=3D/b0icrtd2T0HLCYGTBQz0xFQ0J6YSDdeLt9FrsO5Q=;
	h=To:Subject:From:Date:From;
	b=Dc27vHvNnq2U6fqXR+ChjNHZN9Fr4IAQLaENAl6LaZBSwEDXjMjTHOKTTPD7HP768
	 okKeeHfZEMLqHv6H/UUqs0brsJ3vAhRwJGBMNF9yJQA9j53XPfXSg3oXBvUhTEPA6/
	 ZsDk38IPjSONCiyDc8RQBpxwCZ8Wqsx+xjSMBXuhH6eR6jkdfIJCY3CpPit6hg+5Q3
	 GcRe4DLt/Zcr3U2icUyJrFo/IlaDGGqpb/5kjQnX+ptgp7WQy80fe28FoXxASCGHW+
	 p8+ULeD4ubNuEM34yXE9xJoqb/OLWgysQZGZwooRseGnprvo7kwGg8zY0FkJVdRqnO
	 MIJzhjC2NC2dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9207CCCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176281139358.32132.16438053563662619439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39728eaa5a87e93b4cb7b1e4e86cc92b51bb51e69951c5590cccfd38f03e955b
Date: Mon, 10 Nov 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762811393
