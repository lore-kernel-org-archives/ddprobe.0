Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229381EA7E1
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754839194; cv=none; b=dzdtvXQKj2hMnO39BegB4IbOdfoRc3o4ZF4tO/hHBMoz3l3R5IGmDXFkqDLCtbUkcvTnn6Ykz5g2LvgPVuofgCpQlAjtQhi1tu6U5YmNcPbYiI0WxPHbWPxCBG16a4atAvTpurck+O5ZmuA+3zS1xddbfWVgb51YVVKhs2AK80g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754839194; c=relaxed/simple;
	bh=zIyioDNZ4bDzfwxECBq1NapjsORAFomWPkbFRYINrVo=;
	h=To:Subject:From:Message-Id:Date; b=cViYiaLUjnrFnDIdHLMQlHR86zbCEuYuL9cKlluj2mOtTGkAzdmoH8k71mcghpu9BnY3Iava4waQ65toMGoZyj0Y0d6LjloKfZdwU/Tm8sJE2bJcQpkdgmmugzb28Ze4bD76AgGl7IWnqFfuobay+OrPZ4DkyCNfk4UF1+iTumo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p0Z04vNI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p0Z04vNI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A542AC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754839193;
	bh=zIyioDNZ4bDzfwxECBq1NapjsORAFomWPkbFRYINrVo=;
	h=To:Subject:From:Date:From;
	b=p0Z04vNI/VgLFmWHXty4VkYQH8yBqWPdLJCSB7PRBybv60mibQ49x5nyRor21nYBa
	 kTK54fIHglYXkdT6XhF+469p0AOZ4WLVF1t54cgRs09HytSR8Wo/fb2+Bizkpn6b4v
	 wVKoEnqbXCmSVQoOaFmL6sRtLCU8Be1Ke6idP5m/0t2WOEq29MlXhXvqf2g9TJtvqW
	 H5049HipzxrRHq1ZBKxxundO3Lf5d9RIaDiUpwVEdsrCFGAKaLm5D2HPRHpeik6YhZ
	 b0951FwU5Ild9xIYT6JOx9dOuzRiWRkfTCxyp5lXQG+GQE7lxDSf6PmQXvduRexZRW
	 gMirA7ttWQdHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DFDC87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175483919358.24828.555711666365003220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1798a50038270f12122b2add87764b967997f9765db540e39288afc011703b4b
Date: Sun, 10 Aug 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754839193
