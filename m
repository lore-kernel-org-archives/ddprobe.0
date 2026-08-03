Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7567C25487C
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785732634; cv=none; b=KD3th4TpGse470A+GhN5xjdheZfXlouCfozgbr8bW0AYNht2BMGPkZqupWH3+S24EqSvAN2gZ724IKN+Eh76quYn4w3BtYjD2miQNJljIPAzd6X+eN/vECsnP55gHPFkiOEhbIOE4p2FOWlYeAfmVto0984R4gmGk7IIRAMj/0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785732634; c=relaxed/simple;
	bh=qbGz7kRAuXvU+G5q8usUy7Qr31biin++lW0ecGz6a20=;
	h=To:Subject:From:Message-Id:Date; b=Xxmr9Ep50/bN1tPmBVVPYDAV/M3grAuuz26O1hdmrNrG/QuBJhKta0roVbYQDMWTrA5bfGWEkVGmSwwQY/EmYxAhX0QcL7g7ErqNnn2tjEdfmRDGe8uwItLT2NzwWo+x4CcINYqd5zhFbu1RYvkDxky6XhlX+5D2eU9OAc7Sm3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+ybkEo3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+ybkEo3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E79A1C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785732633;
	bh=qbGz7kRAuXvU+G5q8usUy7Qr31biin++lW0ecGz6a20=;
	h=To:Subject:From:Date:From;
	b=T+ybkEo3H0P+mSLcr+MPtIFMO0XRM+PklmgpJO8ys9mg4b9dsrut2CUZ1LVjI0Pph
	 RhyUoce+S83AbMbhyAaTHXTQUiUXIDd3U9FSQoTd81hR/hLyYexZPaYBLPYAeQ/Grz
	 zkw7w54I/9sk8ArZZYZmZKfonuSivw82RWgwpG14rQ99aYOijNKb6Q3p69npS++5Ag
	 IHoHGVRRIn53X70mlbdHzHqNrfJHyay1EKAFwWJhtw5hAvlm+lPoUBI3JMBscm+gKl
	 QychE7nSJ1dmIfbXvo7zzmx1MKZfxC4ieI+vZCz6OoVNZObALwZPN+MsY3xXZ09JFb
	 PoAEVFERP48cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B70CCC55162
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178573263370.23320.7513690013799671878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1714a231b275ae65042c95b722d6952d6cbdc781dc0671f185217f07171b8635
Date: Mon, 03 Aug 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785732633
