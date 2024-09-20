Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3784518EB0
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726856154; cv=none; b=pxJrXwpctjdwendGiLZuEFI5NcNz7zRtmLNj2ZInX0qBoIkn4I1J0HLgm65yrnTHkNKiCY2bGx4SHGTlhSKvC8cBD5tNFP8esaC+d04Kpa/ohoM24uNVajeRpMdiHVjUAtYhuFtMD3zww8dLLXUmZBuWKxBJ2YrJb7f/7eKIeyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726856154; c=relaxed/simple;
	bh=VScHi6Kj4Nl0399QjkWJrANzV4T8GmYa5kE5K/LkdV0=;
	h=To:Subject:From:Message-Id:Date; b=bWEk5OdT488SqMuBQo7oguFCYrqRa7NWCebGb/OSMQ7K/39HIzoGCSgi/idkp5PeEUZSF1TZ/Rg9MCNsnjmZp7E5w60nyI8m8L/rN2d22azBddiiFFAjFEkFPyfbvNBQsChzX5CUL6glgTNHvXPyq3mevOeAlSSpeGFglbfmUas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kSj6Bigf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kSj6Bigf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B9BC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726856153;
	bh=VScHi6Kj4Nl0399QjkWJrANzV4T8GmYa5kE5K/LkdV0=;
	h=To:Subject:From:Date:From;
	b=kSj6BigfYH/Eov/LifQ+gWp+905aAl9m2esj2yqxyIRniMSGCK5X8Jrvh25kXEpYL
	 m2cd/FxYwzRHXbNaxF6TxVsxLevqrwGZ1tlNhj+ZMELjm5/LmpLL5V1A9/NVZ/P+MU
	 n6pfIvZQlVwRnl8tRoTxHptyFJM1u49JIk0cVqFHoBfiHutLJvUyW7QuCPs8H8x/f1
	 12M1luvLa2RvY/xGltBkEjkFLlX8i5qMeB4cmBpb2H42ipmZBYyLNXP0eUMXtbrIuN
	 IQdal9oTLShr9QhHL/Nvi1jitXla2C9RZ2OHnNbnD6sIQlz0uFODS5JJh6Y2EMNqWm
	 L677yVY8Ns6Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0C2CF9C5F
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172685615363.8610.7955157614954465706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 367acfd7e811238020c7de8a1acc05646a919c35bada5abe4e3a99a37c35dcd4
Date: Fri, 20 Sep 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726856153
