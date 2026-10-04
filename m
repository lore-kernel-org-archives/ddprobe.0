Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2783E43B4A3
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 14:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791124234; cv=none; b=JxGX8iOHVQrHYeDZL3EC/xsw+vxMXi1KTKg15eQcbIXlKryYI8cnU/yDeNxzkDM1gQkcdx7blv8fvFKSM/B+DIMPYcnka3iXwO579z4Fewb5a9gDC9NkoaBZf287efHYSqh/wyxzMa4NxBGAxZ0fypZewx/ZYObi6fWURe8lQk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791124234; c=relaxed/simple;
	bh=RIH0ChzsUI+Ci/IAyrVJr5bwlbyYyNyaBO/JXI6pZrQ=;
	h=To:Subject:From:Message-Id:Date; b=sbwrdl7Gis2evL/JMdEPr9RvRGN/mrTWu5k5dcVN9WuRxq9FosKHwXB6Vf4oyN9THvsXG2CULIms9hl4dhgRFCjtgG15qM8c9alNjd0ihAAcFCEpKwLpsKZdFfOmgA72Ee0Gne+yFa0alRwzMNR/RKbZuhSEg9bUYeKCj89+xdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nUdMrqXU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nUdMrqXU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4C77C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791124233;
	bh=RIH0ChzsUI+Ci/IAyrVJr5bwlbyYyNyaBO/JXI6pZrQ=;
	h=To:Subject:From:Date:From;
	b=nUdMrqXUxzGPwm74yIROzA4fIqEXFEBySH5hExDGoyJJ80C97Cr6kB/MQknm/Rw+H
	 qqH+7Wr9vwXjxVFJApg+bYQZAKe7FoDCFSmBmYmKFQkMEX57e4UWNxxu+IUaf0+LEg
	 Q8dXe1rBOYQxcM7rJ8gfJrf9cxgZEfr41VThFy8jNpvnHx2UsYdtUIHXP/jE3lyad4
	 /93LDwGZkwvLmW7OJg60zHrkS2AYIKZ6x97igcdR+wb3ArwtacyBiIPaXOCvPIErX/
	 n2nUMb89xj8CNQ5MdyNOGewsuzsvschunQh7anHoZBLhXYF1Vb2udR3GfHCeAD0n7p
	 FVXlFWmdTT8vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B018BCA5FE6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179112423368.31278.16815031250632608195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b437204f4099839009c9020e60b44269b9bcf83f493345f746922255caffef2
Date: Sun, 04 Oct 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791124233
