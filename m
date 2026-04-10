Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B46A3DEAC3
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 16:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775839054; cv=none; b=NDpXWldpnAUk32UE4w0VOcTSZ98VEHFiZh9w8hrLAHbRRUeIErgp9ZcbeBCPFHqc7f3VYf/sS7963YiZGsGDarpmtuEocw8Ow9xGmQj3EDAQJqMnDfQ92mBJFHMp29vKunZE7Cb0HHL+Wv0wwbp7lB+NOV7dMXSHKFwCtjxzlfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775839054; c=relaxed/simple;
	bh=W6FB2U2j3xAsDHCPvhNeI/ctQdU+ARFP7UIyyxh2+XE=;
	h=To:Subject:From:Message-Id:Date; b=U4xzhDIB5OMM2Ol0FdKyWnwqGmeVyh7kfywA3ajwQ6nmsj5JE2IlGra3Uz9rF0NxjzVHE4V7UMlsIz/VimWHMcSHh3ZWGYEwAErPsYF9oHNMhXx+111GTUCHh9kZERtPgvWTNn5l8oV3UqfRqlogMHiu49+ZzgTCXt7M2js+P0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h2DQ+5y7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h2DQ+5y7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD152C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 16:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775839053;
	bh=W6FB2U2j3xAsDHCPvhNeI/ctQdU+ARFP7UIyyxh2+XE=;
	h=To:Subject:From:Date:From;
	b=h2DQ+5y7PMNZKKX/1RO7HqdcGB77R4BHPVLv3Y29eGNWro48b3eUuKMcGhFkDiQDD
	 ofSr1VW3nWfq+vkfNz61yNV9N5370iwhAciZoTzDHfH4WcEMdrIa+QQbWqHfMyJkGL
	 kPZsA4f4UzsNY3h9lwsoSaE6blgjWUY26jtsAmWD8J/Pq8vsoAeqiYVF5sA8yWnS7B
	 V8IvYO8k+LNj3jsuI2uyJ3T5Ub9HG+BSiDVLNvUNW1ZmRt2xfSYsdlhU0yWd8cmDly
	 SqW8FZV9jP6s7SzSbDF4OVceaIyxRXVw5T1uMZd5lpbxEAnHfLIubFcccQdTNPZYwG
	 HM7R0wUlFQa/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD422F459F5
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 16:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177583905370.11838.1685730768381196891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12bd8cb1c5b65d10c81948b1743ee8d3ddd2b667ed4ea6baa98e9ff69ce4561d
Date: Fri, 10 Apr 2026 16:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775839053
