Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC141607AA
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 07:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741936734; cv=none; b=FPM1Gmb4BEe2lvPoPeORrnZe6inUojcjb+GzYrKnx+jpGCVe7+KkSZEx4PkOBuM+ZaVOsoRY8lMVc8hbj+BLg2QYDdK15CQAGHIe8cKsptFFevgOsib6oHPGYDWfF2j3DyNCZiUS1FbdyykzeEZzbVrXDEhHyj//yJAo/fkN5L0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741936734; c=relaxed/simple;
	bh=cpaId+fzvdDXBxvES6P7rPZOyPTvDr6e3qMFzcEPVI8=;
	h=To:Subject:From:Message-Id:Date; b=KtWdT+sqYtA2FV3clYC2xpdMo0fqzI2KP43eeN4j1XEmReLpzatj5gYXFCKVPcZI2M8vgCmzwU+ak5ILGMJOAHHg+sgeaAqYYhc+DDw0HRIhIrAkRAGfSrgKuY0sjPlHcs16Z36tvoiiid30jYB971vIP3/wS7TUjOAq0xzwEww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QOSy5okn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QOSy5okn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B461AC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 07:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741936733;
	bh=cpaId+fzvdDXBxvES6P7rPZOyPTvDr6e3qMFzcEPVI8=;
	h=To:Subject:From:Date:From;
	b=QOSy5oknL7fv5pP1xhaQyXOAhK/IoArn/Sgzm0MawY5HZ/serttm2Cp1AAWRPwT4h
	 RMIQR9wDx6+E+OEWqiEhe3T9P+22aDPU46BHtbWEyKGzelFiL01YbDqOd1YeK6Wpcy
	 Dp8pJi+MDFq5ww9E5ZB0N9kk1e5G/8uE1QT/UaYKEpcGRac+qFB5s3PeesVY9amEcy
	 RTKKFI78i+s05PdKVy+EmqADvjxOeN5pE6AXKawBPqetWoLTMUuoKkok6J6HzR00ye
	 7thGTL5br6aloc2qTmqy1ijoem7wxOSYYfhbQNnFrjCHid4EUUF8hSA92WqBz36yEv
	 0YdKXx7Lp0j8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F92C28B2F
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 07:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174193673360.11304.816364815467071886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 531a6086b3989531f31fb75822c52f3bdc7bebf563d690487e393fe166b000e7
Date: Fri, 14 Mar 2025 07:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741936733
