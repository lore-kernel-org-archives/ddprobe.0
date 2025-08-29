Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E10E2E36EC
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756459194; cv=none; b=m2UBjoCZgKQO5kLqtCpt/rpWV4Gmoo5iU/as3eUoCX3DIKevFistmMghYz0BNu1yPKB07gEx3WaYX0oArjoFCcPquoAf2sr+CjjGLebIb3RF1lms6VHvWLfEuu+P0pUCZyFEIXlZdm0XiH0v4Ip1KAKFYOYwOq5gvkw0tcahhFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756459194; c=relaxed/simple;
	bh=DYjGPIlSB/s3UqDE4MfvI0gRlwMK6Nc/Z+Ou3+vvTjQ=;
	h=To:Subject:From:Message-Id:Date; b=ddvRacVBSLjZ12yWMjIg3P7iVtLbscjl8fIZy5aIYPGmB3H5/eVGlZ+8hAmCJqd4ncEP1miLvUDyuL08ou+GVnueYAqBExkC9dCNA+zjxsDMyokdTG5E2mRK1gNP+QfFMX8Q8n2F1ECGYk3lvZjzq0G4GBW9iWa0hbGADS0rec4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNwXij6x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNwXij6x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A109DC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756459193;
	bh=DYjGPIlSB/s3UqDE4MfvI0gRlwMK6Nc/Z+Ou3+vvTjQ=;
	h=To:Subject:From:Date:From;
	b=kNwXij6xL1y1YNtUoARNOQ1i+PkrgfMBJMfgb6wYhmZLixmobCi96BydBjP4MB8lB
	 oEyrE5BLtkLsWA/GDYBYOBn2Pm5rfnbv3X7eFLRs2cPrs2l5v05zFxABx3ggIlNs/J
	 FCMABFn1rh3TU74q5ElsSUuuZpIiFbroFatLe2oQyCmnsK+fdL95J2zhRzjeIJn0At
	 IVW1FZmlDyGo0tkxmF55KMUG7FCrL1Lbq12tr0X0iH8M2ZAfQ0dOopEt+ErmejEJZm
	 WBKLebxFRuI7l358r6rUXvCnXLZIjfKU8ruvEV4rdkCNGqgHnwN6+LebM4OcEG9hcc
	 vCparf4oNNpmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F250CA0FF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175645919357.11763.7303350974642419040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96c08699777f150fbc4405f9c38462c5a96f0e07f0d4b49f65f2b81d8c42b217
Date: Fri, 29 Aug 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756459193
