Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFE008F4A
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771972493; cv=none; b=LbXal9gIA9pDn5BnzadE39uvAccQXTYG6jMczR4AljnY4EYdcw7yrZKQmwBwK2OduI2g5z3Q8fB+uJQhj/UnHvyWAaeiOz5S9poEU0LkF5V9Qu3xQqr//ZD5SOOKAXdIq9osBknlWCYPSVVM6tWpWqR//NUtGk11LPdI/b5lcaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771972493; c=relaxed/simple;
	bh=mQ/xsMt+ok1hrUtgDeTw8b274sDpB86TtM+m7PvIEu8=;
	h=To:Subject:From:Message-Id:Date; b=tM4ASPR99Pg9kVHf22cegJeUuKuMolPwvsclRCNLd4YdtZPflGUheDJ6eAvXJeZQjI6BDntbnfFPh6+rNs0a/33HGZeMohv6sqSQQkpXauLoUtVkxmh4DuXXEhOqrcuDmGDLDBRGeI7Sl09opEzGvZYFxRrWBJ7RIT7ixK+7R2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z0wS/PWn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z0wS/PWn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3678C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771972493;
	bh=mQ/xsMt+ok1hrUtgDeTw8b274sDpB86TtM+m7PvIEu8=;
	h=To:Subject:From:Date:From;
	b=Z0wS/PWng+0rI5vH1Dw2gNBrQNefgY/sQGsBeAWgtdOPcKh+j9eOnGd/aVqdarYYX
	 hrGHbKNg4921PLDNhWNWo4/V3BxzzGr5JLvJpIBj4igqJ6oLExzla3BSAw4WGXpE2Q
	 oGYV270nclWzAaF/kmusdPx2F6Zo0NZe5uqgO+jAeIJyzXAw1RbgaQtJ8MZlmaV+H7
	 FZad6HNep6xFWPBAAvCjZKqyL2+kcO+RHxsf253dlG+hNlOBIroWDgJnhRsxnMfbDV
	 iKeGMDXS9rmyRvquJuqHtrzwNun5N1vfakvVefcLVUncyflOH65eEd01Un4yTRmzzH
	 QPPFsv9uPF8Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9361FF4BB93
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177197249359.7727.7980197230283191080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42b9c3ba26f94c3d75edb0b8d9ec80d94d61526339e42c19582803afb6a2c15e
Date: Tue, 24 Feb 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771972493
