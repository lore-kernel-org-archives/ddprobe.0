Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3279C30BF59
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755193194; cv=none; b=geqXlIQpw1r5Fxrecg7BvZaszqLeYiOoq3NBsuCpUpoqfRTsjwFexfzaZ8lxwNoIbMlcBhyw91+pvVwp9oql7jk9yW0DY+jEytPhw8eTFONtneRHYngwS1sUjHYMr244sHaD+vgTLSQmxiP/zzACZSJYWe48ANgTcy/Rq5LQcYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755193194; c=relaxed/simple;
	bh=nzs2FXdsIq4ZaV9fG/BGB4lFSUDOqpgx5stMRKvKYGg=;
	h=To:Subject:From:Message-Id:Date; b=u5/jzjX6Ymhxq7CzhBq/Ruz5BOBsstxZ0Jac8tKkFPhiZUGfygjXi5OO7RH2OM86Mf9+o8CdzStg0n3jTV6Ei4tVwgojvI6qWG19Tt6FS72sUYiNT2zbCWZWHfp59z11ercqmbqYuF/okdBsEn+26fh5y8eIq3cvGV9m+eGZoXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e8NgFcK+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e8NgFcK+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3122C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755193193;
	bh=nzs2FXdsIq4ZaV9fG/BGB4lFSUDOqpgx5stMRKvKYGg=;
	h=To:Subject:From:Date:From;
	b=e8NgFcK+59FuAAvZDyolVdWDabAZXc8EufLlnq5ZfKbpo7llt/HlEnhhP5/Vg/92r
	 LJl7afeB1YX9AEK35saQz2yyNFzO3au6SjoOOIrowhh/wDDaMxJiTFs0Pi1Ux65xYp
	 YBSGYHqBXSYa3iuU3/CEUv00XcDtIRDmNFqcKviI+UhlHTIALWON6zrHRZiu3S+cTv
	 32YF2KwzgLv/LyPyKHc8+n9KhTZKdcl5uXDuieYBQkt+V/q9sdG1EToHb9JhMNavnr
	 N+Lbiml2B/ApaVE/QYIVreVAEXU8rcwhjRevunrMxn836FEYUtJTgIhVUa0Ndoi8X9
	 iPAHQFrFU/nmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90946CA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175519319358.9534.11087721235474171135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84313ecf70447e537ac8288df57e81428889d74ab24ef700d2571d6185304b2b
Date: Thu, 14 Aug 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755193193
