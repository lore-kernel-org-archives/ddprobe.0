Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D31BBA34
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 12:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776948454; cv=none; b=alDdjLt0/CgDlI8y5UMAaEmMG1X6+XyC9cyf5nUoTBTCU3MIiyU06ckAbu5Gs+WTxb+/atNjSdv7s1C6GTlw5jwTa9DjqXLIx9cQS2MJFDzEjNYmSQDKUi4PwOqJo29jxGkNUIHh8PzfTDO+/8lMptZnC26BBORHFCuwgeU+BSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776948454; c=relaxed/simple;
	bh=aiGqSWBmnn1NrtsowStqFsCUAlw0V48huEjc+qHIo5U=;
	h=To:Subject:From:Message-Id:Date; b=SToR6aWE5Ko//gZby3+IMW4Qmu/Ajpq4GOmoReq6ZlPUfcy6UducLyp6xXSOIi9RhLvurNcdzha5uUB+fbwY9LCzzhYZHsLDw/ZOqxWhA9LTFK4G01gJCvhTiAJQ05a9aCOhB6eOxM1FPgeD1TgenBumRjbR5wCpW5NPVwXF+40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8pgRclf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8pgRclf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E76C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 12:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776948453;
	bh=aiGqSWBmnn1NrtsowStqFsCUAlw0V48huEjc+qHIo5U=;
	h=To:Subject:From:Date:From;
	b=H8pgRclf6+ISSe9ieVQgAMTKqTMY+qBmlIA5RzF4snvwaErrdbhQ1aGhVwMc7miBt
	 hYP4erQ94ilsDjPXTw+Vb8q+9jqCJuw4hIJ/9IKe4WEPmsL3nAk/XQ1+pNzqrTNMsl
	 PV+2JJG0H2tpzoqfe0olceyhHNGg84EDrNhk7PjG2jFUU1juF8IN8Lx/x1j+Ek4G9G
	 Ygff7JfyALzyRzTjjocm4/VzTNTWCGxvIVR0YwbvjgEkkydAHaWWznCj2hROc4aEj4
	 NCWXXCp7BGxNDZLWjmGf7HnXX9QXUlW4DghsZ5glea3IhTuD10CLv/xcG0aOV4hwa9
	 1W726wcdYPb/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2FBF589B5
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 12:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177694845369.23577.6741858915321260281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8b0a3db2a47efdc303b824fe533ad8a65ebf73539633c19a1cdc7cf3376a853
Date: Thu, 23 Apr 2026 12:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776948453
