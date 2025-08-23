Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3941B217F2E
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755919794; cv=none; b=X06B8Ax+FBEv8pZdFS5IaAdvFxlYJ7VMs0+50xFqZFJkbXNbozdDdY8r+S0XIyo8zNFTkeZAGWS5iV0kjY78IDBVnYPLGMOpuLIdNBYM7YlpONqgdpIIV5TrRh3zoIGGFMgJZw3O51WyCQ9f4As0+AtW+nwEMOB+KAhwKsvmWKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755919794; c=relaxed/simple;
	bh=NDSaDilQWJ7+uC4VCL/+UMHgHvPQqPGLF1+bZ/ADTlQ=;
	h=To:Subject:From:Message-Id:Date; b=VoxxDgycPtLNF1iG8wYXsYlhK0oICQpWy5aR2SekRxvo4lV9YqCgIyHDc0V8pGR6rt6eZmhcaOw33SjspPzT4qkvSfiPSYZy2o0P0VwAsP+W6+2Svg273TP3Qags6ZWle/tDDTY7kxQeAa3/NUrq5nGlMJv3Mt9LlqkX7DcYi80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qniY7rwM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qniY7rwM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CBFC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755919793;
	bh=NDSaDilQWJ7+uC4VCL/+UMHgHvPQqPGLF1+bZ/ADTlQ=;
	h=To:Subject:From:Date:From;
	b=qniY7rwMPpAdMojoOgXW75SWJJwJGjZGV5XnHBJ1rRRMrEaccVw944Ah136r82GPH
	 dVGur7I2qUyhiFassledQQdmp9ym/ru2XYJIcyHkZR6EohxKyOuzouOQcSXQzvrLgT
	 ecxA4dWpGw9BULfc0c9jz2crCZb+YX4tZB6WNCv9oVhMSf2bZ4a7UmyK1qn8z3G8Bl
	 ZR5He/LYZttj/F7fGlZ7MpRxrtklxEw7mzf0nJVN39IsZH5wllm+bVWgpARK5oNRz6
	 T7/Y0pbBIWNMDqVPUlY5kO2uD2TAkV6yWlYBklpFHQKeDLVLSN9iYULFPHHhf1Ezq2
	 CWXUesh3irIZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966C9CA0EEB
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175591979359.6291.14871030766990102271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74291f62a6e4e9e2d38ca5ff09077ede2ad329ed95eaa111118a97417191a8df
Date: Sat, 23 Aug 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755919793
