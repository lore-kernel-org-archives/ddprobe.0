Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4833F223DDD
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761890994; cv=none; b=ZQFx7CHEe8/0mrJJmviROPa/0dMzu7kNntdOgcOpy/hztRPlZs+gBIZjp816UL1U91tUWxffcgI3Fydfpf1pJMlNKxYtp41D30dWCWOey0db3+wymfYYY/zIKAbFe0yBVdJsz27vr6pPKp2u7AcBTPKfEG/s92KgfP2vqbYcLRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761890994; c=relaxed/simple;
	bh=uYH1SGSMskEo0nj82mn1r9tZu0TfqpTeZM9WSzlnqRg=;
	h=To:Subject:From:Message-Id:Date; b=L4+hVeFkQ+esdE0ApW3wbcocsBhw4KfsirlXCW3DEqDPDA93yXJmt5GIHgvhDUqSnnI0b+YQjIbEiP5fqUwqBPYnhAVOwVBWWZmeOC3syrpLi6kZnapPWuYi0Z6lhoVGVC2Hz1e1wLJUQHq4eqFihU5ocdFGUG45GvU6zaKQI4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=muOGLUZX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="muOGLUZX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4721C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761890993;
	bh=uYH1SGSMskEo0nj82mn1r9tZu0TfqpTeZM9WSzlnqRg=;
	h=To:Subject:From:Date:From;
	b=muOGLUZXgV9HOEVxnqcBqVuB710MWwJFD00XCqSjkQJ7BTEqb7fcZel+aHAw1TX9J
	 sy6R5lHgjRH9WPCEwCp35PFHR4+BwQ1A2ex97jzolbFkBW9Mygqxqicud+G9Werfph
	 IoDKILFRGseIxvsuszjzHOC/akYhIGMTVZd11NYjdiqKeztIS/tF9ZgS/HK7Ka4pN0
	 CHRuyB91i4KOcRKHudLGpqypzqY6G64Y/11YakaH6U+hjnbaX5aNMKBk06ybyZ4KSB
	 zez6JE/Ksip7FmZDVeLHq6qDz9Qs23h1aqf1VTG2gugvEaT8ranmxGTML13xobDhxU
	 s6tZWiggZIcDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3E48CCF9EE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176189099366.14037.12447911113844646170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34d10ecf297a31fcbacc75cfb3b7055413a06823eb1b0273f154a4246dbb2315
Date: Fri, 31 Oct 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761890993
