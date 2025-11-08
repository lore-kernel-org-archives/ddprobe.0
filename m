Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246F3C133
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762618194; cv=none; b=pk3L/PzG2lK8BlxdjKBoMkXNk6DSH5qSMv3Luii1ZYFYcfPhXqNko0JmQUrHJAjKZz4H1cSfLzmETgjRrudWNzNRdEVeQs3Ckhp2XL5CNaMGLEYrAB8vOAgvj2lVFzex1q2iXYfGMoL5rS82n2KbFRk4ZE7T4WzUw8VCDn9NHaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762618194; c=relaxed/simple;
	bh=cUwpJIe2WkfddO7iP6iBFXVj9hU6abO+YvMVFEOEYPU=;
	h=To:Subject:From:Message-Id:Date; b=hKtgogaiTZPGxVDOjUNQ0F+EAu42RymllQ89Vs+8jduSw8SxK17LIxMkxC6UDVVYOXHcCtkJCyb5H/Tec2jGURDVQqbtN43U4MyAOUgj2vQLgyzlpVnH5KwoA4LaYF/AgT74+2mVgXnyLzVh0kQ7GWMQ0Lzz+BDQ+tCny3Y4e/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KKF4fgLj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KKF4fgLj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B75C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762618193;
	bh=cUwpJIe2WkfddO7iP6iBFXVj9hU6abO+YvMVFEOEYPU=;
	h=To:Subject:From:Date:From;
	b=KKF4fgLjpudHsSjRYq7R4cxojAoiZhYM8Yw9iZYgmatDJ2MdDeWx27GF5ONRXIrfK
	 hMF9qPgeqlJV+yqlbU7oVfsN76D1DPbKaBwUc9FNZwCjx1abWzX6R6kVKp0vBglpll
	 HCAa8At+dIUtbIcDI9hJGo29dCImIftCrDEWEA46spAbzoIF36eUYGyHL9+vSc1kZQ
	 7OUZOJU/m0eED+jnx7tCGarKO78kOqDs3+5BhrZjLr23uuueDn6lHaNjOVZRFUTPD9
	 +PAA1fsjHnzNWdRAn8jl0Kx9eu4+TDF4hPGqqJH2LMPdm5dKBYzObS8ThoOZZDc6l4
	 Z3Eol9+3k5Mkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FF5CCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176261819358.4092.2474681182375128493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c094617325c489e1c5a0215f364f9cb979af9b12ea22f1e1ec0bf6c3fb9aed11
Date: Sat, 08 Nov 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762618193
