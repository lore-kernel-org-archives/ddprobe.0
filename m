Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C30438B
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 01:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719882923; cv=none; b=MDStKlhBX1rdJ9O2b/n08WL4tEwsZDTzU4ONwNMHkA5UAQqgoavc9xLg9jsXQorC+CPXDt5Mnew8AOMN1aQ90FFWQ7HGj69Ng4OGQl2B8rcCS/rwAV2DwRtj+BxGSXtlDDei2QMv6+p1SvE7b/ysXTHprtBtbPWwOb7Z1aG3HvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719882923; c=relaxed/simple;
	bh=cZKEzQM5sy9wDWAy/V44DnE7bgA5Y+A2JVDOg3PTnas=;
	h=To:Subject:From:Message-Id:Date; b=eBMnZ+02L8wHFzxJQpkodFSWFqFp4SyfVmFxDZBQATapN+j529xHyK/WDaJ3QyCgqt4oFlBX3ydspNplQ0aMnoj+9z8Jn97t/WQWfouy69YKWFVA5/6KAEfLONRJkVtIAMNeCyyam9de2iWY9sslf+XBxs514qCKFgkZdIqYTKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NynhyD/t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NynhyD/t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E04B2C2BD10
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 01:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719882922;
	bh=cZKEzQM5sy9wDWAy/V44DnE7bgA5Y+A2JVDOg3PTnas=;
	h=To:Subject:From:Date:From;
	b=NynhyD/trdV38uAv9wRm4QL03zoS+lKqQGgH7P7NHjcFZU2N4yYqZvqq/I7A4r6qw
	 WOAtDl+50WfYMcDhVLEZG2izD6HYS3SAveygL6wGUQtW9ookBYbPf9VQytLK7ERcEq
	 YeXSiVwh8A95XkolBuUG6BXUsNo59qY1PWbTsHl6EDaE4rZp1A9MwHYKNXRvFcEkgn
	 iKaX9BOxxJuZMvhlxX5TUOGiuMOZ/bF0YldLSoCwhjv5vhgjkOJNOYsnGNQ05L6OgK
	 jcIUE+S5EP+gOnj+rzKNXmxThykPqbV4Jmk0EjbcW0alCYCcL7bWThyfW3MTd7yW7i
	 wFw8Z8xTOwccw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0782C30653
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 01:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171988292277.23377.1806599521231513127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7df74cb8a0f8e3a5cde09f672f103e5e2d9c4a63517212f137cad33b7a8d944
Date: Tue, 02 Jul 2024 01:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719882922
