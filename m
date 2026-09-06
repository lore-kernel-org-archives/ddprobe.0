Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D41E2E2EEE
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788694234; cv=none; b=Qf0+ZA/O92QlZpKfkqQ5TJThzbfgpZL2aYKGf14Wzm65M20EkT7PhmuFRzgiUVhzDP2A72oWXtDcZKc4o2o2+WTE3F0/vQOUzXH3/atuAvXG5N1KZx/ctT1cpYfxNWmQD37Wehi7uYXlcy6E8WxNYB8WTWGoHANiY9aViKYloK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788694234; c=relaxed/simple;
	bh=/UQYmw2J0W9Pe9lw9v0LlPq3iDZOUytpYAC+h8546tM=;
	h=To:Subject:From:Message-Id:Date; b=M9iAiH1luH4F546HB9xUPcI9TIfq+EAZvdso3wf40zWiGR0OB181bv4uRnUJU8AAT9c0FB/Bb19jHnX5jiy23mCo1DQdX3odSsnQyg16qT16zfu0NWKbW04sII3xsENyRa+SnzyPVeCJ18RtWEMNI5sgWgTOI5z0SaFmB/473DI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cDLP7h7q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cDLP7h7q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D92A9C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788694233;
	bh=/UQYmw2J0W9Pe9lw9v0LlPq3iDZOUytpYAC+h8546tM=;
	h=To:Subject:From:Date:From;
	b=cDLP7h7qxaKHG+3DWzIMTMo3FpAxd9Pk4NlbJi9kuUyfgXuMTElAECaOzt3twkzTS
	 /buGC80NzqeSUXmqM1LNVx9s2bIDj9w7shB4CrBPxJ1e36DhtRR46O+tvzBUP4ItuZ
	 2jtG1PgBHJacrg9lYv/ra3h8HYf+JHAbE+OdQwQGm7X3jCvAFzgJAAoPzBY4M5A2vd
	 2qGIizaMeiQfMDpd+zhm9NV7T6MrBvs4I4MbiFfcQYmrFEoiCfdiWkF0mqGUQCOpUE
	 s/Z26mqs0+GoVNiq2/Q/4RetcEn/YFj8TXHXghVUsB2lx82rimW25DKgrsXENAdnX1
	 ex6iUA8ZB3dhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE419C79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178869423369.29200.3621805388134274839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03db8d4283c49093009aa33bd4fcafe2ec549832d995f5a4b8dcb99466986e3c
Date: Sun, 06 Sep 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788694233
