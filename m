Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 038EE32E743
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769428434; cv=none; b=rIt6ZwYe8mnmEEPth9bvSRly4cVSGwatE/XpdL6SG7c3KGig54Pjtj1uAEb5Ctfpzu5ob2PEIHmJ0uZZa8XqmavQbxpVdWp1R2dHlPse3S0vnfGYgV8qZi8hl005rHDXpHotdFpHbLoFfK9FZzTwPWrhu8DeguAFR1mZW42blL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769428434; c=relaxed/simple;
	bh=Qi9JSyI56fTQL60b8ZD4uhQiy7jPBhIxbg5CJsIjaUw=;
	h=To:Subject:From:Message-Id:Date; b=i/0QJPu4L34YHl16OW/5IIyZaTBFfiTE690boUXLzGQOBtRUCIKqPDZ1cSGxbNKvolP5wLG9gtLqtVCpdZcIAcOMxZK85qk7aAERLxZoQeAzuu5dah7HHUQN7zn6MpbIimTven6XwgYOBUOrFRcF2SjXKcexz87b+wlwbSOy58c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AoLO7Opi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AoLO7Opi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D98EC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769428433;
	bh=Qi9JSyI56fTQL60b8ZD4uhQiy7jPBhIxbg5CJsIjaUw=;
	h=To:Subject:From:Date:From;
	b=AoLO7OpiHy/k0nG5AW/a+32rRnKqHWhgmj9ugmdV0UnyFn5Z4F0yERWj1qUAFPHgI
	 +CDyxOg+vrbiwjIfyYR57ERCJIjB5Eo164Mnnq5Vr1kDj5QKNYhLDnZVunmNjPxb5k
	 pD/y65GPaU+E1iFzWFuTWl7bSaoTgYyV7ZR0HJPk3gw6MWFH+iOnedrApGsVb/2DGc
	 D1Eey6mUuBZ5vuPf7ZDYuj6mT9AGOxy4rE7Zee0WDGA7VOmfvFPHa/GsgBwIqjN/SL
	 b1QXUWfnqtAhilL4Bw5xzL/8RfMR/d7i8q1nxMG3dEXGzm5Et50JOVBxXzkdKEiWMx
	 TDse44sw2MGgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F228CF65DB
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176942843357.3362.6849021507039057601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fada29d58aeca23c498c162c08185660d40b4e430e5afa8e1818dabf0314ddcf
Date: Mon, 26 Jan 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769428433
