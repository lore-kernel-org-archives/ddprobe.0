Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF7F126BE1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786761634; cv=none; b=OcafQicu0ngb7KJBoMtQziccrqS3cWWr/+ahDVwZWzRs3cR0AKmi3EiZ1nQFbwxu2GSMsipBHSx7LsojN/Usz8lXMGXnPsPIrPGrVMjChEi8YVW9RDPlJpzZt8ohVAf2gDjM6AAwsBD+GuyGVdaOCEUbBBa6PxGeMGhbo4TIwrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786761634; c=relaxed/simple;
	bh=WudG7FnM6cK5cP5NJ9s2aYpoxYhOv9gi7jiUdPG97Tk=;
	h=To:Subject:From:Message-Id:Date; b=oyuT2vMdpZ2HnqvZKxPDFqu5KsLM9IHkS4nmpYPbEJHQSxT7Dx9+XxT3FkwvEqNmNhCaNnt3tJ0wdR+Ccr5aWo2YXtXvn6dalAI9tq0lC9nJUtvgdJh3w69+vDqoE/XO/rFOq35ycPbWhH7CPbgZ5VH8bY1zM5ypgobBf3Nfrsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CfMSKwd1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CfMSKwd1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD9F8C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786761633;
	bh=WudG7FnM6cK5cP5NJ9s2aYpoxYhOv9gi7jiUdPG97Tk=;
	h=To:Subject:From:Date:From;
	b=CfMSKwd1Offr9CP8VjFYGn0NC6d1Qm/miah6R7qRNd9WD3rjdsZio6M290lJTzQLl
	 zcgGzoCyI5dku77T6W52xBk22gAZkZb/oLfRnpZAYlzSKsE5tRwhc10uRwvZwxKPPy
	 q2fCWg3KF2VfRkfhfALIhUqi+SfvHPP9DOt4I/Ms8ZrKowHGBSI4ljc05ZhjlPX8pK
	 HwgZ0G5jqZwlKH0Q964YQF5dI8cR5a5Qrlwz0elAEYdmK8BoEAo+ZCkqPqN7BFKAQW
	 qw11RrHN3i8gB1LRDcI3mOiNpgSb7860tlGM1LXFaGXjatHelDsgwsdeoxijI/ZWG1
	 BbzWacY9sIIdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D49C5B572
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178676163373.28185.1807760530737854059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3217c1d1905d4175addbc6de860fd55bb2d449e24aae105086c114438be20b35
Date: Sat, 15 Aug 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786761633
