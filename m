Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D02E2D05E
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 02:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743474594; cv=none; b=pw+2Jmpnd5ZIeJFaqi7qfCNAFmohg86WfJCGEWQuxIaTCYFdz/qA0Lb1r4oAoPen+SpTw2gWyusUt6lt6oIoH1eELuxsebCIDNslfyJrKVq7oAKWssWLz/HtnHYS9sp8yEtqq3770CBJQjfRB6VJeeaemmE5tB9HtaiyM8iPjt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743474594; c=relaxed/simple;
	bh=64zoSaf9FDNuh+95fpx13Cl3MpfugORJxOUd/zTQzYw=;
	h=To:Subject:From:Message-Id:Date; b=TewmuYPxxobpZX791Bleus3CCDHjTCqbO/REWfJ/gg7/fiEocls2C2J20DVmZ7vFGY+uazjmGKcmx2Z/rp03kSAIE+0fesnAGl1XVvkbwdOFL+pNjEq2LV4v7WOFClljjoXs7wIbMScGveTuqqPsJmcunOGDvwlxUiuo1KNmIyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iMSI6LSg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMSI6LSg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE592C4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743474593;
	bh=64zoSaf9FDNuh+95fpx13Cl3MpfugORJxOUd/zTQzYw=;
	h=To:Subject:From:Date:From;
	b=iMSI6LSg+ZodXBnh21dc/aB4ThCZSEUQD9pd3p46FgTIGkku57CB1taqUKQsYoXWg
	 CzlaxdjFVenD4An+VItdhUK+h9GWe/uBQiOjlYnvCI+IwrBrxxqTyfzicW5S8IQCar
	 cTGsCS6bGFGnOIZrC9zsU4k7d5Us5cpUwtCTttSwzETLkwnBcXLcZhVHQtg4iZUASL
	 VN2KfJYxeiM5iP1tSNnelr2DakX+24sOdQDeESe11Cm/tPcAf7BCdeujfD2eMTTuFv
	 +rxarRUorpvcgpSGSvMz8sRMas0dj2XB85VgsCweEeukqF87X3BhYvU4fyQpDaXjtO
	 btdtAOghSzMiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B661EC3600C
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174347459369.23365.8861335271326434413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2561eb636fd6e71ef0ed20df14687627ad8650438e3350d49e9fca8564cfed3
Date: Tue, 01 Apr 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743474593
