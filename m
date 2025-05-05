Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36EEA1A255C
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746463794; cv=none; b=WFvCIjBlg+mDbhwDszg7T7DClU/AIjhrfKTVBOBfx5nb3FKeeyXc7lKjsxHteR8bwqeZisJ5SifSBeyhpMp3r+eGw4XWtS/ZrqAy8zu8+5UKuEvTD8GrVz84WGRCYGstqbqWJkHfLYil76lSzo3TBcP1PeHNW/Jsn0sHY0ihtXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746463794; c=relaxed/simple;
	bh=ekgpRkpB8ZIfa0oCP/B78AUwzZZEAOIsLRGHTAEzMU4=;
	h=To:Subject:From:Message-Id:Date; b=cvIrrK551pyPAgQ+wdzK4g2/rEBCpf90i8svbW6XWqtU0aXRqVCsB1GV7KAG1hcXhT7db9qLxD/mdBfzItVSb19XWtSxZO60bRkTUwTwKAfqHR6uwo+8zUNiNWIk71OD9k848LhXBQh9AQulggYZdbBp6056VQXiOsqMfB6svMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2T11Ejd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2T11Ejd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD48C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746463793;
	bh=ekgpRkpB8ZIfa0oCP/B78AUwzZZEAOIsLRGHTAEzMU4=;
	h=To:Subject:From:Date:From;
	b=A2T11EjdMix07qTOGkJqrtBK3nzkZ/A4XMr/8+nxlAYqO0YfrRrIJuWjke6vIWPH/
	 zlgb22Q7vbh+saSpEDyHLSQYnC41lX7e29elkY71PCR/Av4zZcV8V6okLMdVvwKD1C
	 QE/piB0+hcUBsdsiD1/0DUdTK2hxC+C+AiBHkk4gVP9osHUuhFwV82j1DaEM/LrVSD
	 rgFiVG2zuARcCokHD+OiVI11IOvKn1UVIj5NePecaKNiFOyCPxmfC8YxBWPxL5VPYK
	 kWJ3N4Jvs6JVlARwOEk/lUNBwmePAmZERT1P2vXcvuveeqLd7VAIY5KIQ5w4wMNVaL
	 ApMISxeEjRLOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E26CC3ABAA
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174646379357.17114.1319088348324204276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84965d50617a9e3b83125f5ab402743e1043a587656f742eb206c22c5aa39a6f
Date: Mon, 05 May 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746463793
