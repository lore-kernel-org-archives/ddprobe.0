Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7CA132123
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 19:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720206323; cv=none; b=H+YfmXnKLSUr19j3khMUPxc0yWTxICZIpe0JroFVXAN2ruDQzpFyODaDYl58Qq6ysCzCM6hxK0XKPpE4yXfwyZ+vcfG1s5XbrZEQ9pCmxHyGL0yOP8eWQIhFPVN1cupXsnr80WbfxEJ5cndHvMiIZY6uZlmiITpf9cLs38Irjxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720206323; c=relaxed/simple;
	bh=IX1fzyVdKUXtBjrmRRmoT92MhwKsaPS+eD9yj52ZZNY=;
	h=To:Subject:From:Message-Id:Date; b=FGOJBAFtQd5wgM17MAoXoxJIM0+wJKcTJ5s8JaRGi0QJ7OlH0RcXatfZRyTdb9Zr3bCVMEPi5A/7OX8zvx3IlhShfCJPFika2GVJRtqudULsO2yTpn8+3/YTe1VStizLrhxWZTUDwLrWzrEq+J35uAh8To2TuAwzbzadmzC9t8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tL1LnNsD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tL1LnNsD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0E40C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 19:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720206322;
	bh=IX1fzyVdKUXtBjrmRRmoT92MhwKsaPS+eD9yj52ZZNY=;
	h=To:Subject:From:Date:From;
	b=tL1LnNsDs3FlmSlDxu7bMIQ5Ldll9h/rWfLUROxdUy/Xkzu40EEW3vK7rBwE0GYvf
	 fuzIGytVDc8QD4U42IzmWHUxTS9DCTkktrpngV/YB0drkdY6ZKa0uvqSlOr8qJstUK
	 2LoEXR0n4WmGIYLUkRGSnaWnaa4/P8JcReVXk3xc+HQM1VEdmBDOnb/O/r79/vbXQ2
	 43j9b4jGuL5judytm2FuxfFznHGtnxPPIqwbxSgPkoqlDpkL3i5CwzVyzePHCDEuG6
	 8+mZCaVK0uuhyceAjxOX9eISb7UeCOGAyd5K4mMaGCqQcUQFMuG0eJuw6TH222/5fY
	 uR/wzz1E4O1FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CACDFC3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 19:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172020632280.5752.14740530661541674528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50685540adf932a0bf2036567e3e364848f78833b0b45169816d4ac54e90a2e4
Date: Fri, 05 Jul 2024 19:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720206322
