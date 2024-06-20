Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9AB7711C
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 20:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718916623; cv=none; b=fUiqR/YwPKtVb/8Q/WvG/yeft2kMtzv6cOEgDUitZOev4s6PIMAeg6VqqmNpm4dXrtbJ3oC9z4FqIDwTESAeXlzRQsZUPv56lJihH458jYMEY0XuyxcXWotfuYrc1SffEwhlprEqduWMzMRO98ZHQWCAO1Rc6p5IdR8rozCgRZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718916623; c=relaxed/simple;
	bh=JlNxLIm0ZtQpL57YeY5GV0N+wOEcFG+zh8KyNEeizRE=;
	h=To:Subject:From:Message-Id:Date; b=mP2rqGQYQbiXEFbgQDGvS9i8Gm1stBSuDnILjubotHx77mbbYzZFbFJkzENvPcPdtwmBqx8k7r5unLDfeGLeF6jUrORpBfTMVZcDoY5EpVo9ji+2q/t2DpOEI5C/sRY+SYfMhoNworpfxacxw9Q1qvDvPbJH6bsJJV5t2pXt5QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hk9UTfoF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hk9UTfoF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9431C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 20:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718916622;
	bh=JlNxLIm0ZtQpL57YeY5GV0N+wOEcFG+zh8KyNEeizRE=;
	h=To:Subject:From:Date:From;
	b=hk9UTfoF7WhOd12N/iZzzPKnpeftuk1Vlm0wxQsCjNjlMVjL3/+G6OtJKvPJ50H68
	 HAn5fjVmXOfkGE9RcMlAo8GbjvaQLAmBE3i5ub6AqEavq4DWEGpcwxtVyN06/LKWAB
	 1QCR6OG6ReDmpfZAoKWfnC3t7YkAETFc+YnSEYQFGlY+2wTmZl/9A9cUWqtnKRWNwT
	 sPCllczKjfuN7iuFjqbnyHKSq69FsBmsEG/4TyRnNDsFL7Exl1arlY9Ud/Ge3NXGmV
	 dUQdVUCd+thVscmOhMxg96zUFwnQGd9V8bZZ5GVbq3F5QOb/eAgrGBz1VMZgyOGU15
	 HiAKKQIVVJWwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8D2DC2BA18
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 20:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171891662281.4425.2459111248648986034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01e0138933f8576579795c846d6577163f117938778b21d0c56e15506820fbd1
Date: Thu, 20 Jun 2024 20:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718916622
