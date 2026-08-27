Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356F847DFBE
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787844034; cv=none; b=A8BlFtRq48HGS4OnZBryuJJDh76pTJwZ11dZcz9b+DGMCDLV3tYfKTAnSk3AU9EjD+U010R4jsEw878giCyinO/5mwWRL85okjMehZE1giKoNykpsHvRuTLKguGnnJ/TF5ZOTmUZpqUdvl6QgWfKtO4A/+m5VDDz/Jy5aEqDXQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787844034; c=relaxed/simple;
	bh=0GxBZvk+La5XO4ynookxIMYmnvHdn3yDgIiqTeLdv34=;
	h=To:Subject:From:Message-Id:Date; b=MTFpiXXO6sHAssZbVfceKbbfm/RxcAHZjsFjQMaSRfWgC5VvABf/BeT3jAsOM3tEBD+IJ9vpuTeTzvnR7aojMvfal8Imtz64PUCOhvEkYsmRcuRKgZxymEULYCLMRFC7VV+K8ZMrC5mYSrdzkRGLdzBxfXapcwlTjmH8zMyAV8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnbrVURH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnbrVURH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E66C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787844033;
	bh=0GxBZvk+La5XO4ynookxIMYmnvHdn3yDgIiqTeLdv34=;
	h=To:Subject:From:Date:From;
	b=VnbrVURHS5wfKHYzSnzpQ0SIOte/pPTNpsNPYknUjV+9owBjPP3zJMNUSSsxHclBw
	 pz8ggnPDdV9MectAHhM260UCO59RryZymPxpQ6okHAQejCARnE8/fNPfwrnh8mL9r+
	 WiQ6rjQaqZoX3VyU8O0blNmtuw6PVsxaWh7jtTdifGR5RLNIPwrCDS3XkIjpM5f3fw
	 iAIl6kgHf+aBcHeO+INdla77vPL51QoC/VjERoaaoII4985mm6KfR8SmkXyB6orycN
	 45oHi4oKumKHXRrk1Aa0oDDwfU1XIilLZsrfSzCV5RRDP2BSKXdY7Td0gdkKabD7cn
	 /Q084RK8hHo4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCD0C61DCD
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178784403371.15103.8593088373874714191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f69e2931ed26b026256d6d32da39258de00fd5845e409e7e2cc81a01f120b432
Date: Thu, 27 Aug 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787844033
