Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7B83B1B3
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 19:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763321514; cv=none; b=cQa6WT/1mkiCOplQY6c5IHfcM6cSXc/DFMq/LsC5vjRF9U+W/9aPMZC1kR09Gdw3Yy4cjZ847tdppZcg8erPU1IUIthMdhqXKAFPT8sJeQkb73zIJ/LK08+oXMESq9yzarUZga56McUoQ5jw+QYZta5pudSLOg3+JPl/IUhHMGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763321514; c=relaxed/simple;
	bh=oX2nkAmQF3Zt2poa468Xqf+/fwNzYU5oJRzbF5QVcBE=;
	h=To:Subject:From:Message-Id:Date; b=DOoB44JkwpQR30dmb9dwUK5V5svnfRAINoRpgl5L+c7KRKTXO+elr573yOBF9HV+4ZrbEUb/bP3rdbVr1OifE1IFrFpGyPpBTPQF46XRbpxwHur9oRkmBbx4p75l0FxI/ZxXkcVatMUhAhOO7a8MLvzJqXw4U3KGLG3Dkw9MsiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XVTNp/Su; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XVTNp/Su"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA98BC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 19:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763321513;
	bh=oX2nkAmQF3Zt2poa468Xqf+/fwNzYU5oJRzbF5QVcBE=;
	h=To:Subject:From:Date:From;
	b=XVTNp/SuV0VzjFOcI9q5wCse5ENJZRX9lEgd6zxh16ex3602CS65g7UeuMsmOPpaa
	 R0I6wp+GJrwcSWeBYIICWQ2rjyHEZnE+hLBQwZlIoAgSLJIcJ245DcZK9W/XUqoAsp
	 HDGOKbm4ylJobKZOaw0sp7JAMciaKfNlhmjdLBZ+wgO2ob6azMbktN/HRTNNPnMEy0
	 jbRccE94llXFOGIhjwrbgXcVNxoR+oyVGxdlcn5aTf7iY650bC7CwNa7zv4UK/TOGp
	 WswsrbLZzfNe78k0UNiVj+RPBi/GlEdK2ItEJ7ALgsWUwD/LROl4UfBAho5ewoDXy8
	 Ea3uyTJ+2ZbKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC10CEBF61
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 19:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176332151360.25583.13778163342546836422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8561b2c18b9cab982ac88f7b2c0be2e433534db8746879e466882c7ff2dc297
Date: Sun, 16 Nov 2025 19:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763321513
