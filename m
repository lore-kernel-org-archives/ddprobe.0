Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A5081667FA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 04:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717822643; cv=none; b=Cg6zWVw8cYbr8IAks1yDBa7hupjJVZ959TDnKR1ETDgg5rNaOWmBXgrZrzdDWH5kjJHqA/fUrjTXS5fiBWBSh2KNASMpfbOMeYVMdQqPsYBDc6wVxrPUxdQDeLRr4rpC1ET9LvnT19uMd+imlxRXResLWTSKFtKloeb5vaa92zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717822643; c=relaxed/simple;
	bh=r+EhdZciTOqtUTUip0ikLc82Zn4gQUstc2g/rkJKmT0=;
	h=To:Subject:From:Message-Id:Date; b=sHphCB8JmcalllMsE6uCKTPYrD/KP/au3tZizwdn8mW7tp1WfX1Z5xKCPJm7MFtH5vBATRVngfFafQvukXqhoonVSHcVLVEo0VfplrLR3RQ+Vc4na4uO2ykjz5TnPLkQ5In8re2jTs5g0tOzUWBQ1KPQe132Lh0jmXJqxr0GLKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=af2VfQNc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="af2VfQNc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECC8CC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 04:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717822643;
	bh=r+EhdZciTOqtUTUip0ikLc82Zn4gQUstc2g/rkJKmT0=;
	h=To:Subject:From:Date:From;
	b=af2VfQNcyH44zws+XrOXQkgb5SDmIdulvE0VNPUzS+H+UDWSUEwr0PIv8SXY8FuhX
	 LluS4pyQYBW750FMthRtbkgwjXHQ7puVamNSQW8QbyhjedPwVPL+9FhSH+pltNFXm7
	 g7Y9vx13/7sMO0VLMz3tvctjr8Qhb81lvP1aOUS0NN64ovjRvwDRg8HyAmQj/AHJ/k
	 ch3KfwFzfsCXI6bVnUHt4ayd79Do0FHMXD65A54v1SvzpK6SG+94Ccq5Yv5od31nqh
	 qpu+n2IiQwd/LzOHkbXo0A4yhICawjYOC24VwBWxNG5Bqyo3AJiLMWgma0c649lSl3
	 oIK7gj/YCJxtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D56CEC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 04:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171782264283.6835.5742330354982203497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08f1e24905ace1252cc8b13bbbe43b8648fb7b243323c98d5c59e590501ea6c6
Date: Sat, 08 Jun 2024 04:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717822642
