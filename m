Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E05F35DA6E
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790127634; cv=none; b=l7NTIKOwCRVdtbvXRYEOviV8lqAMW3fv+xs+wQ7hWfj+dLsQbpraHqE+9v3ziHIMoOOwVPnWmifz6aa06i+mQbCq+3KStDTGh1ZxGtd5vRx37KQDOPBeqMyCfhYw/vesExOteJ52U6ivq4SBMSByMVexF6JiA2CZ3HOHt9XnrFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790127634; c=relaxed/simple;
	bh=rzZn5zP+CMC9FQtmCP5nyVGCMf+h8siX/Tojp0+HhXs=;
	h=To:Subject:From:Message-Id:Date; b=bZ5yfJh6PmfXly28bCX06Uj8Ea9C/+G21qorCRvJsX1caFOU4WZwGiVEdayeop5ZWDdwcv/4NCosh/mtzQRuVG0gggqAtCq1a4ZnKXZy+QhPinnFn41vixuBnZ+2C1s2Z+qHin3cKgbYxymiT9lrNKy0ntYdUXfasI7jl55c/tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLcTXDeH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLcTXDeH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE843C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790127633;
	bh=rzZn5zP+CMC9FQtmCP5nyVGCMf+h8siX/Tojp0+HhXs=;
	h=To:Subject:From:Date:From;
	b=fLcTXDeHfeZxNTJKAo5eeOlXjH5AWKJjA9bA1dtMqMyrnjXP1WhdV748iUVkfbvQk
	 HHRjPd71io0VA3F5FgxWuo5BP1F83nu1dzogxZz8VKLbtgbdixwDo+dabyWmXh9ydV
	 j+jh64LzI2kDLarLvCfau6WcKD7Hcfxh5yPzK7PFtRwsepJ3Tk8T0VwJ+HCT9fLAIf
	 1U5OZyqju54pOs/qybiayZiDYygINx3TJDVJJbDCCSxyaV0td2q+RUJOoYRD0ktBG1
	 4bKCy9tL6WcgJ1nbWVRxlw8z3z3OoDGvHdsPlfzb19Vbqbh5uex32KJqyZvfh9CFXx
	 7KFmF1kH3HMeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2CAC98302
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179012763369.5521.11052240935515644580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e632f6a7b087c8df0d9991f2fdf51ba0032f716e4f236a95ed09feab6c52348c
Date: Wed, 23 Sep 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790127633
