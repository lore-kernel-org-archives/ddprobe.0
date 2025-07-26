Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE231C4A2D
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753555794; cv=none; b=QvNytq3G+glbaOffAEx67JD70JG0GXtT/b9X8InquphBRHKoSpfqAAVw0McO0Em4+TqvURK9a/dkS7GVoM8CR08d/dwVLIBqSjOd0lAGH+3Mx195THT8gCwOWIOx49X55B+t/fb/9UNr3SrhbjBsealFMH9STE+UFRiCvgMAfyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753555794; c=relaxed/simple;
	bh=yWwV2rKJOSf1A5jtpE3GbTSmCnsNCT7jtOlxMjRP82s=;
	h=To:Subject:From:Message-Id:Date; b=aMBCz5l+b8cH1Xvqn1Y7H+YpHooLDwY4Lvy8KwEqcr7jVu5NcT2JFc1MTStRCBCDn91rMYXsFiaRWD5LIdptGeXa6ivANaXrrxIDdzhfBQxUCk7MPYQGi3prUU1xE7Q7imTgikj0BQez60+whZ6yDISPH2exqQtNQVD7/Inzh1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tnwRlQ52; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tnwRlQ52"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19F6C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753555793;
	bh=yWwV2rKJOSf1A5jtpE3GbTSmCnsNCT7jtOlxMjRP82s=;
	h=To:Subject:From:Date:From;
	b=tnwRlQ52YWSLGbj7zd8WlxOqiJdAyymHOooD6/qglnxGcFls7Jqcs3LZ71cqu1Fxo
	 8UqJ6vo5XRYolB5qMbf5BE5xleYIbBGcC70aP587GwjRzgcniUwsbgvavqRZgdajYh
	 oaXQGtkHB/G2KNaOzrAU2S9mwWtqP/dqeFn+us6D700jccOHksPshrAKj+33l0sJgo
	 2mfvLk2JbFBmCr5PYXdZiWkgFgPDjkZQBbm3zjL6EID3bdSFhylujkeOsDG0O6T1ad
	 Tk3TbTcgwXm6iOWhkPRuL6i5tRZWfOSWEC4GdgPZ5fJCpfQXap1369MSBWcpGDKZUC
	 GTvh9Vz10SEqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD43C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175355579358.6376.10602854843813694048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76a8c600777fc1e89b0d76ff9082c5ca6db0412a19180b4b0adbdf53d393f357
Date: Sat, 26 Jul 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753555793
