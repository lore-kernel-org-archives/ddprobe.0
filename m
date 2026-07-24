Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BD1D36654F
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784885434; cv=none; b=uJOocQ/yGbi2oxTv3GS8bAoGIgvUdQpgMjMcYcFwmUE2sYH0kT2Y3S/PQnYe1Bvid2zbvxlC/9yFVpxbLtFU+zuVzqxAol/K7K4fQ6Ja1JnlZN6Ke91ef9mlUnP952Xvp9W6V74yhUEfwJG5Ob/xeiRBZ69X7rhxK4WUEz0nRHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784885434; c=relaxed/simple;
	bh=C/6OcIB4e7EVWMOsgcMxkcLdyml62zT5zPVJzoSUWyE=;
	h=To:Subject:From:Message-Id:Date; b=SBbGsjTE4EGxXh7N/gPqLfh9lpPgtvqygjWmAF0oDfqW1TG6b4j65F19K/NBdmvSpDuGtAnO/oIS+gHr4art5rbi7wIGA+udDiLRVoA3U2nyjmUrZJr4e++2EaSYbgQ2264gJX4U5Y7ZeiHW/fuv+hxAyjtmde4NQ5eNpDSbK1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHj5EgPq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHj5EgPq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A53C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784885433;
	bh=C/6OcIB4e7EVWMOsgcMxkcLdyml62zT5zPVJzoSUWyE=;
	h=To:Subject:From:Date:From;
	b=uHj5EgPqihtR96RDFjLZKuMvhuwfoDyudIiEMzZxeFTvrUQYRhBghqROmsNfBkP4q
	 uydUpPPmPPW+roCKKi4/uwvMrwVr0XgIvW7koEOKG1ZL3wG5ZvzICEARz2riQmfZh4
	 8zT0HJXJDruFOX6QPiqXz8ZZXHUcDjtAg6qoPAiOhnkQ24e8U9n9GWEOFnVQ0yKQRP
	 ngqUpL5uK+n+JmE5xJQi5+VlOrjQC0MqivGn+EzKKrfA0qTyysr/Lgfo6FvGwMDKC3
	 kZKMsC1v7FhyBVCxlMOEbRU29zxpXM4BL8kDkoKx7HLOWqJy0nIrlHWBWGftLW65xW
	 xj5w0cCP4Fftw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5B74C531FA
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178488543373.29777.14638255023570950299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a6592a812d0205c8a6106459d0a719c3a4aaa1d66c1b27f06543083f62bccbc
Date: Fri, 24 Jul 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784885433
