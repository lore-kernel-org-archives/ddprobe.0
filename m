Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270EA6BB5B
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749260994; cv=none; b=OlcZpnNEZs0f4piyPqhcrwzHHv44tVsnuZMDfG4u39tuSC6VWLLp5xgEDMDgvNOy/qdT1B6jv634LSbSyw3pIWpfESI0XESZLqYEsy6lYKa/4AG70cFgdxWP4y9uh8IlB03atgbJOWVC9k8Umm/JorBPCEAx/tiQxYf1YlCum/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749260994; c=relaxed/simple;
	bh=Pxd77+Da0WTdRncDQILxUqenEC0ofrn1KCO+4bHk2so=;
	h=To:Subject:From:Message-Id:Date; b=Fr4ZGSqawIbbpRDXLwWeBEddE2ytm0X7sJLyd4GTshh+ZWa1qKPfnQ6KUi2B/r9yjkC+3O/2oit/GjrsVYTHd2XNLIOqIdVChNXmmqGUj3T0Tjwqe+vnJsIxxkGhuWPq+QkAhrfdWO16l/uHtd5sR6CTHTap9IQtRo8wwu5ej9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rtw3nW20; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rtw3nW20"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6390C4CEF0
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749260993;
	bh=Pxd77+Da0WTdRncDQILxUqenEC0ofrn1KCO+4bHk2so=;
	h=To:Subject:From:Date:From;
	b=Rtw3nW20UAbxVT0JO90eyJsTg3tU3sJeNv2Sve40NabxPVnKqj12ueYyPlkVG3aRE
	 2CXL9jFaHvEFHtw1GyY8z43FY8skFcfFhPSaSZPDV3OAgU2sJ5nmrecDKnEQ1RuMAy
	 CaRlHHuYhxvK6S+7GSk4137s/JKbP0sFWZkB5ynGPrE334qHnMBW3/HWFC4wE/Lonc
	 u7IaR7nT9iBmO7GyDykxTdEubGa8nwCA+aespCoAPo0pt2yFiM05v6r5vq8t+n60x/
	 uuGgMALNcz+ubPVXNn73S0hpMfvmIicdFjkzvwgyHZEB5dD4Lp6ExiYXUgusyyCTuv
	 N7R/W2sOJievQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BA0C61CE7
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174926099358.7211.6890352254500178053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fa47ea7269a281477409ff474543f2251686293db255cb8769d7fe1ad13f854
Date: Sat, 07 Jun 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749260993
