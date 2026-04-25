Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C40D225397
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 12:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777120054; cv=none; b=GDkAOQt6qw+AxJDBtQdOeWQkPSMqTkB5fffccWqHoItghELzKo6jX6NcDuSHOBiVei8IHJJRCtB/oGT9YmoPa8us8WEmlvrZ4JfX+CP2RYmZhGW9b/lhGX4S5H/0EyP/zbryARN2A50fSUrLGL5fHWpJ3jFTglhTybPAcXD4UY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777120054; c=relaxed/simple;
	bh=yQsji8N7M/jWrtw4PmFKh1j8/jSmOi57chKChr8drvA=;
	h=To:Subject:From:Message-Id:Date; b=P8hmjZQKPWKFiIEFwnO/amwAfRu775DGbo/FPNurUknmp1N+vogrqH9pDEF/8fIwEWqiTIQl8LI8J0RorV0d5qtEsrhZ84vgtNGT0m01obxBBJMLjq7syBZ0eDk0sb7UaO+Hf1lGtqk51x7w4z66ZCIsvb3UYHEfI4mLtlJAmzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oaondbR+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oaondbR+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC27FC2BCB5
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 12:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777120053;
	bh=yQsji8N7M/jWrtw4PmFKh1j8/jSmOi57chKChr8drvA=;
	h=To:Subject:From:Date:From;
	b=oaondbR+9SfhWMK4vc0NvZEmSIr+ufIlWj1qJMWxzlDTGiKk0KcHbGRqWLtm6YAOm
	 K4kt8mnjGsyJQs/+DBD1T8IIskTWlhKzAe9PSURvpDq0oRa5adLrk2JeNECK3KwsAH
	 K90KQmYiSGiQGa8xQlvNQZRo/k3QrcTxyaFggfO+kj0QMqRB/Xvi9i4OGZZgm8Zy6v
	 k6qysIKFENlQcGO4i+sDg/OV+Rs4nJH1GpJaCf/zEuHE+HKVRcwvsO0Zv9wozLwrhA
	 2Qu+FJdLdYGML3lrghPyRuOaFX4SoasdCAk/RgeXFOc4RYgmQt9FtdcFnybuXAoecS
	 46r2V41pwP7nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF93FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 12:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177712005368.26513.16087430133643645949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4663e2768b00b705daca4c6a29f2a81d6b73b4579b3e3cbd0e467cd5807bb281
Date: Sat, 25 Apr 2026 12:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777120053
