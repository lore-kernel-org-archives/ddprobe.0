Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DC41804A
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748944795; cv=none; b=Mb1aa4LehE7Mk+wAlB6W+UNjySVIBddLSTg0wx2W+iqCg8N+TWOyt1cYESezErAFIqHd8GcgN3WCzwmhBzQUmmkiLhAj/ObeVSi99owzVlZGG1dvGqL8DHbA0vs3jOIUCnXmxG06x9aqTGxeqqYnkRqufgNSdlzUg4+wy6zPTAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748944795; c=relaxed/simple;
	bh=AzUA3lf2FlFoYlW969FOTPdgYuUBWJXg+oIlkYDGaM8=;
	h=To:Subject:From:Message-Id:Date; b=T95h3QZqHZn03fF29/ku3k2Hdzpubggb3jmylGlu2pg1SgdDEE/2Lkm8E60NJ2NZCR+tjL0k+xKaWabQI3I0GNTQabfv76Wh9ABBjmbTwZoo0wEuKhdRCr0PjaET3F1OrDYcMUeYaYU//K1GRnWWkh0j6nyinT1crkreIK2eaRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRFYVVWe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRFYVVWe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E357C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748944793;
	bh=AzUA3lf2FlFoYlW969FOTPdgYuUBWJXg+oIlkYDGaM8=;
	h=To:Subject:From:Date:From;
	b=lRFYVVWe9zaHe92B+yinKIkssgVf9Kc728K9hAWP2+kDnr0MSkYR1HhjlE+VTY3a7
	 CDJiwLraGT/xh78KtkftVv/xmjI+E4TOrN+jCGxByJZ2m7aIWZNjC6TDVGHB9ZUVGY
	 hyE2/llEq2TeQY4DxKdoEKhBPYkaDliUKzP9yXv/4DHFaZ7aV3bzbigB+K1vHMmP0Z
	 FDVD3cna4vYKZ7GaY7AHQ/qRD/mdSDpMumcHmgM/Dftw1AwRRaIaLl8C6l3WiRK3h3
	 thvz/h0eJY5hp8jHCE3Oiv5NtjHE0E5dNf4ll4Kd0+ajYkNQIQt31JIC828Oa+sx3D
	 m7b3eFSZ4/ijw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB93C5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174894479357.16868.5653747364656788020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 396123f6152e6029f9e5fd2792643d402db867a2ec1597bc3496d8e1a6106ec6
Date: Tue, 03 Jun 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748944793
