Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CAB723AD
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747360194; cv=none; b=QR/vsr+gYTxnZxg3cgVXaLZh8eyOH5YkGrC39ORI/QY6Y7rAz2Y1eIxe9cZyVoVCxMIJ3TweCODwwJObl6lyo5ftWj/B1CVLD/PlUbOxf6PwrocKF6cUoVllynQCJXl3yM7Pf28lsuFYrk2C+WrjxrA6ZoiONAAqo9CjeAn7Tzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747360194; c=relaxed/simple;
	bh=AZgK1At3FJX1sq1jxRetBX0Ux3IGbADHOe9NZVrv1UU=;
	h=To:Subject:From:Message-Id:Date; b=JEo4OD/I0FXhbCZWwMWW0WM6oOUsI51GWzAyfIo+Y92ZzsfjFuDcMqqBtfZGi2KY7UFdPY6NWU78lO/Gbwl+2x89UMb13MZQbwpo6eUFdVbNftSchsU2zMKop43fzM2QK9EuM5/sfPplB8uhJCVKKr2B1V38/D5Q+rJGJbkKvsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2X/YCf5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2X/YCf5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5179C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747360193;
	bh=AZgK1At3FJX1sq1jxRetBX0Ux3IGbADHOe9NZVrv1UU=;
	h=To:Subject:From:Date:From;
	b=k2X/YCf5HMYezGV6xyLHeE2fVI8UFmFm18txLtFgQY1RzkH8DxN90h8r12bUL13vK
	 Jkk8Q+yRIaq3mb0IXDrzbst0cM3GgUWOc8meBVL8RMIVi+cNKHsalXpwz7uUVev//R
	 VzZKPlw11kQIHT0TmDOREQvS9cNJ69fumjSPmf8SvwwB/6a2NnDnIXx4H7jjv6YazT
	 snpWHNzDrpYXKYugerLdaCnjB2PIKh7qNZUo0DBpQZCO+ZJGJkE66f/L5zOsQ2/gTt
	 7cBLkceAIP71h/BU9KFK3fymPWoKO9SeFQyVNcPJyBRqQHbnYiJyvSCqYhUuCqisaC
	 //rlAy8n47EIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA624C3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174736019368.10243.7940116229763322696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 460889ce9e8d9ee1591bb8a97d1fabec1b12d8bd3a01ae33aec6a65eadcaaef2
Date: Fri, 16 May 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747360193
