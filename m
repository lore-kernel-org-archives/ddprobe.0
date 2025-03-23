Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7CAA1F3D3E
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 22:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742769594; cv=none; b=i8VpY6VYoYM1FgDAAkAU+RfNs8qTkFfFtA0PNzCy1UzvYsihB2SCkO2Pxz6TJ3jLna8aChCq9YqG6VdN5J72yyCePeNZ9i6tmSlfJUrO/BSAEDZs8jRmn1xIL31KG2gvthhtpfHcEcGzpdOeNqIkcnFPVfycR7EIYVN1ukSWn0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742769594; c=relaxed/simple;
	bh=f38K52gA2aUU9NO5/+wYWlDNe5vExg6Iji/Ig07Sax8=;
	h=To:Subject:From:Message-Id:Date; b=baEiRlCKDLY0NOc/m9tSheaoVNkp3djMcr8j7UkEBi69lJxwFO1LuYQzM9OVGfuSqLZRelg9iD9qCwRic53M3wR57pxStatQAKfdq5n4CU40U8SLxZfhseRksPChqxV5f+ZM4Gnv8GYSSHOAWZxKjfB1ACJlNsbx74BNTCSAhGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNz8uYD4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNz8uYD4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1AB20C4AF55
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742769594;
	bh=f38K52gA2aUU9NO5/+wYWlDNe5vExg6Iji/Ig07Sax8=;
	h=To:Subject:From:Date:From;
	b=tNz8uYD4hHgeCqZf/IOxx0PIZ/E/lj4P3Du0oHzrZeUXU3mwQ6ZKAs+o70+yG0+6k
	 8wkMGJxwPEmVI7c/6IRaQlpwdwX7+m2ShpM7cgawUX7oYJRnszE6GOnEtE5z2mynzh
	 BF7YYq43J6Y1rsn84DauMWLKH8klyLgM6idW1aoMaaNetnWe0xIScC3GabPVpfTdtB
	 A2U+zcsjwV/CQcvz1L0wX2AYJ1svh/xglsvDSZ/uLZdufuwGxBNlAwrEEx/hrPoKao
	 LsIbyXGifBxPKvB012c/nKR7aZZsjROW3HHOQp+toGUSO2M20bK+SZBRmZX7lopwf4
	 WvUUxO9qS1ptQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A60FC28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174276959360.30417.8107356388458562627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b867e5e6392abf68fa7ee408754edfe4480d498ebbcf20e90851c85d6c140a88
Date: Sun, 23 Mar 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742769593
