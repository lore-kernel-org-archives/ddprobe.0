Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419A2313E32
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766450634; cv=none; b=J/GmP04w/ZCgvAolDL8zaFZPrx+hlVFhU1GpEAWnEzLT/GecS1KotksuuarkFU8qj966ysHxg9CtAAIOtGMxZrC0YzkiGnJHBswieR0scGXNKADXht5wAOsze5tAjMxaqQsq9jG22Pq1Ky9dY6qujiGm6CDF0+xkuxw/ailRLww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766450634; c=relaxed/simple;
	bh=K/PCDExdmRdKq1ygQan6xoOQVB9joNs8KsLAWI55EnI=;
	h=To:Subject:From:Message-Id:Date; b=DLOkwsIEVDCQMTmTNyghiroeK6rPXCY77D28eSNdgPGabGwLulOnpOzZHGCVmVWy9NZjxBeUimvPpKdUbDLA1YKLq/buqKEIPxYvC58cA2zNrQn6WvUeSs3tHkTL+5mTRROnoYUTQCLLnS6kczC1Ymm08eYrz9Qgctbs6hT8JWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKmnsCjm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKmnsCjm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BAA2C116C6
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766450633;
	bh=K/PCDExdmRdKq1ygQan6xoOQVB9joNs8KsLAWI55EnI=;
	h=To:Subject:From:Date:From;
	b=cKmnsCjm8Cu/HTXeelB21frY0mLBJb3RBEzLBzsJ5NMPqauEpKq0qOGfkCkRRIbFI
	 dxmnrEly7C8Mo0KxhpAtLz8SsMJ84UnGx2yxzEj0eH4SWbd0fko4GviO+YqY5QqS7h
	 35TH8bZOcKK2J13V8OTn5WqXwCzMgnY22af+EQLnSk48vwyvMH9fjJtDgWZ+p82w0/
	 rP5cMjxywwXNwV51uTzVBcqtImKzU1h4NgoBl0e2PvM1yh+lhEjWWwBh5N9g6x5DmK
	 AqvRroc/0b6oAeBrWMNxkLwxjP44LVQxiTf2ZoNCCARA3os+tZw+iaTuHEQ1OBEcdj
	 HahWYhrr6A10Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901F7E6B26A
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176645063358.25859.9761437828975308428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eca723e01e36f352fdade01621d06daae20109aea0832a67d085a87f040ddac
Date: Tue, 23 Dec 2025 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766450633
