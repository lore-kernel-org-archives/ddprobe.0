Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3185576026
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745681394; cv=none; b=pA2Mw7eIHYVmWNttWB8AAoOdi6kFjAAtLEKNa8YwtLgg131RJ2Rzw3F9lYypVxzDkN7PdCciNEnDEddVQQBePrGPQVaugZSI5dQa1mMyF70ecjQC9CJePnMn6x59BjDIysKoL3fe0MUQiRyqdMos4HMpJ8iID62GB/7MOOmj02U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745681394; c=relaxed/simple;
	bh=fC6+U11cbQJ9gCbjvEKipDZ7j12H69wb3gSSrcfr/yk=;
	h=To:Subject:From:Message-Id:Date; b=fmPKJ6YigrsmhcggsNRQUE8CbDypHpbZHSbRV7K47WL5QBmzAW0bjDTAzYrL2SUEgIaLl8W/ruGS9onsDFd0K0QaN1btLrY7yD2wVF+Z8Dpo/080vkENoVPtoEXMduox/Oe5Nn9q7UmbNnWn0ouePTVWt9ylWWJbw3RREoshmN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=stbJvebV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="stbJvebV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A099CC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745681393;
	bh=fC6+U11cbQJ9gCbjvEKipDZ7j12H69wb3gSSrcfr/yk=;
	h=To:Subject:From:Date:From;
	b=stbJvebV/H8OfzFiEOg3GnDjODYKFJZtjDDMbKTxbahS/irSUN/zLk38fVSyOnCEF
	 SRRoXJsOUB/JD+aUw96wnlYZ4KLYbAQPA9JtmDGHs7p6Gj31xbgZvEwxfAqBJdbBYK
	 3/mU/7fUITIsw8vhjeEbrw+/VhdCxl+8pEvMHbqxKoMCz49wFl21TFtNeutiEtHMQB
	 S1rOMO0N9W44XZmxw9ieAds9ATkAOnXSx90k7J+HlR1jLAjWjC2Jfd0SEGM7aAGVCq
	 GkxCWphFuNeAUl6kqmODQQ0z0gxlcZ4aFcSuLXSHFBCkNHnJzsT8ufJcCr7cKLXfRR
	 N1Yg+QIsKTjgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE42C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174568139357.18057.8407534375903901745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2f94346670ff9093bc355e3d8e00fc4f8ec86da3512204fd43498ec27dc3e05
Date: Sat, 26 Apr 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745681393
