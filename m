Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD0D27C150
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758868794; cv=none; b=PGQdvXz/Ou8YZT+UdSW88teYQLRzJ2ULrXvvktx4APsUjPQGjgs/bQinfduuHrKfYTs9SB6T8XHuoIyDLSuFAsiVspL/oljyz7iQQmi8oz6BNyo73zJgCVqxy4JRepbnLyli1Ii4ur8tyoSr2IANvSBjM2M1+aI7aQjNJzR5VnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758868794; c=relaxed/simple;
	bh=ZX9ljMnTqDoWTWoextfHTHTupOyc0yCDsYF7FWGtI1s=;
	h=To:Subject:From:Message-Id:Date; b=RCt6OtHKE4L/YbFDoy9/yxxuLi6lkz0j2jrUGwa7yr4V7cWuwnwbu2EahRjxdka6uaMd1Bf/uk9WVyllG5s8gaP2HJzZoCndYKA9Bvotzd54ta7jejWwMR6lRtldprDNAheAy/3+vzBOFgSzAY7WeuQk4H50EXnn53N/R/MuwzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JgsYscps; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JgsYscps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA82C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758868793;
	bh=ZX9ljMnTqDoWTWoextfHTHTupOyc0yCDsYF7FWGtI1s=;
	h=To:Subject:From:Date:From;
	b=JgsYscpslNTBon2tggLE9WYj7Yi4OPAJNI7R3AXnf3UbUu4aMMS4sdBtk/YIy5JFe
	 XoAUqXZzkS6EzY8Zk1dIVRiQ+uwBkBKUnqDqYP9LMSJV8gsQqQP7JQ9gfcqYNAU5Pu
	 Jt/sOUTmCBaJ3lHvQ4I7hhega8xv5ZIMGAgaVIbTVe+tcpzHFkE8CKayW4MtxPBggN
	 p43iLzP4zwLgKdIbeK+DZ5aHGZMsTNI1/TLRzzxWh04rtk61o+a5NnISDZBaXRLJMI
	 7V+q8pV43FqG/XbhthpTDzxdLzAJx0+s0FnMR8eX6R5uNP7b7FJBkP1caajJZMUsC3
	 jJOs+uM1XfKTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF28CAC5AC
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175886879361.2952.12463017123568012786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdb8286fe724e502ba780b17d7e513bc4fe4a9500774c9d5a28c071471782424
Date: Fri, 26 Sep 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758868793
