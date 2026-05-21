Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A1B1A6806
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779343834; cv=none; b=L000TyyhXgERdEcke3tFGkA+GkRm/8lfPWs15uxsjCC4M9IVok2Zu0UisF9uhKNvgXkG0qExHTNnvu2+0B/p3zdcTWdPmkOAReQ5yeH/sphpeTq2kBa1kygYXeVSV3H81SuOntXHr584LyGonzu0IgOimn8VoWbMPY0lXeu2iRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779343834; c=relaxed/simple;
	bh=CT7LeV6/Zu34pkOWRSHaF3L/MSfe0c0xqc/rcOplvA8=;
	h=To:Subject:From:Message-Id:Date; b=GXw5F9IhIh+C5lBL6GxcstbI9M8lvL6ckMTrux8EV3DAipatzuN6VzAEa+ddHMdu9tXPpT2CmH1Xvy2TsNWeSVe1lTB2Tbc1JRehUz2wq7vm6onMVLbbVablANEOfilirKatc7ixOe9dqlUP4alpdUQtTmZp24KZp2FWpJ/Ujuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJXSPvZe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJXSPvZe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D293DC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779343833;
	bh=CT7LeV6/Zu34pkOWRSHaF3L/MSfe0c0xqc/rcOplvA8=;
	h=To:Subject:From:Date:From;
	b=SJXSPvZeexlEsZO/AMcsHsukigoAIirjZhYsvGNMB4K3zjI7XEqdVHuO5H0v2k+ar
	 PMKjzpi1V9vQ28X/XTgeDr18QWUUalOUfmHacjdjXPgHQX/OWbBWe93Q/ss1AMcDxX
	 sDChzpel9p/PMVWZcV1imZQthS2H5wMwWFlz/ksMil6uOhvz9XxI3UrIgH6PyovYFY
	 aFLoE82Ihd3QqgJP0VvV3P5o0iUUjo1Qe7gvBdW5laSdFvE6BlNsK/ZjnSW0a1O9c4
	 SVk91yA/M5WGsF9enlGoN8H6A1SoSwP24I+wc0ov34OBMzXut1Yqmw9H+b3WfntaS9
	 Jfu+tfc8HjiDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B67A7CD343F
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177934383373.20839.11422661485193203438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1da0df0aeff9f9d07aca99eb5d7036f0a4d12b8296dd2511cf6d4aabcc67e0c5
Date: Thu, 21 May 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779343833
