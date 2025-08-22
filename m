Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12C7915747D
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755844794; cv=none; b=OaTIcFFQz1IvXz+z8bLTEkkgPpg0/p51rEUFQns4DvIf2W6DPphFbjTpbR8X/D/7RdJ7tsUta5K64lf8xbvaxnxM2fAOl+S40RGR6b0XwlsnPGUMe7dFk70JOoM9xBz4NNFJnHARgn2K2ZbiTUOaAvLyhwg/AUdU1rNhz+oxb9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755844794; c=relaxed/simple;
	bh=8VhmkAhiAcfTWg0MCNKhw7jf2gbf4HZ4dkkQ/r/UOQM=;
	h=To:Subject:From:Message-Id:Date; b=AeU+IK6cNX8c9AblNv8JjeX5lI8b9PBaRZSE2yHqV5t3URP1u5i4rblLk7An0ULI2rKKDM51KpKjuyhPvg1E3PIxR9fZihWlaUbG8pXRuWjxkMk+PfoQruMb5IlacyjX7N4ROg/8KAu44kAIG/fp/drL1GdRRYX3pNU5G3J0D/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E2kWfCe6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E2kWfCe6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C7C0C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755844793;
	bh=8VhmkAhiAcfTWg0MCNKhw7jf2gbf4HZ4dkkQ/r/UOQM=;
	h=To:Subject:From:Date:From;
	b=E2kWfCe6SwkiDvrpSgbsgSWT+OnOx9/zJFhBM2d/6Zqu2+h6MqHuRjnpw5M0vgQC5
	 KUL4QHa2q5mCMTEekn2822YzJO3nBilCQOSXPvSnJsXTgE7Vtszh8u7RHOHP2KRHK8
	 gss+fYdXDNUN/ypi1M9THdm4RW1lNj24BzWvMjGnGYOQBCqvyM/kuEVOknNuNL7CXC
	 Ypsxi6whehh+6l4pVfHjAC+GBgRMH0+LEcO5EuI0OCNuan/gCnnkc59CwPUSKOWwmG
	 kAsYBTLUW+KFBApiy5/B22INTVMs7ulhyUl0tZdfn3mu4q2r+GN/nL2R/fSYKGo3vu
	 yaBtH8Cm7+wiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E538CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175584479357.25153.2105875580871367095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 175723774a17136526d76b8f892187d94d68b2eb0cef3cef77cf860031dfaca2
Date: Fri, 22 Aug 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755844793
