Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F6924A069
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766430234; cv=none; b=Kfb+PaquAqTaN8UndLNdJji54d7qCLOUGO9R26Itjj9lj7IJIimyiyrB8vMWtrDxKIQOHS6wqTS5CjsmPn3JISdkbbLoweptNK5uXHxbdJt1XHj9DwnMU1qXe31SqYzzMUbWM5ThNnuGMssVqOK6EUeukWjg35Qj6oKoHjbcCHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766430234; c=relaxed/simple;
	bh=hgOl1lQ3uvKAqPfyzA+uIL/0G+d6SWJLljiZ9dhiQAM=;
	h=To:Subject:From:Message-Id:Date; b=ZFO7pjUl9RRaiWnTvPg9huSFVJwE2mq+ibQwZxQeVvDOZVjWFBP4hZFE602OMIR5fioYbpCiumtCoACFA6dGXlV3pJnnpvcs8h5J4i0S3V2xeF++uLsWQ6j69Stnlphju5koN7FRSYt0oOy4tN19pxiQn2dJo9mERm2ald7krIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eXNn/y1L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eXNn/y1L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96282C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766430233;
	bh=hgOl1lQ3uvKAqPfyzA+uIL/0G+d6SWJLljiZ9dhiQAM=;
	h=To:Subject:From:Date:From;
	b=eXNn/y1L/EnDVRnUWJgl8zMTl+KzIoBR3e7UYBvHgLVOmGP2yURm+HAMG8pRelFbn
	 RARhSlpAl4vxz4MMquI4271kqNV4VQWCt0Phglm73dDPUqfNwrR/EnjnD/E5VJUt0F
	 AtcQ5mIy53O7U6MM46t9eT3QkfTBqGkVs25QGAW032l/509sJHt7phEjj51vI+Q8UM
	 xO/vH4+5HqAk+hRemXw6Cl+5FD8jxUFPKbyaQ/9JvzeTPNXbLDBtGBh64JEh7L3caX
	 alemS5TEqfwg1QYDnzPuqbFZV/MRPNcBDXdj71SJdn74gf6ejekBbcWVDQ2VCtWw/F
	 YrnmzjLVa8vew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F510E67810
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176643023357.28582.2355278584629423357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1532fc6655c857965f29d7421fd82d94d09713d18f8d27f7b20c6eb9b85e5de3
Date: Mon, 22 Dec 2025 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766430233
