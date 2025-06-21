Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0B1210FB
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750544995; cv=none; b=U+1c1OWHZxEuaxgCIJe8/xuopiM5CcwZJqbWiHDCXckCzFmnE+5tBJGwbzaWo2BW9FDBeyuist9QBxrwcVkhJIuiw2rB5wj713uu6LruHOWH9YxHcIdncVPQYVKrxWG7zUpdHoYHiYkH9kyy1aoM8bIMA8/bWBUatO+0lbwEGJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750544995; c=relaxed/simple;
	bh=vrzQUhBsUpA25BWhkEXUrEEurArhtAQnRlzMFGgeZwE=;
	h=To:Subject:From:Message-Id:Date; b=KcxJDaaepJ4eW08s2oUs8aXD56Uj3NdqT03cdzVrEGwoEySOEEQKmk03xLR3MyJCAqFb+soo9o0g3GM2JKNdVUVzDIHCD4GtwDCzDTCAWXDk28hX+mF5vxuEetalvqBnyY3IZhepkUok/RJt6SCTcDKCaQjwi46g853NL0Snuu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UjYWPUWd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UjYWPUWd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5624C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750544993;
	bh=vrzQUhBsUpA25BWhkEXUrEEurArhtAQnRlzMFGgeZwE=;
	h=To:Subject:From:Date:From;
	b=UjYWPUWdib3mqNivQeqR51lwnTXuGgjtzfxXVFEb1PdzTbO3/xZhbAetoJxCusAUE
	 WAApAqyjOpCVZO9Esx/xgD0MsPPN1z7AY9Y/GgRfy9GPgxI6tsdXzJJU5Z3LvI0/Gl
	 Yv7S32ordo+Q6rDy10JHyL/g8NVPnxiGRS9CoU2cnrA/Fz91t4ZCGnj486mADUrK5y
	 UoYxadDCoQpSdvLF0nu+4ytkHt8ypaPsNN5jIqnWOUwMkvbCewQDqcyTxAUb79NSis
	 SGqyxoF+dNfnxh2Kb3CJ+FNAmGh7mSP28OV7JSv6DdGwrctEHPS0IBKTYoVE0GRi6B
	 DNtYxJ8z5Pi/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928DEC71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175054499358.11957.9429688257351737027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1abe93647af50ecda7e2a1abb129fc8b25fb72d4a821680a057684623d5ed117
Date: Sat, 21 Jun 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750544993
