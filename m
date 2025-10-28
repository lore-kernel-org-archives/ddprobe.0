Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F70405F7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761613194; cv=none; b=mYFKpGp5CNcyCRhygp6W/ntXkDt90CRAIB46Cjs2hmcNK5OyeM25fyMZgltqiA3s/QPmG08wDT0/sJsINl58clNw+cV7Ay7lGsi03sZiTsfcpGFZAHQHlawddQZLtn6ODPekoXGP5lGOHCG3FjQvXszz/W+/YuQXBQLVixaRWXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761613194; c=relaxed/simple;
	bh=BcXC7QlhGjP+4D6A/H3jWZn76yT3pA0sxR1yvRR8URA=;
	h=To:Subject:From:Message-Id:Date; b=e99MP/yTjSxoI15JGNVZsQxc+rtwsE3/+C91u6ftcN5xCjZJGjz+Kua7ZOmZIfZnwkc2uTeKMOxjztK5cUpWgFtjM2QM5Re8/zxFXtEbJQTA/iy+VAw/muHNkVa9jDZozMPs5mNAYVjETw6oLs8UuHRRUgyIRLTNY92cCHEN8XI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iWxi79iu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iWxi79iu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F787C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761613193;
	bh=BcXC7QlhGjP+4D6A/H3jWZn76yT3pA0sxR1yvRR8URA=;
	h=To:Subject:From:Date:From;
	b=iWxi79iuNe9LIAVxiVvJDVyNs7eORx+nCgSKobbsZ/UPnEM+XJkaccAebGbExapHZ
	 qi8Cl/sGp3C4wIFu50ddTyWtqd60rFLBzNvORvUhi0g3SCZsOvJQ0ggEwnjzyHgo0Q
	 PPHZriirSCvkXwgSx+2qGTPrbC6weuR6tWzxjysHFkb06x2mcFESjPYwlCt3j+ckn/
	 H29RxpvZDsvxn8hjrbnBFf7PMJU/uymYxNoP+O86qCm9uZFCyxXiyWyM8qaNCLnHoy
	 jtQG7+1TuPQzX2nw/ZxhxF+RoF+hiqgu3tzU1QtQak/0ccwyAwS0QLYYqYjCYDc4nK
	 DUwAbRCqTnPhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF85CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176161319358.13326.1612707762269877721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49745ce61db3c575fc1950c6edcc18e007588b54b50d1914060a2ea54bd61613
Date: Tue, 28 Oct 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761613193
