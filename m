Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448C71A683D
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 01:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782697114; cv=none; b=mdoNCKY7f027mZARy6GlkYE6OqVJP0CVpkHQLDtCqCN3m6mbW7EhVIV29pcF+9YC912ohCB8QxPf9Nz4pHXZmdha/NC1jdA+sdMwH2TptamskSF4kD/M0BC0nGngnQkjOiMRd6sDaBcVLDuWNGmp7NNlbTN8MOsvgumlIeZpQic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782697114; c=relaxed/simple;
	bh=ATxDeZYAz2tlrI/6tiQb9APZDS0sZc6mn7y1JlOIjOE=;
	h=To:Subject:From:Message-Id:Date; b=cpys7EnNhyZT/ZcFrweOEGMPG8Z0HmqdWLI5dOpscJJFD/VhHH4vaFq8qjGeTMsJAqlWFiedkwZ/EBYdPbMN919ANHabFj3Hj6juUz+h1PLy2a2/TviQyN/os9/Pwh9efpjzlokagy9xAzv5Ck4pWx1xaMaYV3K5bkOMsPRq4eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IxZTqS98; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IxZTqS98"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD4D3C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 01:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782697113;
	bh=ATxDeZYAz2tlrI/6tiQb9APZDS0sZc6mn7y1JlOIjOE=;
	h=To:Subject:From:Date:From;
	b=IxZTqS98p8Pd8yYZ1xlbGYChwrp0jxOAvl+T8ilPZrfRagMRiJRTRaqRxUsX3cMz1
	 guARfw87Cc6lL6N2yyCzrPXGJPC257556vLTaY7Fgr8zsmCh5zzB+8qPP6fjnWLDGb
	 3X+yDiQY9HCYjZa3J01nAp6YZwxG+/FWdsdWZ3NKufedMJG7cXtqeL7XZDitU+GP04
	 14PhauvZB8MrsgzyWrLlkGFVTU2hx59YfnywKoCcUc8lFApJGk38Rfo6mbeo0CQt+s
	 mOe1C8g3w+xqUZLS8gnCFjSQmmc5Uhahi9Z/eHLS1yYOGSq3p0B8zXG9YoJL/f4tPJ
	 GFoIUwuXHlZBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF87DC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 01:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178269711369.13463.14694723581400903838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 264e4aeee9a25f078e49bcc598e50c7b2f3d26642f604ca4d1e3d6b6082e27cf
Date: Mon, 29 Jun 2026 01:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782697113
