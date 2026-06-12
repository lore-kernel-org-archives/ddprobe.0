Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CA43932FC
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 11:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781264194; cv=none; b=ToalrUpHeEzQifa4jLZcaErMyjfQFvkw9abULpN556QyUxSIVYZTbjh2LaYL+WqD77Kj0E1k3SHQOoMEEexIbOHC8TsduYQC9JX9VNB4u9L2PUpHiVTzivZMLgl5N09xDpq3r0HvKdtkRWKlmE2BUYm9Omhe7sMI3aG3lGdS9XM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781264194; c=relaxed/simple;
	bh=tL10UKA/06WtrMg8fagTRrodvgec1vWYze8aRqtbry0=;
	h=To:Subject:From:Message-Id:Date; b=LRGQB2rSTvgqTqWgf/EJ9HUl841iL9YXWqOhQNdgJ73YrIA/tiLXWtZe5t0pU0i4U3SqoupyAIEvu7DjDSHOUaQLrXmBLgcJo53ot1tpk/x09/GkCrAXBrZspNPEy1WpOF5Tu6c+XE2Js+Bl8+MvizN0SSeQ+NRazm/Ka2zG0aY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ARbat6a1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ARbat6a1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C53EDC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 11:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781264193;
	bh=tL10UKA/06WtrMg8fagTRrodvgec1vWYze8aRqtbry0=;
	h=To:Subject:From:Date:From;
	b=ARbat6a1+OE+P/OGz1xvbKsmmQitAyY9R7edS6ZJIXMo1+BS5QslDLad6SzBvjy/L
	 RDJ80y9jSk2nwTfqwRAE97DSjo0CsG4SyhpyYRt793hJY14lrdXT3rgFSdh/3dSaD7
	 k7nqoV0hH2syXT7ZDfQDPB+gCMjKgG6nAmG1XOTo+9ofhp1erO1rmUyMFkg7v/gD32
	 spNR4QAVduQt9hC8YOhDYW3oI4D0i52f0PTrOoJ023Gsurjx6zzjTgXZ91b3jaaQSL
	 Sg7t8yHDuKYxuK4VHqAUJnMJsgssWvurmqQu7+IkMtnIt/DVHF/vpz9ltsegPYgPjY
	 tl4ErF4OVaZTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA84FCD8CA8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 11:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178126419368.27675.3228323226338037101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 805f8a755764e9d4ddfcae8aba6f038d03804d29519267f3d1f0ee995eae7bb2
Date: Fri, 12 Jun 2026 11:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781264193
