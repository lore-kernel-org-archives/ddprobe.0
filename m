Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDD124E4AF
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743698394; cv=none; b=S+lOgJAlHzWcpeVvjWcNlvRyiwHjSChtQq3jUc2Sd59X/dI+GVvYZMkwHaBJYtyB9DG+La3xdjOCHG8/5KsJBxlVHnf+IPAUBPaNPBSZc7dfs+/O8LQ7HPCddHo4zhMeRs3m7gAQpeXS5vqNBryYMWE8pTCH7IbyCahilBOO4xM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743698394; c=relaxed/simple;
	bh=DJ1d/6Ncj0TEj37Z6oYT+dFVJpyTc4h3tRDAxPJ9Ef0=;
	h=To:Subject:From:Message-Id:Date; b=NfVWvs8xtakd7xD6tM8621khCINYNq0TL9q1N+6D6tSkWiEbjQeY21NuMRoe6S/enjpVRODGoqiVQsTqRqQj5zMseYUTStx9zgShMJYBfcNmCXIPHy3vpW7Ijl14p1EfdpUes4qwh0WZUJSBA9QyaCNwiWMdsBEG/UA/V0gaLBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tBOwuBz1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tBOwuBz1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1155C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743698393;
	bh=DJ1d/6Ncj0TEj37Z6oYT+dFVJpyTc4h3tRDAxPJ9Ef0=;
	h=To:Subject:From:Date:From;
	b=tBOwuBz1LXpZAoiWUJ+LSXmk8AjZQmAyIKn3aruhCVcCkcdY5Q6Ol2/bJcp+Dlcah
	 dKMLArTxTPu7vbGif39LK6e/cxLLterXmpOkW3S8ipZOO0Mo0Bjj3x9iJWlXdjyNB8
	 sENNL0Dp6WluJpW6mc1kXskuRWEHA6DnVjzwAXL18rxNZM+oRzMUlWirRcTUyrYFma
	 ROtiRWa4S/cjuPBzhHh0Oc3RRC02BWUE8uB2UCkXHjo5De0iy4cL9ehItWvJOky/ho
	 hEBx0MaQMm30pxLqU8gbMb8iVvy97OGtB3u1xJIf6tTPiQGOBJ1euE882ms6P15lmn
	 ZmAwZBQBQ3jRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FA9C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174369839358.1758.13059548389551147578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc79da66185243041512ca4eaf1f9871eb385abd0a079d197928d13c4b6eac9a
Date: Thu, 03 Apr 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743698393
