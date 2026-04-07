Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD1614F112
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 19:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775591734; cv=none; b=WKpvy5vFSWZYWoe9lKbblI/2XK024BX7SvVNVDdKoC7hfDdoRxkIWLqtd31OYSeNKC/GPSeUeVTWG1/GPAzJfdAbnH7FC94RknrIqFPUf+7hfHd75pFHOYOnIZyOzaIXxlpUCAsFPllPP9UGpFrDCLtSt1ysQ7h9kSm6PpGoL2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775591734; c=relaxed/simple;
	bh=4CYCzHrxc22vybjyuYrXfIqR+81fCyEfBBf+XJljMAc=;
	h=To:Subject:From:Message-Id:Date; b=cWWF7yi67gUYLEUKLDDUA6CgrobiFcniJ0nNaoVtyNxP/K+mGPt/FXPaeZc9OgV4S6KDU+z0IQLAssGvCm8J2AjqJecdBdQqlJWmt+B0ISGU4bRjTmz8ku+tXeFRSU3ln2fmnS3ED6FhoyWRm5ODFek/cNwzr5kzKkiBNDI7RrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GUlpoKag; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GUlpoKag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEECCC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 19:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775591733;
	bh=4CYCzHrxc22vybjyuYrXfIqR+81fCyEfBBf+XJljMAc=;
	h=To:Subject:From:Date:From;
	b=GUlpoKagfWdwoUHKVgH8XQLnsSiHvxyEU66DtdzFoEgOdRzOKI9SAyFvX7Kj85g6O
	 HtHZCf+OEcnTP6agkk0dGVjHqN+sieou2ahN/Ujf14qgvsa9+YHmKcdITZ19ds+lbB
	 BvWid4Y4+B1Njbd0XHtbX2+gTbgoSNJpkWL4TX2Ky/fboOrRDeEXIy0lcoYxMZ5jc0
	 niGNtMcOZdk1w+JtIRNeOjAdOGPqjps3Pid1mZaEPSVx85uYODWdy6mjgwvdbmvuj3
	 U3rZ924QYHisaZPQd/2rJ6/9dbfFKGqJQFz/4t6STKAioDgzEhqQTjIociXnm2npQU
	 OCtnBp2RCAq6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA965FF5136
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 19:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177559173369.30274.12548324653392424553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0888be25f8309f61b4b8fd90629703cc604212df1f28b055ae3d15a8e950f66f
Date: Tue, 07 Apr 2026 19:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775591733
