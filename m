Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06DA428C009
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768598634; cv=none; b=BscsPru9qAjhp6qCB5ekBP+7ov2SheqiG0J6DrKdRTwQCo5dopviFXhWZ7P8Z82olGEAYjVpU0cglCwU6/wzYP9M3tzt7Neu3ahk9WRbWzTm6FbBhLBlBe0Bp3+zSHjctjbaRjPcEwpuKn4HURs7zb5KQys2WroVzrF2z3oERlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768598634; c=relaxed/simple;
	bh=m+7Bsqq7GSqA4hKCH+E9sBoYQf4BiDT7lhT+gKveBio=;
	h=To:Subject:From:Message-Id:Date; b=OIv2T9ic/IDsoNwq1++omZo3t2anwkBrY3dneTbWG9XiKXYswtNHbjMzqH7PmkFShwE5xaIZJXUy/QYceYRWSELVPjEMHagDeEcx7otrddRj0yNNRfLMw94KqtpsUVs6tHVdmfp4Oj8zmEX/rku/PDAF22sv4wmpmetqq9kiS24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZ2YbyOl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZ2YbyOl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A2AC19422
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768598633;
	bh=m+7Bsqq7GSqA4hKCH+E9sBoYQf4BiDT7lhT+gKveBio=;
	h=To:Subject:From:Date:From;
	b=jZ2YbyOl8u5xqnYPxqLOR6xixk26xXl3km/Dy72lKTr74NIU26NwAqPH5vmvrY71v
	 JM5VF1DlQagXUluTCMw5Ti5fM5rRCB21D7UkumvoRhEQCQTfpHVqR53G47i1QXp3Rs
	 enYsSjsbPDuo0mu/C7c4oZQbgYyRLf40QzunEDXXkCmFRBVanm/QUgHYlPc66xJtMi
	 012O23pLcWwpycIKGIr2lWxWLrOH3pQ+DM7KOL0OMXlfpOHxMhawjxk98iQbTLxJ71
	 yootCqzBq0JqzLp268TI9WEHLWyEoY8wSfv8h9QD+x5XGLBPA//D6YtoQT58lHP873
	 8TybvlZb7xEng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9547AC982C0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176859863358.14824.10912053267512594370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 464faac0ec0901d95ae09f2429b692b5041ee383f22aa2f2c8b1f04bf700e023
Date: Fri, 16 Jan 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768598633
