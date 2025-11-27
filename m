Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C4D2C158D
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 22:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764283374; cv=none; b=XJeYr3vps+wOgIci54uW+azm4AYHvEA3wH0SQOophRpBxJDA5FHyn/4tQSbNWotm/S5cpI7BCKCtHoMhInexHRU9gv/k6hJCcEoGemxEzS2YQm4k+yKRGc42KcnZ/JfusGiRK+oPkWXHVWKIB5HCwnWAjQRlLDDtYFdSMayIWdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764283374; c=relaxed/simple;
	bh=pdhkyR7Arv1E6xavKYONSfi98l4NV/MK/7s5hJP0SrU=;
	h=To:Subject:From:Message-Id:Date; b=p2N8rWWECU1V2Vo+or6eAwnaUP0dRe8rO75vPs3fn2vcAPzF7wnySN62opWuipBs4F2slICeJZyH0AooU1NNS3bfW41977GncUWaWeIhnfhfZKrKoajPGDAjOVQL0ulPw5u0P3coUyipl+qFJX2lJujsoBqdJLKOaYEx2AEcBao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qxr+lKng; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qxr+lKng"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47A1C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 22:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764283373;
	bh=pdhkyR7Arv1E6xavKYONSfi98l4NV/MK/7s5hJP0SrU=;
	h=To:Subject:From:Date:From;
	b=Qxr+lKngoYLBqjgBNZreKHOj+vC6+xhaOuEZfsPjN4LQeWXSsJXPTa6e3mYf8He/i
	 YncQdjUa0/XitCZJIh+jOlgvg9Z4ZhA64zLQy/AfJWQ2PVVKP7kOXelyX9V1DkzG6h
	 a5yS9sViLFIM9n13dqHcpZn5EhwtpGEHynkPG+UIGcM0E0UQXYZMOroYdBafBPHv9F
	 6rFDTQ/HhO9eIlm2mFBrESkN9P4KlB3D2CB44pJ6Qzc4kwYD97ta/mm1Rw4tBKUoD+
	 FBlJ2Gp5RfrkSazx+Fa/Qsoof4Gi5veCmYI0QuBnm7EfkThh87W88GhImTw1QdCGMF
	 d++pmj+A3yRPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912AECFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 22:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176428337358.12163.6903583581775654993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6083b0090da3a17c853f0b87529d611dba58a7c3bf2fd5d6ed966059ec6945d
Date: Thu, 27 Nov 2025 22:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764283373
