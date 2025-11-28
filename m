Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8FB25A2A5
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 06:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764311574; cv=none; b=rZXl4UDhebT6NO58axEyX4OUhCh0qvgRIxxPmxJCy0vUSpYbB3ZSSPehcqDHxu3r5G+V5Ji55/dILVB7sO96wwG7O+yoO4xyJN/IGT4kUAXNT+RqRP2KsjjqF9r8irSChaKMiQn/ckqnMbolmWW8LEtBOXkvDcpQuocPqzAhOn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764311574; c=relaxed/simple;
	bh=1hJ1Y+zUaWkETfuH2IuOwYdy6Ir0E1h32XI1qw5v9Vc=;
	h=To:Subject:From:Message-Id:Date; b=TrFf18B5bKwJ6dRY1fBJXdZOR2p2evOBk7XM+gkkTpmNJ41sUneUmwUau9MgwQGcmzIbaF8wYOInfVC/cdWBXKBby6iIpy8z+yCjn9Nl4BzsinxMsWUeuL8OyLeNDwp1nI4aYP6BXsy7quoWwGZYkwN3K544PGYyvzmcC+UXUqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EnnBI4hV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EnnBI4hV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A913DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 06:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764311573;
	bh=1hJ1Y+zUaWkETfuH2IuOwYdy6Ir0E1h32XI1qw5v9Vc=;
	h=To:Subject:From:Date:From;
	b=EnnBI4hVfhhfiByP8iWnMVk27GCZSayBMA3jk8EgiDTq/O/6n5EQrZoV8zkwqMaMG
	 0O9iZbmhIAf+sF1zv2jYjTGCoyL/BU9jbaedA6LC/OBqVUoNEtDtRYPVXn28+AKc3G
	 H6TkIHTG7ePTTSYVGCenawAiF2/lGh+qXWtrtct+PETw9y4s+Mv8uGY8vz/zOSTYHs
	 gQjKhD/rXjKadJazR7sJKBsol2DEXuO8HEgQ87+XtccXVdXsKCq17kZie1ljoHwzqb
	 WQFCPOXHpgaUqWLu2SU5BFuymC20CQjUXxVEndBxUdF0atqfuiLIVKVP7rhv8MCHPd
	 +v81tZCo1sB0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97598CFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 06:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176431157358.28262.18351607943056782336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f01ab792c50cf3f4e373560369f830e2369869b5ea9cb10d0ef9547876e7acd3
Date: Fri, 28 Nov 2025 06:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764311573
