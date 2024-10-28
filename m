Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E4D189B8D
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730115954; cv=none; b=OExn9FruWlRkaXKfJQQMU8NHM2/UnMkld6JAp3iTOEOnsg0eVlRHZANIrz5yj/lycvQoWZc9mBA4XZqqzSiINIGfrcU3s8bnMtxktEEOWTGUR+0V0lEsfrow6ZZ8wpRIWlKtRj2ME4hx8xECdYIx4Vnh+0zr5YRCoRUWB7YItcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730115954; c=relaxed/simple;
	bh=FvaP81PFtkrTyki4NWJ9f+Srg1e7sVuaumiRQkkuibM=;
	h=To:Subject:From:Message-Id:Date; b=iTBqB1YtYjeC5IbGlqxJvp3XNEqWo5Go+5mBITVp/4/DFB+lcRIYpri6Y96Hq81AezDeWRPj5WmYGTURn8j7iv/7eKHrG6sqD9/KcVjxuSHkKWOw7cCZOvj5+a3NvgtaFkAHbULXgbh6HH5F8dyjHmKXYolbcXUO3l662gY78jE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fb4jX4BA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fb4jX4BA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8473C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730115953;
	bh=FvaP81PFtkrTyki4NWJ9f+Srg1e7sVuaumiRQkkuibM=;
	h=To:Subject:From:Date:From;
	b=fb4jX4BAaySI00wZfD08qkmDXExdXDWDSMVq7lU86L/Imlandp72hUCdUM8vYdMZO
	 p34sUcs84WXXt0jpGEYelmaBhgU/cYPIcF4Vbuppl/Wo+wK4xobeQOLIbWjZVbHc5z
	 IlGL85XDy9HgXSAE9FqT0c8VTd07yIQU9PLjtkpRccEUnfa1cO5EjrBK28ndis5po5
	 NSk4kRyqDuWp0zPTcky/ydAfkbWCN+wnW0ns5L33Pz4qxbqe4MktYFYZWVRrMMteab
	 JbjASE210J/I9nx45EUMvITaPsaOwyN5yh6oUjtQIfD995uYLpb5bCXekPB8f7Fdt4
	 3Cu2dzqWGW+6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5197D13596
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173011595365.21332.2738889365737973415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aef22c9b87fab4711b8e424fa25555626e905cb30484822094fdf691d7319e8f
Date: Mon, 28 Oct 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730115953
