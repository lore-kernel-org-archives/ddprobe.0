Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2DB17B418
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 10:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780827274; cv=none; b=TwRlU0AYv1IcB3RfLm6pL1zE7ii/JGih7dA6wnGONH+6cQOq6lLDrPdSpD3EJKL2/kvKbFDtBq2qBJza0FRl9B/xhGExqmet7QyfIlC+b5U4HXPdBvoNAPtyZ+4gWX7q/7o+Lm82p5V+vKRD0x7XKLajZmwY+ytdEslsIvdnkBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780827274; c=relaxed/simple;
	bh=ZV7Gjza5Yho2c3yje79ieN8qoIesnPFu+hk31iBUELc=;
	h=To:Subject:From:Message-Id:Date; b=CI5wzDbdHaL2jyWe1BUgURzq0M9sn/Q+Ti28e6DYfY8mIcBstGxVZm2Vatak/nJ4Cv6Qsz/3teCGdlY86DvgiO+/afc/HHojvAJvWAfmKqfdgpIhXDQ7njzrnyEBOkvtqwEfRf5C1ENCVr6oHc9+INQrWgHgCRMvzbUpH7l/DMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZerXwiXT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZerXwiXT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8C14C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 10:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780827273;
	bh=ZV7Gjza5Yho2c3yje79ieN8qoIesnPFu+hk31iBUELc=;
	h=To:Subject:From:Date:From;
	b=ZerXwiXT/wWheOURRmnZ/vFY7rsBpknsU6MhYECHB0mAVAs4AADDbNmkSF8W49cW1
	 JsIDTaIeUM4m3CzLVodqgS1MvZ6HVpveR0BUbrCgeAzZ3bzXqUAXQz5r30GcP5yqMK
	 clwvBP1mcRBl1cPWW6T94MFe1JRYwaDnK17tGYDzpOdfKcKE0wBCIfyISSJSaWGR3x
	 du3FOzRnVosSwZN3/8mDagBZHqOiCC+S9p1FJbyRS/KoGZ0/eqycZs2M9iCPdoqisi
	 SRFK9l1YIk2DvyD2X05ZpFdxHpvn5Hc50gMMjeNEcFsORJX2/maHPJaiDW8GGA1qqt
	 zSWGH5+VrnKKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD232CD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 10:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178082727368.18487.13555557709314116601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c0ea745b1062b161da96768782e2e2a432da4727bcf11449f2ac9f54c5f338b
Date: Sun, 07 Jun 2026 10:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780827273
