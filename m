Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1F8325485
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 08:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782721114; cv=none; b=GwsP7o+I7fqYIwFNoERf+vvtS8YsqMvb104/CbNzE+Jf2m4T9u+CgNatFpZrNS3OJ2iT8RoOCycGOFD7gOJbCyArJFbOnISq4fpdQFCT8blnF93yiV3C/NqQPmEtwinxHM0yuLhKTURthmPFMiThrTcQWA5kJ08FVcbKI6psEPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782721114; c=relaxed/simple;
	bh=l4D6s6Hfxtp9e+jjFq4AxkXqrtw3lppp2wufUdiCQx8=;
	h=To:Subject:From:Message-Id:Date; b=WjCGoHeHQQfg4ZQkpHshl3uEh09Zp8557bUosyqO53TvLhu6yu5nitnxcSLo466Uj1AwCHnNylm/bnE8w/dGAyPHFMqUaijHP5/O1ySFX/2ZaQcpBqNtsozxlv9S6+uaTrneVPIqze2cITWJSjsMgDwTW+YDuCpcE2RuSMztWcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qV+o92EW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qV+o92EW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDA1C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 08:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782721113;
	bh=l4D6s6Hfxtp9e+jjFq4AxkXqrtw3lppp2wufUdiCQx8=;
	h=To:Subject:From:Date:From;
	b=qV+o92EWzUCwkqCIjebF7CiqbH5Sq6uewfIEGS7Pg3T8hyBTJDSmNyfz0tej+9eY+
	 MH2wud1lN7P0rNsIEzHRazwpZpvHjuiSpr5+yo33gGs6qgDaivivDKqSJesT2whJvL
	 0Vf7EWWiDBP2WBJBeaUcieoAszJGKle485orC62Lj8QzeqrmMI+Xk44eOnfhCj5T4R
	 mfJSmM2xQCTvMWN7QJoePBGD0BriZg4900GBwIB6VO1f+vZANY8VQw1fgwOAJv6qu1
	 oo3u5Y1qgc0ep3sam7ef48z74PcTQQ3J9HfwBwYnVP+42YZS5YVjlKw84A+kaa/abE
	 hrKOOoIAuxvow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7B3C44500
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 08:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178272111370.18288.4730174248573571251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b8422534e30c81b0a1e6f57092af678b8aea4f1c207e38af17ecf8c2f83eef0
Date: Mon, 29 Jun 2026 08:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782721113
