Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD49F1F4E34
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745404793; cv=none; b=jqpLaYWfmA87P3bZ5BeFj0weIqmLTETA1jRP0G/vGQ9e/L8vBpLPvNL/nrks+q43u9cXyHxneLc/l2IcehxiFLJGkGweZf/k6XYq6iD1+BwjNiV8eeTtlwRlv7VXlO6QHBzUAxOLcNQTyYnHu1yQwHeTcNK9jg3XXtjOvlQ6EdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745404793; c=relaxed/simple;
	bh=lN1hQBrZEaGQsErn85DZDYd4gxTPGhRszNYM2uZM5Iw=;
	h=To:Subject:From:Message-Id:Date; b=CN5qse2on+RS1dPbfM9h/2cOTn3PW26VaBycZMyqXUicslD79+0+6o0UL6WyEeoxop0nCkJxAScbbpf5XVH0zF3igmSeg6G4+ElvC1dcHkOfFsv5Qrnf4PJymRnLM3rPY38R4PC6JB6Qradj5SMVVqn4h6Dd2wh/dSMeem2Bcs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cJGOoySI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cJGOoySI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBC5C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745404793;
	bh=lN1hQBrZEaGQsErn85DZDYd4gxTPGhRszNYM2uZM5Iw=;
	h=To:Subject:From:Date:From;
	b=cJGOoySIiamLpdoV3GhX/xsuAqKgZMoL31z2Nybn5GLzvlvhtml8/C7clVK0z/Hx0
	 inQq4LS8cAfSaCvjHuYpLpq8rFJKw6cOs0Y3ut6hJSro7wY52hCI8ykKieV3jaEIfR
	 xKfeH0b7qoFOwgLl2JwmyBePOYqdrJ83d7ohfKWYskxyk4nhxoX6mfxWhqCDGNn4aF
	 cSAAjKdwH8W//lEg79Y3cD8oSjy20EUzrwcGXwr+zaJUil8vSEv3h0Z8efMGycr78x
	 I/WEMTC7yuvDOcKdDy6Ka3AnNE2wNZy000wG36TQkbDIadhKXvMCw/eij4hK+Gzo8a
	 w/lN7G89eXTQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904D3C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174540479358.18023.4886419892522137697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0233258341577101024e60526252d5270de08bd64f65e834d2b2d716ef4940d1
Date: Wed, 23 Apr 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745404793
