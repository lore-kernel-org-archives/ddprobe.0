Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374FE320CCD
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 23:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763077195; cv=none; b=ijQWtugKivxjEHQX+5wbS8sXmyKs+kPs1xWw1WZUlSSYsoBiE2UMiXWRrTJ/KlW79dYoehvIdY+y72zOjpnklQFw6AjqtyNg95/Uij13Z8uM9CBsC2Y/RNOx3strhrn6Ew/uaTa2rMYPQMhPtwpH51/FHxGUk/RlZn6iwi1K8Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763077195; c=relaxed/simple;
	bh=3GL1nRCzQhCwTANk2jiVrG7LF+jX/ONJD+pFk4o1uh8=;
	h=To:Subject:From:Message-Id:Date; b=NtTflnB+Tjz/TGcb7Lg50Nz8UOIlZBqPehFom2S6kaJGTYa6E91r1xvyTlJ8FO4IBq/yOv8Tc4RynUKR2yLA/C61lbvw7X0GzU/XrtL1gOzkYM6Gp88MJPlfYd75eBJQNuU0/6z691CGJwd3ha//jwJwjuDDrBGW3E/l2G3HOS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/7gbpIo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/7gbpIo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE17CC4AF11
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763077193;
	bh=3GL1nRCzQhCwTANk2jiVrG7LF+jX/ONJD+pFk4o1uh8=;
	h=To:Subject:From:Date:From;
	b=m/7gbpIo5oJCcRx7F88xtlAAIj7eLbSHpx3+TJnOC70z0oltARyvAHhfDmqRRMMsq
	 /gG2XEE3Pir4gjjGuvhIzscFyATX+FjySLcV0BEdl3BFU3wUYRrJx5KXoxQ4vFQG4E
	 ZdcVOXPHX47Sp5CHYhUwNL5RbtUbJU9k+k2qe9H9ugpPX6khc1nPT+b+oPRH2oA/WP
	 OcGU+WzAZw7f0CEW5xd8+oUVtXeKoC+sf2nQk/NMZKoqxuDAgrEkmpTW6xK7QJd0P4
	 lq0X1rPng/RPxb27ck3mfug+bbgWziQ4ufdK3iNMNhrowzcID+ne320RNlkMsRpX1F
	 UEhfWlN/YS8Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990E9CD98F7
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176307719359.30097.2948138004227223771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04232ce5f4ef9bedda22b5567dd275e7186afb0bf74b534352a5e13ec9709591
Date: Thu, 13 Nov 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763077193
