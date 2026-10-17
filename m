Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B8F2481652
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792231834; cv=none; b=JwWLlns1ZuscqKr3o+dSCWm+PKwLD9l09h8aYMW2DjI7F7MZmUqnOMhI8iPmlhMCKbr9FK4/CQswwt7SlmgwE3aoQ2lDual+aA0VrKLPUpQlnDAKspRg6TcBks003RxnlDbCO6dhBDGXL5pVgEzF+GzokXBib9RPDlXxi3cnnhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792231834; c=relaxed/simple;
	bh=39SkHnsz2nsb1eoiG9i9qPibIkOC32I7mafn6o9XAHg=;
	h=To:Subject:From:Message-Id:Date; b=l8jgRphL48e9WWvBZirItmjd2JslgEXf0DUde4zK1BJLqRtC1U8hDrUtbkVnGnddQ+w6vfLmnBUBSiztopupfZZkndhE60fUga7rLNc7Etdy4bEIRemUaaRlyJLbSdr08BBfd6KZe7YKtWJYisq2JzFVQ64nbE2h9B+PAfbnAMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fa6BPxhg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fa6BPxhg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5FCC2BCFA
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792231833;
	bh=39SkHnsz2nsb1eoiG9i9qPibIkOC32I7mafn6o9XAHg=;
	h=To:Subject:From:Date:From;
	b=fa6BPxhgXyHu5J7ddBGmQcDlwA4V9Q9PyoZ7MZDE6UCMPODsngZxr9DngfvY5+/iG
	 rPpOUHj5wK8G8vOqcKkunFXqUrM709/RHqVo91pxvdlsSNKEnsFpO/fM6hwVPvWVlr
	 nGaAHTeVBL10XPRTe+/5fCoPAsHb4zicGZ1wRX0R46J5jZEYrw8w6aTu+fEQqoJ03Y
	 Tp0+KGC30cOcVP653LjByfrnolQG0ILOQBU8R20DnSNZueH/DAP7dOmfKzyyiz9m3G
	 8I7LdKo32nJyBJj4XL7MuW6uu+fq/pdjBpTtYhEsJPOC9vqmbRJuLje6tzsUJcjAK+
	 g1jcHHh128urw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF20CCF2C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179223183370.1634.17076296106824064382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 489419805f8b1ff0b4422fe980c1ded857ca3be89b8367451f42c058de3afd0f
Date: Sat, 17 Oct 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792231833
