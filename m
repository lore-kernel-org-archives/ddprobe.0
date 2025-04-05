Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7702E62A0
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743849594; cv=none; b=ZrqHtFegzEVecpbcMp/yPUt7ek1czh9S+dB0f3/EF0YbXZGPMHefMS2Ikr/dImztf9RcFevOPfuyNNpCLhR+Nb7toU2dIRuXXUScYEUAIK7mi0wGRGOsQ/mK4jTf5sfYX/UEEprFks4ufiDgzIT+vfDk0oTvx4/UIJW6suDBzkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743849594; c=relaxed/simple;
	bh=gh/3hRb6xOYd3hG4v/JdMcoOCBTTa0QzGElKrDsLgqQ=;
	h=To:Subject:From:Message-Id:Date; b=k7BIKGgzv/om99UQ5tSu/oOwIcptt0gggfsRg7MWdIfuRcBGTcwm+clL6hkCEok+ZWFYqHD3GsXwkQEzNUQ2X5C1CF6yRD1sG6DDSN5uLECes1D5RbM+Hcnya1liePWoVUqZCHPa+7SdxUjNLbkf/u7FDvla15mIHCs2nhBHxn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qBE8cQup; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qBE8cQup"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAEB6C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743849593;
	bh=gh/3hRb6xOYd3hG4v/JdMcoOCBTTa0QzGElKrDsLgqQ=;
	h=To:Subject:From:Date:From;
	b=qBE8cQupbo0mqJf0UIOdx0jffx7bJMs5T/lNjXSE64QWBDG1tdnoa9e+RR2LuBISH
	 ybClbgG3RIHpF3j5QivLraN3wosS1ikKe+zbdbQM1odvc7ur4auNMAuOVIPEUj+qLK
	 h7Fiy1j2JCTG5Kjjh70/y59wyHmHr4WmRkL5yy1epoIpcvk4rQtJOtImvXwrbUvUtO
	 GJhyhxYbPag4ewmThbSMlsPmhftVVY4mhN6VRuVRoF3jYzaGSnPf++RGHyEpdYzS7N
	 SF0kltYzMBiFBrn68g8JQjAyOiAsdFx+S30Wl8KnSo7V+dvxJ8kXh70H+3u+EAESvn
	 plG8cKBpsArZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F6EC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174384959365.8495.11518662039153363673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ec3af5b8cf7b17e6e42212070b0fe0287b50ec783dc8075bd8953d86dd469d1
Date: Sat, 05 Apr 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743849593
