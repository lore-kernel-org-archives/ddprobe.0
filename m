Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EFFB665
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771773294; cv=none; b=tX4qdMMo52kfmm0gR0ozQNYLMh/UQuLRQz6EE8Y86rif5hQ/C9HfbD1YevEh7vlYACPSgxuP9pRoZNUJwAiNS+fYkrYqQJtsittIhavMtUT8pTCdMIRP9lHYobXhjhEWTX9NBpqUbouDhN8ghPK+BGQQvpwt/EjCxTnAh4ufeJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771773294; c=relaxed/simple;
	bh=3zEr+wr0MlMFAdzvo72BxKTHGinqvJuic0iT+0CM1Yk=;
	h=To:Subject:From:Message-Id:Date; b=kK0qPwJMYFlV1rTsD+7zmioAfi5CUYAeEPehlc/oR8AeO54v1nDSDraXMvX/k/3BEqNAKO09WzHXxFyb6jwSrUjBdVMD98IDWE/gwZ1CbCNHbiQrlC4X5uu5BIU5fNslJtPMNG6wMBHjZ0JOafMYkK4/oGdvOuRhd53D33KX7SE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DTiE64XW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DTiE64XW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A969BC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771773293;
	bh=3zEr+wr0MlMFAdzvo72BxKTHGinqvJuic0iT+0CM1Yk=;
	h=To:Subject:From:Date:From;
	b=DTiE64XW5QJmjAaoKPQQn4kJneKHNXps/nZYLQWsNWP8KwI1SEM/xwckvVj/ksCRe
	 vyJZ2aCzYQhq0HQbTC8+JmES9a8yB4IQFJjTZ0wLdgl4dtuqiGYTr+eKi5p/3Su9ek
	 WJXn35Ftes0jdwjG02pG8+wUJMvOQEczCu3gyAPMne2ziKRNcVzmC33G+vtkXobf58
	 eYf0TUqL7TseF7eCVDBR2ewCD+D2jdcUXux9bB2BZY6cxHGovhR37r20FCYi3/AepF
	 eQ5/7QMkAeEJoGDILx9xqCiNUVwdlz6eXHXvIi2MqMnFEnhTg4UvUEA02Z9HrAVRuO
	 cfm1vYHjpwMJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B6DC636A0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177177329358.6309.3052430475743717138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48c10f3912fe9e05b030e5f6a1af4448cb0d43a0c0db8de727de56d87d96feb5
Date: Sun, 22 Feb 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771773293
