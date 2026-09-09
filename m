Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B241A6835
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788931834; cv=none; b=Tu5rLkPzkbhQ9aVWiKTZc2eVj5Is6CGCXx6BT2o6X6O7GU7BZPE0FPFqE82hRQ/gJSLeVIrm1FNXW/D8u7MMjbRyvmctQSLxzZJRqe1jxiT5UMZ48ElmvrZ/WQIBvRszepOwObunphNky/O3lxHuzAkHGWqUGwP6N6291N6tVQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788931834; c=relaxed/simple;
	bh=eqzWcU6P1EDFIy+2Pc8nzxZ50gHsy6S5RuMsQX8J6S0=;
	h=To:Subject:From:Message-Id:Date; b=q0I77lxXyh32oWyPcvC4fA1TamVdu9WgtHbCH0OJnh0X+Tij9tIm1C/nBocyG8UvUkyoefSxCCA/pYG0l1PzzcOYgq+bEpAhGVPV/LRJEYKFSexWI8RG8oBPWU0nTMLpBCtYW7VHZw1ajR7aroG0GwJPafZqyNWYAYSsukgdfGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OBxaiojm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OBxaiojm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD97C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788931833;
	bh=eqzWcU6P1EDFIy+2Pc8nzxZ50gHsy6S5RuMsQX8J6S0=;
	h=To:Subject:From:Date:From;
	b=OBxaiojmQqD0hf3jV6n8bGWyOlgkDmjs7Mzhl4yBBPFdIvky8LkPBYTvC4K4jVekH
	 R9ArWA46o/l0sb5bd2EZhLn37pZEIY4eIxuGqdSeekhucb0IXrKjB+q0NcjomMSTrm
	 gW82zOUzZEwvKFFIQjzRVvOxzO95BY1kMf3j2qQ34t/gvuxe8w6lcEEmGam414MYcG
	 33hiBrdzNDAt8oLoHNVJb9HzLronbrflcaMPQ7+HPhk0o3+5g2+G1aMNjuL8riQjfU
	 9PX95UQt0C7JklLnC/VmKeSF0DKQQblA/sk9xohfGNskIusSx+VUWwTEtdDMTiIii7
	 YenXVVbJ+WUaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A6FC79FAD
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178893183368.19294.17560146928944445523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efcc9eeaa14414f9b903dc35735037401d528ef694be01a5f0376bdf7b50fc79
Date: Wed, 09 Sep 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788931833
