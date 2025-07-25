Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8291FC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753433994; cv=none; b=rriGdDC1GdIY1ZzmZ03II8vhfPhY4x4Pyy8/A50/hDuU503w3OBLDpR/VjL27zsmmX1ALfA+2YmJWvwxxJXA4U1YMJmt3xLdsOpO1es7IlZdyXUrOKM2QMnh9HBprWmnH9+Lrk2bpWilkNuRGVYooL7iEW7wnD5QQbeuYCLhTsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753433994; c=relaxed/simple;
	bh=OJ0DAft7MQLPenbtpyDodWboaK7625fSCaMERtGSTfg=;
	h=To:Subject:From:Message-Id:Date; b=dNXVvX75orNgd92MjeU9Wt96k0amCwkePJs7s4lBWAk99iCLNUmT+r89B/7QBGPJTAtRAcO+ztbGsYjcRVs5IaxI9TdskGliABfBwqhqwHQ0I8Dco+/skoSWkj3l1Zdd4Z1qqRnrRDqcfOeecvYCyTL8Pd18V0p6S+O3+QiWn7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7iN5IBv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7iN5IBv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFA8C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753433993;
	bh=OJ0DAft7MQLPenbtpyDodWboaK7625fSCaMERtGSTfg=;
	h=To:Subject:From:Date:From;
	b=s7iN5IBvWZGlqBbGPJt/uAJyehpEGLilBEWc7BDDyl1frj/JOtyaOKD/iAqeoRwYD
	 ofhZCwpnxWvpw5FSqoy07gS/Mt5+tEL/z6ljiIZWDUX9/vB4jLfit8TkiqzU2oxYwP
	 fkltlDRb2G1cyknJRYHEWvb8JP50RiJLp8Mu8sew2V4n75ryz0wZzIRGglorhXAhKI
	 KvFXdg1oJIlDUDOlvrZLxZZQ/Z/gnoy0WtlEbym6JLu6llIth9bzfesOLCUV1ShsB1
	 aS3SkcFTN1gliqL9pZFoTfI5nsMR4prrl8mCmGCY4MgEmzSxrov3WXv+AQc79DfX8F
	 f2Hjrj2gMsINA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6DCC83F26
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175343399358.29703.12553361865059292292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dea06fae2dc3605f2cba0ef9e558f622b2d779a608ae6eef9a761626f049bf62
Date: Fri, 25 Jul 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753433993
