Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2795C1F4703
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755374994; cv=none; b=UchR0L8Hv8QQsTOlni9vlyog1CHIPsXI/h62c5JToJJa0QwFfCAyAUKBUfCjyXZgqlQN1KxyXaIdpVdILG1/qHInjbxpdQSW5yWXvF+b/JeapnpFhMKqzSlYR8ttDWY0CIYBjOIUFGRzVlD4+XMLlWXue14FuIEvAZh2QgSxjxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755374994; c=relaxed/simple;
	bh=QvFH+pPecre9mk8rsrcEJg4oVE2kA7Oz42BSDXMQlfU=;
	h=To:Subject:From:Message-Id:Date; b=VxNIO9tnL51iOIxXaS1g340WnRqhQt0UNsmAFKZoILnviIhE8vGVcVsh6ke0R83ZQLOZMpIeQC3280gqxWjMTvLvq4DascublNnyxkJwDELDljLojWO1rh7s8rCwCgT8bvMcTaB01DXOfpSjVUG4IcK+2wmJSlO31G8wpXWYEQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iDjMR9Uw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iDjMR9Uw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7B0C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755374993;
	bh=QvFH+pPecre9mk8rsrcEJg4oVE2kA7Oz42BSDXMQlfU=;
	h=To:Subject:From:Date:From;
	b=iDjMR9UwhU6BEmp/Uyq0MMoAZ3sTopib9aMh9OWo5wgY3bU0auVYxAOwGUwxZEmVm
	 oW2MYhNHisVuxcvs51+cdkoql3ooHbvag3FAfyBjGCTq17jgQlHmnuW9Myl+JiyiHF
	 TIgIeUmbpfSjnEIjtCrkJmXmeJLL8jKNOczgqnIZEJcEpESf1tZzrDvLJASQ3g9Yl0
	 FFPxHyzONqayLAn3zKJn5DnXd7x7vK/aGQ23pC7OS8w1ymHfZsqGTiKiAhtkxmwiGR
	 gShWtV3FaEdwvETNs9enjlHRT9WwA0m2RDXD2KjzSEognH86T9VfbPpsMyOwjv8vCZ
	 ORvOrdnD3wS4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA99CA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175537499357.16796.5467615338259237120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f864f8c6df4b28960b578c43fe1be28a1fa4bd3fe389d42254c84597f4965a44
Date: Sat, 16 Aug 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755374993
