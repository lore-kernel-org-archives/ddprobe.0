Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4395F3B841B
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 23:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782428854; cv=none; b=SYXx4cmmc90Z/sXnql78OQB/NbccSZHjV1H1/cqG9L+sgJfpmqHlOqhGNn0CWlnybug2eEy+p2scg2KiXoY2u+DIWmxSVO5IeMyeEJer3iozhGdKHRBwK52/ov4C8ZFUJYU3lkFKINsVDKhOoKu4nZxYPGg7hTY89gJBo04B5oU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782428854; c=relaxed/simple;
	bh=BccJarNdyqhmLss9U6FwPruOZyjeKc8OyUOgMRGRJVc=;
	h=To:Subject:From:Message-Id:Date; b=UkUaQHQaBDnw+AtyB1DrIO8yT9G+/HVF0uzBU4iZuJGb1vDrQnW64PZ7KVUNDtC8jMx+DszXYBmsgWOLJffbrsTrowlFdOL2psnXH9GGcYbqKKTsFFlgQyIgYlCbzVdIZwNULMI16jx1L7GjjFAltovJK7ACAfsoPD0Gp2+CWZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2kW/vIn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2kW/vIn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD27BC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 23:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782428853;
	bh=BccJarNdyqhmLss9U6FwPruOZyjeKc8OyUOgMRGRJVc=;
	h=To:Subject:From:Date:From;
	b=i2kW/vInabRj8lHLaJ8nuxfk6EWYFulbQLGF0xrJqJ6Jj6GFH+uCeJ7tcxJaY+C8I
	 cY7yoazNVKxu+lOSF1f94xcLJG7OuvcomQhKhj3DgnxH9GmnolP44z83wwgrphhRC5
	 z/sTYRxPkv/A3Voh6moYDB7tmM3V32nTpgK3133x/Ha5y7vKguB9umTD/ItM3WdTAS
	 ynkc+BeS6gWteZOhNCCHvQDnf0LhJT2+eZ+zWZaOjVpCJnHu9G0GEHOdvUY0SeOeBF
	 becEvz8jBJ+s0qnyV3eMxyDOewOZMjpAUCPPrcH4TlkiD48Um4mw2GoZg+rV77trsn
	 P7FJ8sZXWRTmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5A97CDE00B
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 23:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178242885371.29845.8746542494507515607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdb005583cf69f2e3efc1865ea5620359d747cad18a1a17dee92d7153b9fe75a
Date: Thu, 25 Jun 2026 23:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782428853
