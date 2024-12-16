Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356F01D31B2
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734383754; cv=none; b=bGxP4nB2ZocsBMRYxnlDr0wNGy5cqhWH7Aj6eFWp0JQS3CSUb3/tQyrH3qEKxG4ggVYO9oJYd3TiEFB19mzYPGmF5KeEu5dBZve3VcReS7j0CA79HLOI2qtTpruQpiex0H+lLQ19wMOBcS70DwBThNZhyh34aBYB/nwASCXrQ30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734383754; c=relaxed/simple;
	bh=IKzLfLSIyWstFNSp5ObDlW3MSIbeKX1IH3Mo7NGSirk=;
	h=To:Subject:From:Message-Id:Date; b=S38K9AmCRarRp8AkWtyDEMFIz+fUUTHFK6/AcorshKoU4f7VzkKjGjzW+WobJ9Snhlas9SPk2XUagMl5gECr8FClRdPiBSwOczVLIq8Bi9lxskJKoCgfKZt0J7SB9lxsz1d6NnvGiA2MYtDD4JsXZEErSoPB2RmFM5SUK164akg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IlLTo7il; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IlLTo7il"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B70F8C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734383753;
	bh=IKzLfLSIyWstFNSp5ObDlW3MSIbeKX1IH3Mo7NGSirk=;
	h=To:Subject:From:Date:From;
	b=IlLTo7ilDXV9KMlndX22yhBbf7n0QA5OCsSxxR3TyGSQC7bHpTc59OuoiNuZGcIPn
	 LvDIL4iHgx/fIuxNOe4xjTRXSGDTtQH8795R/lwMz4OD3tgPKEjhaRuxgK0lut0BFu
	 Bm914bcDibbPcPX3f9Bfk0wEUFrqye32y0Ciz1nf+FdWuKzO15jmitWazq9IbsL517
	 p1Y28D9sTLVvdIXsA3BVnD69i0nFFuy0XLU/QrQU4ts+hr3wdjQSNRZ45u8Wyquho2
	 QvfJDhb8Z3Ad49/F35L2twMpifZlH9m7HGXAjD7C1d9Vf/8r/uBlu2fK93dYfAxWUe
	 XT9DaBKX2VqLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5AA5E7717F
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173438375367.25821.5243536175178586587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3fe0d7839d46359a2f431ce995ee86608076692bddaa55c50c87f31bbf23450
Date: Mon, 16 Dec 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734383753
