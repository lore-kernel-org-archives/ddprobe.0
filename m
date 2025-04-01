Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437CC7E792
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743467994; cv=none; b=d0JF0bkmaxoTceDr5WvC15s+jmB06CfVGbIEenl9hoi7kMy86Db7e+MVGeQpnrK3HDUT9W87B3G8rBlxgYvmTFDkreGOihYmTy7ouae8w0MG6WfmJwNe4L+StBlNCBNU8WRSwi0sB86PfjmxZ4NoTNYSEjXW/tLEDfCNl1M5Lco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743467994; c=relaxed/simple;
	bh=47dsncq+nSe4LB/M1/mgsJhQQbhCJ/+TJA3VjgJv4ak=;
	h=To:Subject:From:Message-Id:Date; b=g22v6iOv6ruGRetRPcy33/tUVmp4to7zB+D5x1EYiz5FBReuNct9eLOzTAv+FbsVvxpWMavL0ZQn1HUXCyX/AjylheT3QmxINdFPIGINETtT4EoAKBeiBrTL9K3zuFhKGFWM4iI2P5Qfh5CT6sOnuiiJJN7oayfhEJhnzjXdp34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KU+gOqoR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KU+gOqoR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3177C4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743467993;
	bh=47dsncq+nSe4LB/M1/mgsJhQQbhCJ/+TJA3VjgJv4ak=;
	h=To:Subject:From:Date:From;
	b=KU+gOqoR2A5DzK8+5jUUa0ENyEaCLdRP3lTGJfJ42K1cwlA6bHK9ELBAoPUJo2qrV
	 GlCGyedvVUNdU5Ofq/AKHbd9uufQp1XpmBxdGCdG7ZastGf5Dwvo/YF9cQOND3BQjy
	 7OFyPrDUSMPwofD5SCztR6MJHlZ0KWupUap7YTBaBK3+iYaMyNlQfBznnoVxa1HkPK
	 hCc6zFAbeemu4A2iI8CLfe/jsdmJ4bLy/G7mvXhrm/9lO0xhbF0OnJ0GQ2HgRHaLuA
	 aTIrMJS7GVkDi3elRaqbNJ4wpNwXNjdrXRJ1GXXVSI17rl9pWIYowjqSUooPzuNOGi
	 JAYY+JR9gx/+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1DEC3600C
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174346799362.8231.11442594189351083535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bcca1744f688e15ed3abf249227836bfeb40cd954fc8fd2f99abb1721c0b0ae
Date: Tue, 01 Apr 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743467993
