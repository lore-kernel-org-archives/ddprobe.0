Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49997223330
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 08:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739521734; cv=none; b=IMgeJPE6fTSIuBbesckZdyU+tjOjkcVnCckulj0kENzdSaFDhygk/HdbTTLG7g6WFNE9RYhxo6zeSOMqm07Qqmt2FcOaPuwfFgLpECA5X2dXHifrWAOj1OjMPNY6NEBviL9PkBx4YHG6m/bwsqXB1zBZ9DqO3XWY2cKA7j7Xn9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739521734; c=relaxed/simple;
	bh=UAW8vMvvR6itvpVr4rmPFIQnq/AmKxQHKXa2qcatnbI=;
	h=To:Subject:From:Message-Id:Date; b=RSHj1DUfD8NZM7r+rLZrl5rlfaYYKqEBxmZe09VuRgsA0/S6VzUT/D0JZPtt85qKSlN6YQSpJgVTA+EaV2DEYKjeS47xCW6rcXeAXA6yQtWGkregU0mGpYRCNgcExqlISjZiDTUMmY9wF6QsSfJozrEZmf7/vjh1RA+V0vGR9TU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DbDfN6DJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DbDfN6DJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF19CC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 08:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739521733;
	bh=UAW8vMvvR6itvpVr4rmPFIQnq/AmKxQHKXa2qcatnbI=;
	h=To:Subject:From:Date:From;
	b=DbDfN6DJpewsNoKoYdDlO5nwjf/TmPPJNW6hemfOOT4MIMxAZssHEtgTL+UwxZMQz
	 PLB8FmzW9+2mDrM/Ud+wQ/vcHEnDF4HZnVj/0V9IFHvTZAvwTILmRx/qs4qlBJaykH
	 7tw4xRNXBowbLbPf3XtfuYo0MWhhXNmVPCZJz+knFojgf8muhH2Qa8Yam7YJDu4aAT
	 FmZJaG73+iPbMbpnlG26IflfUj1dVr7U4bhYIfa4JrhCRLL3vUzZfH9sYFnc7czjXQ
	 iVbQBM6NIqTD6d98LG1cSgcSN4KrXltikXnKFWehicFSbrIghl9G9J4sOOpMe4NTO7
	 DPoXvRc16HNmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF50DC02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 08:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173952173370.1369.16330679491405989698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac73d3e9a7076dfe2bd43225eed6f747b51fb11b5f2359888350aa1abe972fa7
Date: Fri, 14 Feb 2025 08:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739521733
