Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EB31304BB2
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787113234; cv=none; b=PjZBeKsZtKgMExfL8ZX+3QgBDJi/fVuCVTmu3F9mCKZmVEepaK/ifU2G+0buV1xQU4vSULPCbD/myKxQZACcpGLjr68AxIzfp04zDCLh5UxeYGcq6Q3SmBt8xUpuhbGGlHPitGnhgWMQzEbXAZAdhfFh66Vj0KYFoHrHr4qVyD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787113234; c=relaxed/simple;
	bh=9zCUM0POUAAe05b1XX1XeoB8n4YS4bhXyGD89a0DOwI=;
	h=To:Subject:From:Message-Id:Date; b=djMO826t8Yxxk/hC0nO+p5vHTiXO7hF2QWes8vu2W1QK5XfW9cpAeQK3gGDHmqYOIHuzfGO1oLHOY7++mg97XNtRwSZ+jdsq8WpY2QJfSvzc5n3c74jqXTOXTuWH6FDq2DfhMliMSmfhhp80UNU7NVRR9RpeE1b++IH82HPbS4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NlhRFqAC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NlhRFqAC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF1F3C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787113234;
	bh=9zCUM0POUAAe05b1XX1XeoB8n4YS4bhXyGD89a0DOwI=;
	h=To:Subject:From:Date:From;
	b=NlhRFqACe/dVlhhWeLpRzBajybBUhnH/G8B/dM2si+tt6dirWO6N/DpRoXWiYZ4a2
	 67h3dF/8Fu4QuRUoQKIPwP/jDl4jU7M4yXKYLBOZ+NAYatlwaaj3shiNZNsuZNMusb
	 3liHmr/Ylj/t0Sa3OhBb5xSLo3kOBEFtHnzHnlwKRzckSHOqWJmVNSzne88Nntb+S/
	 7Z8dP0T7HIp25Zqec1kSAHEe9kdBrJMIslrfzOcDPXljz4lkun1pD2UMCoX8l7StUs
	 z4GteaaDA3ES0NTkLsKTX6GdmYp32MtEfZuiPvpc+ND0e2BL3+CSn0GyZKtOOExCPR
	 tKlYirW9atJNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAB77C5B572
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178711323375.1617.8959111771747761673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 480dc427494887db5b8e0864e6ba2e85ace3a22724a5848a4fc771be34efd22c
Date: Wed, 19 Aug 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787113233
