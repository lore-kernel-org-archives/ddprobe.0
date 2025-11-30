Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1192F36D51B
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 02:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764471174; cv=none; b=tl7t3E064Py491KD17tBFWVXcVjyu0T72VQAOJvZkBN4IeOTvX4rBIlbAhaXzYs1J6htDkz+/DwYZABnJDTZpwPF3/ADOlHWELwN086BtS6fnr8JFf2VYEH4H/XmOa2sw7NzVkqwa6uZ2jlC5Ms54rx8HDajIAemg2vpqZbybRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764471174; c=relaxed/simple;
	bh=uh7Jg7G5QZcYsD5AJr0GSPuzacoKuD4J4jciDTO94eQ=;
	h=To:Subject:From:Message-Id:Date; b=QF510fUaEF6Ytp9GEYzx6plmHO/XQyBQpyGWfNIy9z5pUZRtI73O1FNOKcJ7cr9zv79PfQTlDCrSAEHV+WMS49MakFR7dR8bTqY1LLJpgW9rbWowh5twS/JvqG9O+xTAGrHseByZlRez1TJ9fNN8x5qXs6juiMPR3QNO1OO/bnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bho2u6R/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bho2u6R/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D4AC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 02:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764471173;
	bh=uh7Jg7G5QZcYsD5AJr0GSPuzacoKuD4J4jciDTO94eQ=;
	h=To:Subject:From:Date:From;
	b=Bho2u6R/GkgadX9HttZby4CS+YWtW4o9w56WAa42dOaf6xlTy/GVzLQ3wkDV03oeH
	 GL8GaGHwMRPcooVCICKEUJTBMDWXq4Saz7uh1qivRBPmP2fejHjfN0WZrrfDO6/e2F
	 MtIAetx0tYTZxu0AIrtEIvD75vDarLd09bMir+HcIfgP8A2lnpeFvooswS2OBPRfzk
	 PN9z0GtYqqYy0LB17opzjxGSGMbz19oGQ8fNC2Y5A/LUsQqfsMvoOKqOfS/LJ62DJt
	 HqG355n+pX8ZHwdsAg9pEyfjnUtkdPH86wQ1EiXohpmY/01pbVjHSMxDldZFjRlzff
	 fcESWv4ctoFhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950BCD116E2
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 02:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176447117358.29245.11701234549533061712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da822ae73cfda48fcd470ced90ff7f3c5e0e8fe25153420187703db827eeeddd
Date: Sun, 30 Nov 2025 02:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764471173
