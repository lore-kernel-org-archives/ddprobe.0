Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B4D38384
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746727795; cv=none; b=ZaxzhR+uFIkUg52c9STRRMYsbvnuUWbyqHCwz420ML9I5FlmiRMUT540zFk5ftmA5Ghk7qKJKonpqURFhlm+0GiaXZjE1/Ez+bAS/1E35wMLNhY8XESkRg6UCr6YjsLYOOuVLPIz+nrhYIuwQ1z2O4nBcWRs2uEIPngYdzDZ92U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746727795; c=relaxed/simple;
	bh=uOSX+2Amdxz4bVVhlqJLkAAk4gEPAIL2MWTTCcGie6o=;
	h=To:Subject:From:Message-Id:Date; b=qVvLurC5GFdwNOCtAvqBpqROhaw0sldJr6hXkBtXTWbjUiwZ9WXz2eqn6dr9AahqVT7+C9d/mgxQZa55rByQuy2DUA3VPqn7QPSDBgSjMIsmslI3d4JFhyyWC7hajLlVojsjFdCv5Rg3r1yoN/7WjQkO3AB40cC9XZ79i8IYbe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNAXZ4cy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNAXZ4cy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F90C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746727793;
	bh=uOSX+2Amdxz4bVVhlqJLkAAk4gEPAIL2MWTTCcGie6o=;
	h=To:Subject:From:Date:From;
	b=VNAXZ4cy3/6Zl1heB3oVQn6V11o0hb7Ye2z48iXynSeoEz4N+Tq7LuJrsb2kqFbPZ
	 uHo23gLYD8hOwjLhPkyiIh+iFroqyghNIcz+fPwjL5/BakKnHrm6p3UZqgy6dsOxx+
	 OqWvWgSVY+bVwESj44jQ4QvUxytyK4X+83Lwz9DBg0cpbb/Q5YdjlOTRtWcimyej8z
	 d43n0DRs6yJIojf504y/3rkt+9f2LuAId+D+zWwrA+l0F89sax8WnN4DaoWO3g1MTB
	 qhgwnnwmb+yYPSpnt27CulPbvB3K+1NdSBWJpeYbNI8upnxId9pHRrKyx0Eq+5Ex2B
	 lucZDmID3z3zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95483C3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174672779360.6027.3233980859998907834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bd52bd6c14f416c4173ab033b40ea33be5a507f6789af705a333ee691973c0a
Date: Thu, 08 May 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746727793
