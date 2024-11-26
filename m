Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C52F1CEE97
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732637754; cv=none; b=dqooL32nGnD8OfsHEbZZki59VPCRMluUKgjmh/U4w7YKDXjvuyyoFb9R/Or/PCFWzMGX3eNkzf6cpS8CpH/aX4dI+WU689NZMvj+Cqwm0DHwfAuZ1UQsNLHOx45UvCoO19jON24qHsIE1dG0+9X6ZQyPrmBsIdos3YnemBmH28A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732637754; c=relaxed/simple;
	bh=+WJKd9khyiVFNm2Z/TnuY/MBzRfked+H2dT+LP9iTgk=;
	h=To:Subject:From:Message-Id:Date; b=go24BibbDJidrH77/MZAbT6QrwVcErX+6XJ1pAxXJ7OyOhSY6DUz3762wpnCmzmJvKbWeTCzclnpNLQUX693DFExar5/lLsYhtmWSrX79YaL87dpm5wM8MS02yAbVucVe0bAvIn2vyOZtp3IjpTSH0h56XTjrjSsGVHvmu2UfLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lbfvuceA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lbfvuceA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7553C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732637753;
	bh=+WJKd9khyiVFNm2Z/TnuY/MBzRfked+H2dT+LP9iTgk=;
	h=To:Subject:From:Date:From;
	b=lbfvuceAkUHmc74ezLJ2sEvG/UbuSfWkg0S8w7CjikSJhFKM7nyw39oG8zzrkuqwN
	 jLfjos7dHNh0im6VKDPKVFBOnfbM14kr9J1mr55odBSBvDKjCdsJrZEOkpp/13h7bG
	 JfAdWSzuXRRhIy0H+MBQxUy0qHNsnv2lsIEQ3gpGlZ3WaIBhfx30GzFEQhNDFXosrP
	 SYJJgSb2LpBfVpiC0sU8BB9DqhFtksCK4Kmu6xrtACuWobxDh04/kZrUEoCAIRPlWX
	 GCvmjjRcpfiIpwj0oMO/av6RH5hWkNiynsgoCsDyIQBpxR/9gnu1wwIUA5f/c4E3fz
	 HIUOJ53DEtzUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950ADD3B9B7
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173263775360.24742.614294166687430142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f07408172495af73923e3eaeaf34d43faa2149d8e7a1af9bf0793f486a28cab0
Date: Tue, 26 Nov 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732637753
