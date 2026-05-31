Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4284E7DA66
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 05:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780206874; cv=none; b=STgY+xHOuKxKy2aQVOyNQeAhROjLL8lx6X4hWGisJkjr3IS+NqJ9dZTZOtUVAVFo54x+hScLMcWAfOcNgvQ8c+IQh79BJYsTeQo9rqeAsP/60yRhTSlGvfCh/KgQgc0hwwsdsEsUYaOw/2gKVyfJsOrhyFzf0isgkyOyYxH58ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780206874; c=relaxed/simple;
	bh=WDvgjwhFiTfj25VwHVOLxhbHAKl14nSiZIhgcQ0AgCs=;
	h=To:Subject:From:Message-Id:Date; b=AV7VQeVefzGOWaka2MaiRIuRk4xPl9RTBS0BAoq8XO2b+88X7hnBjX1e1QeGxWC65hDXZkUT/GMqaj01JuPT92y+oYkukhTpaZo/pllyXkGtdUqq1KBUqgkOhxc1739WXh6tlQ1TQhowxstPMFXVgxcUJTs2XhTnCQGcAMzjM8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GrRWHJus; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GrRWHJus"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C894EC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 05:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780206873;
	bh=WDvgjwhFiTfj25VwHVOLxhbHAKl14nSiZIhgcQ0AgCs=;
	h=To:Subject:From:Date:From;
	b=GrRWHJusj2VJZYphDg4G5oOQAA9AsUGZiTnx1wJ6jMbJiFS0nb2t7HdYs8obouiHF
	 A0dk7WvleNolhJisMKjiiTW8OdseCMvf/hfVH3fa+X5G4hYzpN+Kf9VjLMuHYDGNR8
	 GeOfA8f8dv2S9PEccqv0GIa9pmSvSdfNgk8Rzd6UGoedwR/dKIQcIm5nTYv9S9seAi
	 51XZRxwH2t3bz6BcyoSapppVziR3qbjkpr/43E2CEPwkF7SgAhlWTdSuPJTRE/Qx+2
	 HsRh1p5kX9D5T8TMrqlJI7IKavrHIWs5Q3vdUhEIYHm9Px+ZO+k5uI9XucecahB7LB
	 YCRNb/FsOatgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA624CD5BD1
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 05:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178020687368.4964.5283945689590660749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 887a63b04580182b55bf4de611ceaa427fe43a5ca6d1608991b96a435f46cbc4
Date: Sun, 31 May 2026 05:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780206873
