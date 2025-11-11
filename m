Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219963730D3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762883394; cv=none; b=macFC2yDgIJqlGm/X8W8wqDeI0+9+qATjMZFDg4OLkEHYaNBduCQaI3csLzJcjY2fSdyQf7sm6MhY1UyDZIgBHdbjzfwTRWcgyjw8rK8RijtQN58iuN6ZgtPFzNhIA9oRvz0rwGosSlum4BKBynsMQ066CeRYF6+p+n+cKly2tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762883394; c=relaxed/simple;
	bh=MWWHgHiFkZBsWLCaeb/doEbD7vuZkSScCFOlYnF6rDw=;
	h=To:Subject:From:Message-Id:Date; b=JWlkDopglCbBxElWBr5k6m7g1R6H+M6eiezdWD4f2H5vOJtl/STxTKCNY5Tg7JXrQHAsSVRueiyCElPFrFpLoghSdZNJmpOjq1bXGkbdVbkWYSfK5IiNzbbSysSRIT+QB6IYkRN+UsO3T4G9iVjh3Y7Vxye1eVWNC+fESkVVwaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f+qPH0ce; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f+qPH0ce"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 990B3C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762883393;
	bh=MWWHgHiFkZBsWLCaeb/doEbD7vuZkSScCFOlYnF6rDw=;
	h=To:Subject:From:Date:From;
	b=f+qPH0ce1xZzalEWTms4Cgr8au67xIXxqs6GD05sExNMMYpmGa9iqkKuyfuGW1luO
	 AiQxig4VQtDyGTCcKPwYMuks60lOhXAhzjZ8OlyFb5mt1tGByG/ydW653f15PT+00g
	 6lTzF3+HmOMIYnKEosVQ+FG/Y/TL1rMdClyYTr8ux81Q68qi3abgIWod5BBl3Joie3
	 eqcESirONGXC4EzGqCbqdnmVhSEHeySX8vgGtnk/KjRI9hapWKMyqIKiKDpoUPOcq8
	 RgUFnLpWo9pMk+Fo+3vk8lQbH4DlL4/M+oqIe0veREmm5Md08M08a/7gqUd1SpmdIL
	 aZWxkzICSLdbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED38CCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176288339357.6630.8036849471844690012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6ae6a115c786dac1b6da6a2b267f9c675c7a27d6b4484f1990f0b5095584fa2
Date: Tue, 11 Nov 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762883393
