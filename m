Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0F3524F
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729882554; cv=none; b=fyJmOnMIE1XLl2+0LgOhS/1q0Eqwz0NfYBIILxgiV8DVNfumhzDzgAjTSaQ3RNQFGfagl68rQ42H/R5waAxeNXOIH2OZXu/nm24R5w7WlaMHLbVU26K9s7hQvaZ+eLwpztWV6vPsb94Izqw60dd68+0haj52vO8Dz5kbp9auvG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729882554; c=relaxed/simple;
	bh=mBYfwsSv7THI4aNo9pTy4Dx259VJe6mvWPOwPnW1boY=;
	h=To:Subject:From:Message-Id:Date; b=AJFPLys7zWwU9Z5K+UDa0P0aAMNGn+aIczsQMejpXHtexOKzuswKFYVMb3YIV8joSo/8KkHtqLp1vx9n1oMw3AP6i2qNu6+K0ZdL7sf3dapjwqPTz8s2Hs+UYFaOeeFY8SgCwFaCedQPxwp/uos2oUfn2LRIbQNHExGVdG3+r9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oy43alSJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oy43alSJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F40C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729882553;
	bh=mBYfwsSv7THI4aNo9pTy4Dx259VJe6mvWPOwPnW1boY=;
	h=To:Subject:From:Date:From;
	b=Oy43alSJhxlPBLPlTyW86Mtq9IgF0TTEQ8IAymq3tym6cdWjXXhfdbqHb7qbFEfZx
	 Nh/bbn/yJSDVAloCB/hoCvJyRyWVql1WTViv0Wb6OgXNKGR5uHbW9Mv//OT/OW5NED
	 lUCGSw55sUVYMDiUtN/D04VBQKx0BQ+cA8C4Hhk8zl3t1ZDUBa45W8m8kYcaFmjaeM
	 6BGSa/AG9DlXJWdl7PtgkuPdO7pcqGQlZfR5n4eNxmw+xjQnMSMzEI6sONGNc/XTCv
	 K33JbonJ27Qtsk3PanRRryyohQ8I9YSzE0e2nBY8b2ooAxq1cGm+CUHncYwPMpHlhw
	 iDRAFekjSun+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B75D149E7
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172988255361.6533.13048680805389260877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cdad5201b4c9d523eab7855b5a340598fe4741787577dd84c9ce3522388c941
Date: Fri, 25 Oct 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729882553
