Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC5A1F6681
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733489154; cv=none; b=T8e9uUAR4TTr5t7xhkkOXnDLAjFFIXp66EfKa9syv9tyTQwWGVgSniiPKYvMWB0HV43p1r5WuU5Ra2OoIMw6HeO+MJe/FXdoI6wh7sHbR5RQWXLFLF1ShJ+11Hy/9K/R02FX95i2WkH2qQ3v+Zgfut32GTQ7l4TRMhW2HX9MrC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733489154; c=relaxed/simple;
	bh=uUwrkSJk/tzoAJ6/nQ5Os/t4BYT0CFo8QZtIa9SdqyE=;
	h=To:Subject:From:Message-Id:Date; b=rlRfOTbBtwTq5FpbbQds3O6IAErSWNY7Z1ylfPCggpMIurJV6Bvq0vsEaNpYZz2bkSok8/0/rRazy2xF1qoLMEQdhw0JKbyXJIiC9rhddnsHf0U97qNXQF+njNuPlefdhFojN4RvKUhj8u82cSHvwkvrW/9Z9GwLH9ILpXf+L7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W6il8v8B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W6il8v8B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B341CC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733489153;
	bh=uUwrkSJk/tzoAJ6/nQ5Os/t4BYT0CFo8QZtIa9SdqyE=;
	h=To:Subject:From:Date:From;
	b=W6il8v8B/Wi717p5LTNKgAVYJ6IJReJFp2ILjp9Ou7tPNVQY6tb/CgtbBSTZx4q7/
	 ftE80fY2eS+7v4P0rHSIWglY/ozCzNH3yH3FVmdXPNOLcLhcYtuPSygcz4XsOa64Xa
	 ymNfyi8E/uHeoKzH6wrqeF44VLycBENsUnchniTKjiKqPZjv9985mbzEPcVGTFYIvL
	 dl/DDI8tqxuyHkVMw3T1djWtg6T91Em40X/1vtxqhPBA4tlcTn4PlEQKp0yfvgl8u4
	 Au5uIQZupkBKjt9smqm5lu/NzrvS4xSFRA/EIF0BJn5hH4n2P9+umdaFT1EcT/kaD4
	 lEqyISdZOYASg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E52E77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173348915360.32193.1645058374842773266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 630aa683f11d40ffa36c7c4d1dfadac50d0442fcd7f6a18e5d7bd5c4c1a6341e
Date: Fri, 06 Dec 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733489153
