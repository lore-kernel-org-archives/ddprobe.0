Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E7E346AE3
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768208634; cv=none; b=OsgWO6zFCHo7LcKSk17qlP56KPqzuttUbMP4iyxbJOHE2UDQVr38wi50NHjGoKa8haIZwWAPWZWt3tik9JIVOx0EzEyk2GscpvqoNTuj1PGIfKWEHcVO+ObpAc64+hx4rnV4ik+Edvj49JdUDTdeVOvc/FX+E5/2yA0nLO+EkKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768208634; c=relaxed/simple;
	bh=91cW3ZSAU4GC5sg4RFDEsn59rpY/7flYAE9pmr6N/vQ=;
	h=To:Subject:From:Message-Id:Date; b=BPWVFkoAg5cz6Ci+0CT+3FiInhENXj3VRYk7/9qBZVjHuPSjHy52CdG7CilF/qtN1+QTNt1WRTnt3ExaCVV/U1+O1znx1pgrN9HWyRSEUhnPDvi2RDRglSvTxayt6uO83ntY6nM03o7IbzNbK/Fj4R6YGddwMycftDwYZNKjS2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Soy9AmH8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Soy9AmH8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E76C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768208633;
	bh=91cW3ZSAU4GC5sg4RFDEsn59rpY/7flYAE9pmr6N/vQ=;
	h=To:Subject:From:Date:From;
	b=Soy9AmH8dPB+H1s9VL0M5G8DilVYa8yi4Dyau0ay8OyXG+cQwmgwIjH3VfNB3bEX+
	 /rce2+EIZ2PRTsLHFdegImcTfL0oK9Rj7IZbkB41t6eg67g21KsZkhGqQAVVIT7dbL
	 tn7ZD4EIFo+oFkHdGCBqOZG95Ei1n2C0RXUFkbcH4c6bFggk/EXpPWeeeUC6xPF8x7
	 HC0LEpeociEarAuuLnBmtFjU/R72mEB+JUzxQK+S5i4tDDqldVQ5194Yd5ntWFYzZ9
	 lYZ0Ta9n2ilkCqP4SjvjvyvLHV62XOK586QjoCrpH3Z75lFVFZ/jrgnFbTpiwY3J4I
	 RUgWgNUvl8G/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928CED25051
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176820863358.13342.702756829839710237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e92186753ec8622e7443770e4669ce13e2cddc118ae483c0813747e972ca6035
Date: Mon, 12 Jan 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768208633
