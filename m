Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF0C171658
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736463954; cv=none; b=VOl52lDbv6ggd1TJxv06ZhpSFlbQbpfP1U45jVtoODtJDRTaM3tRMN9jT8VF03mWlZT8tqKB5C19tYcYUTud7bloszluBb9HzdQ1ldqxLqF8Z36k/G/SqUVigYTIsU0BK7GSxXOZwmAiONqilPRHdoj1qDfk2rK5etiYalLM4io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736463954; c=relaxed/simple;
	bh=njo0UobvZh5wXjZiR3L/m+lwSw1ODwbx1uTJbla3aGM=;
	h=To:Subject:From:Message-Id:Date; b=io/NzLG8hIXy4ckDaaorlYQf3wF+g983lY5PF3qImtfM1S5tHmm7NVUPJGP6QCaZ5i/B5lvbTskQupyPB3xwnoJMWZQW/9IZUAsUCegK2Ssc0+Eh5czev2sBEstBB8wiDVek3LsXEXuPrdDo8S3N2EyGjcF/Tm+Un4xBdddNx1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p4EupJuS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p4EupJuS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A938FC4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736463953;
	bh=njo0UobvZh5wXjZiR3L/m+lwSw1ODwbx1uTJbla3aGM=;
	h=To:Subject:From:Date:From;
	b=p4EupJuSbGuBO6oIcjRi3UNxVORPCrnOe6PuNBwJqj5qiJbzbe8BgJ/ZDOUvhD95G
	 h63MlE33DHdhxVg9g0nURsxNbWEUDhyFuuM/cFYwHuHdB6vZ+cKWSLeoGk2qKKTmWk
	 IJSMagBMTbFRw05VII8qQtE1vAfpdsFlZ8rYXgEU5S8RKNw+xmwPt/l0MA4MpOSI2c
	 aXmYAZ5miG9ZsCbcbjAhhlEM3isIUHRjA7f3/mrWky7TqAWLN+3NnJykML0khqCdIJ
	 b0IJzXlZoGhWIc/RtvuOfmN9Ui4kE5UgOzRgdXriucl9H0S5tb2LuVueMzCoV4DbhK
	 SxHgYoxgGSxKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96993E7719A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173646395360.2007.9746173071140114296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f5c5ecdc7eadbe77fe7a82910564f804260ce46b01252f7217b81720b402258
Date: Thu, 09 Jan 2025 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736463953
