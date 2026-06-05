Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72D8937BE6A
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 06:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780642474; cv=none; b=sRo8Tt2petM8DMTy07d9QIPVd1eV9J9kNtKdxq/BiQMPEHttTW85tnmPmr/UlWUykgUeuYxQOfDDkNhJld9iMwi345KzvoIub5x6U1TeAvb5nYLrjd2JLeRlwAjUmBmzHrolOrya4pUNT7rrACt8uoHK85uYFj9zEgkP1ZCn2Oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780642474; c=relaxed/simple;
	bh=We0JidTXwjTHIjoucE4CSIG42UjsQ3X0MLPyE+F2284=;
	h=To:Subject:From:Message-Id:Date; b=aMneTyNflcADKUzMBceFs6CLCx+qRkfI68dR9W8OVUBhB0rij/WPO6M3BZEwdc3EUuUCg0Ejq2w5RG9VDuzdY3I7RBvsZmcvCfF1M6zRHPITItKLw6+iofBZV+ZkjzmwUDfkFCSVwv75+vc/78Yw4d1ciiOx7rGRvCmH6unyLxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZLoVH4g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZLoVH4g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC6BDC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 06:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780642473;
	bh=We0JidTXwjTHIjoucE4CSIG42UjsQ3X0MLPyE+F2284=;
	h=To:Subject:From:Date:From;
	b=LZLoVH4gDfAqyxd9C8oJHOc03PxCHeaVqbGxY2UfJJEnVxA0Bpk87nu7mAooif/rW
	 7DyEI14tSN3U4c5w6P7HcdGul3DpYF5MRmb7O/c2Q7UN2CiCjXh809BtJFlZF8Dz0I
	 Mo+Uga1oSIHYliS6abZXpPl0cVdMoPIxzS3ZTGn6qg7eQRkGsPA7Ag6mjHc8mxpFQn
	 rQAbT5iXRmGl/SlxC2MOJHkCpxym+1hT2TeGtvVxGM2E9+tH05QlIaRsDfmhPRtniF
	 YAKjjUfPfGc+aEVZRU/T9N6pEbX9Iby27ysH/aKChYCafK0hSoqHNwNrKsYESCRixM
	 5/ciIFhZqCq0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8BACD6E74
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 06:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178064247370.31288.7871009837874861845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6487d4357fe747f8c931edabbe16d011c82192b9c7d2155e02c8fde4998a9fa6
Date: Fri, 05 Jun 2026 06:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780642473
