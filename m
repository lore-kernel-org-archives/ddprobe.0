Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34176191
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754480994; cv=none; b=vDDN1qQucGlXtl9WexCI0L7jZ7yIqp2hV/FpfR+qI7K1BcEkAYq/6I65awTlk6/nIecRYOoy2UU6lhXxaIHKYVRLuKz2MugZGpE0KtgsIvslhAotJ73RQLtddHHeKNx/HWmJ734bymlfbmHvWgwv13wfTVlCCS4OSyp4olF+dbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754480994; c=relaxed/simple;
	bh=iEyAh8Z1FPJBfKCJDBwlGvvKX6NoURRYSt/a3q8ts0g=;
	h=To:Subject:From:Message-Id:Date; b=nNloY/VNjKhObNOeaPEg0hsQLZB4xksaPN2QfowEdsxeUw5TkxK9B+QkFkoG1Ix5f0+RyEBxs/O2TgjaPwDsIjr96UWJB6Bd0KMG1fdUSH4nI+R3fw2sGEAQefDAIyds9VuN0cO8NWGJuR+UwGNMTIXq7/aN+s02/7f9+lb+FIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXhs/cW+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXhs/cW+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8830C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754480993;
	bh=iEyAh8Z1FPJBfKCJDBwlGvvKX6NoURRYSt/a3q8ts0g=;
	h=To:Subject:From:Date:From;
	b=UXhs/cW+3VyjjLTTodJ8fcj9AEL6miADr+iO/hVn7849KKw9lynf9XA5OcP3q9o0m
	 ObxqC0bX4nJQVf3BA9jrEmj6NUhbXnyzbRDw5RF64huZM1CEj0wuK56Y2P+gW1zYpg
	 ncbsmmzTv82grFqTWFSDQX05n7wInydxo2fo0qeWl2+S7k39cXQY0fgo6COqur/ulV
	 +WS52Jn0RBgbuGcxBUOEm4peDZlIO84QNWjXiVWpcCW9Rn2rqs3fKTAgv7o9wWsMbE
	 QFZFgQM2+aEkFG+oSvDTSDNxTqJ3FaLxYNKCyXQITy/0ncFLdBa8K/F68yh2gX3eWN
	 7IkUKU0FsWY5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94832C87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175448099358.26935.14143922910880849304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f037af3ddc030ade1aec29f7ad630998b8f949c079c566752b032b071af578c
Date: Wed, 06 Aug 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754480993
