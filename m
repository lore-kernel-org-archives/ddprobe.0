Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C552213235
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746876594; cv=none; b=VlmY7F0yAKe5fNpDxTnNUONpvlfcteEX13JKUrRVusOtEgjrAFlJaAj6fFP+VbSUT69u4y1uTKT9QyM1PMW4EQqRxP82qmAMGtL33ZlJlpMFCTXYcNdYT/h/wp8wvh0EWdbbfnBPKIwIKBb8RRYOFuZHB2/31I6bQ9XCGBuB8rI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746876594; c=relaxed/simple;
	bh=ZBw6RV3XtA6GqoyPczW8GVPJ/iYuPsZ8nFo2eS31QP0=;
	h=To:Subject:From:Message-Id:Date; b=tQutIhuIUcGo5ILPpqporAGFdqF1kxYIpNyNlrD9sYkRm6QkiEEgSKro58adp8n9sZF5B4BbI1Cl2wH/4gJobMq08AwMk6kiQgClNhvp1Qn4xByW2VBcxgpLEnxeUWtuohlYmNcxfKi1GsdwmAU2kgSAC3R+HnVZWIRHaG1HJUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HXaKZFqH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HXaKZFqH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A519DC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746876593;
	bh=ZBw6RV3XtA6GqoyPczW8GVPJ/iYuPsZ8nFo2eS31QP0=;
	h=To:Subject:From:Date:From;
	b=HXaKZFqHV5Dp3oc6gDIuWwbSU15BQtHXPPg01SsYclfUbDc376vwU0bI+xwkbGjCZ
	 oGIi2kn3TpEFD8WnXiRz5NLfaLFMUgCItU2ZTIIpYvtf39wCul0DM7JRpIkJC/1mzC
	 o1gTKsTNsq2EYvKAJG2bJDknxd8mo4eGmCZKJhw9Ro31d0YLHvAMwOVTvn711SDrnk
	 8k7u2gscxMYfFpZA7Gq3pBrERzoIKG2BjERye8pCEoNezEHlCMNSf7pBBEaQxPPhdF
	 Ll92dwSEPnG3eZB9HM304MOA9VCr5I+QbBBIKb6TbT57OaYl0MNJ/Ky0pen8k4voKW
	 7Dw33g8KjiM4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91471C3ABCB
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174687659357.11906.16804705518616874144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49641a2192d585b33ad2ac15c6e69499f1d0a92fb429ed50a8b557e197c70556
Date: Sat, 10 May 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746876593
