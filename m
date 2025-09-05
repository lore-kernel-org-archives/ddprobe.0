Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1711C163
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 10:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757068195; cv=none; b=ovnlfLg0+8Jx8HTjFFSoaoZGQNsOW2jv7uAKNpV7CEnDnO9rJ2wD21K7UNlPqLbpkiOoKrBqoW8LSw0MpDB55/OCv17GxpQIorEOK9A3w8pLRYkeZqyGKIgS+0P92MepFAucwRim7j8I7t5Y8B5JgLNjYytgO04EHJ08PvL7zxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757068195; c=relaxed/simple;
	bh=TLRY/uc+T3stvtBWIG6ep3hPdxA5zCmzDHq+4ow46dM=;
	h=To:Subject:From:Message-Id:Date; b=qUCk/7FPIQtLUhEJsEIzWZcoQK0yeNFF6oyANkGTj5gACFWaCFfX2LfiCktQgp3jrNTHYFhFDzSP9Daej/lTmkWh/T2k9SS/afxwWT0JNAkd/zYphMK7yDHZMC+gEsQW0/7Ht13psBreZzFPOLP4CkMGQq1iQBycAwvuK4n/Zs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fXM66vQw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fXM66vQw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AFBC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757068194;
	bh=TLRY/uc+T3stvtBWIG6ep3hPdxA5zCmzDHq+4ow46dM=;
	h=To:Subject:From:Date:From;
	b=fXM66vQwD/ixXWFA8K2fdVFjMzTMwuuNqjpn11U6yaugY1kvqwo5wjJ5bpZTtYwBc
	 Jv8xpnwnBvNf7hOP8qSkDRFU4CLoBqoAm24oVLjemVpYrXuykbRoueoyfgKZSS+eWs
	 xLEDnTiw1CH1gurYeDDWEPocys5NBX/9OjqD6lJqV/h9Xyypye/wTbueEb9yUbxzV1
	 vJKHJcSALvEtE9r8st5nnDbQ13qJWwmaXy5opYASozpG8orciQRcmSXAe8FzX0ZZm6
	 qrwRWt/cVC2DFmMgCGbNT6CPdSIcVCwzUeiOLuYN8w5hixUspUvdR5xLSYIjlStKhK
	 gs5Krfa2H4QWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DB9CA1013
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175706819358.16909.16059164255895401321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c48542fd8d14d162031f44db8607093447a8fe054677abcdfab4e830239a456e
Date: Fri, 05 Sep 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757068193
