Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F69C43AA3
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 20:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715717543; cv=none; b=Ldv/l+M8MXmapyVyrq3uVYUKQshXl/X/zgUVbRcVtRQxJxh4FNZOu+CKX4CXo3O6gwQh+UpVUH9y4psY4aFH8BqUjuiVRxu1g+3itcIkm6+vC2LSbenprs3MAkHpKdXDFofy1hjr1bgKl4F9HAwMfdh501MXPUhzftvYgcSrFXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715717543; c=relaxed/simple;
	bh=iZyRHllMJ+lrMf7mwWFfhFa4KfpvBnWvwPNpq8nFxtw=;
	h=To:Subject:From:Message-Id:Date; b=VLug4yS+IzQUDW9sUsQhQgzPhG4Fmrcj7JOpenBw0COWqsBMF8zRElEf82vteczBvht8v4vyOLN2DkRtuwnQOHOG8hx9B4mkSz9cYafUODgX9cFFNGK2rXhFiU9Bs7ETvMyZzX8FjE3/ZJQG54kHbfr1ymkL1SLLh7gFKlWOQz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o9vmY/9b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o9vmY/9b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE31AC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 20:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715717542;
	bh=iZyRHllMJ+lrMf7mwWFfhFa4KfpvBnWvwPNpq8nFxtw=;
	h=To:Subject:From:Date:From;
	b=o9vmY/9bSL91WBUJre78DTtZWKANN7GP7OQdmqslB5QdEtsUqVnC9dw+dzNwRG7pa
	 26hOGj8Wem/YkoFgeUIP7UmaYcBISaLwmbjACYDi8ZGm7WPAmxo3qG7hWt38pS6ml4
	 X26Ii6VduMuXwlrNpJtQPkgTENodGHFlAo02lD11wQCjn6RBS0LTKhTnfME1r1pXy7
	 X7HGeyOquqUoArRtt1Da2nY1qpvE8COTovX1hJWuchhOkbrnRhf3Tdusmag9oeoINx
	 BtA9nYcBR/foX+gBkvCW5W0kuQCoOFhg/MZbis8guSGTuMsfgvfF+CItwQ+mK6y85+
	 DEocutSkX98yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB5CCC04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 20:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171571754279.15933.2798549580237146877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29d2723169d037993264a8152de4f933055637608d86fd966a366b681e8ad5d5
Date: Tue, 14 May 2024 20:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715717542
