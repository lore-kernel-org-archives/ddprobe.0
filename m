Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF33824BD
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768101834; cv=none; b=ff5g+s45D0vrDrIahOdDiZzWg5YN2AYg8EhAMFAGJsDTKLQEZu6PI7jkg4Xz+3OUUTYcc2ixosUTpbRM2RKbFwoIf6s5WbFV8s8rbIsbTlzxWgZQ15ArzAxDbh8GkHcA1vgX6WO8fgDzJDAARDaOHwSb4FMFNb6246+OAaNRudI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768101834; c=relaxed/simple;
	bh=QCXKFAaP5HKon49smeKIkomAe0zo3AhmwSiDAIJHXTg=;
	h=To:Subject:From:Message-Id:Date; b=d1/TiF/+IWVoHPZxDQXZhp+mQvjw4Tb0koE5LfOzBZ50rcegst22zBwRZdC5ATdYgYsYT8+LIhSCBqynp7n6teQYYR0VdrurIurDnzKiuHeC5NWH1kHsgCTI/IiYkenM3P+cASQPPuk9qZmR6yUB603++n10IhdjaeGnNZbuRk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TdQfeB/d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TdQfeB/d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A577AC116D0
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768101833;
	bh=QCXKFAaP5HKon49smeKIkomAe0zo3AhmwSiDAIJHXTg=;
	h=To:Subject:From:Date:From;
	b=TdQfeB/doLF9yu1qhbqHINt/jS6v9cff9SITsge1/AYAltZErv6D4LuM7PAzl07kT
	 gudofwEiAeRMe5D96Xijdb3Z6mYz/yvObAlZxT7fmacpx+NrLLX71WLrAijSAf945L
	 BOjOpRBtOMqu3RrHYeyitoTv2ZUAm7pgt3TCdUvty+SG4wOqto8asW3A0tllqyGZkm
	 iXfZ5qHH/SHPXEwUgAEHMK9PAaLcDzhKZChgywp/0QcnxnLpOpBIcWyqxdm4z7Rdzb
	 1oAETMpc4fPlV/rkOxn5UaHrTnAtoWCpjqF2U8w9w8K8J4UETCkwGapAhDV0hE/zvf
	 XYVAUiXT/fCJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94039D25032
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176810183357.20995.3401490776643658431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f86f94c721bbf0bcaef9deddf54f71e29166e7993639f114d51293683ef1aa6f
Date: Sun, 11 Jan 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768101833
