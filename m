Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7F62528FC
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753712994; cv=none; b=UH9XEISxtwKl4FFqHjYxtusTlVj18hPQlNlEETpUgIXFH7ogqoVO3lROArB2u8UgSNqo3kYWJ51JcU+bpBCGCetCDDk5aXAvL/9vYQ+cwLNWmSxnlAcKY36arXqW27vc4NLYHWMsCPjo5p0gsu4EBkioYd71Ze8EK143fFCZizg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753712994; c=relaxed/simple;
	bh=ZkXzYuvhFwmZq1AMK/KjZTV9bH3Mdlpv8SmHgIs6iHg=;
	h=To:Subject:From:Message-Id:Date; b=BJJhvEhAIr7BfAxT86r2VJmZu5PTrJu9Ipj3HM0DLEtDeMQvOvTKVbEqH8dIa1rP7gm8hlwlBXsCBm17ZsQDNtOUXj9X9Zc0ypg5C7qsQxf7x5/GEAe+nuLn5QmHKXqv319e8BFQqJ21eGcWgemTLNoi4CHk/C534uCqMRx+lTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=end3dI5v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="end3dI5v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6187C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753712993;
	bh=ZkXzYuvhFwmZq1AMK/KjZTV9bH3Mdlpv8SmHgIs6iHg=;
	h=To:Subject:From:Date:From;
	b=end3dI5v8LsGgOaJLrZ+jrf74M+QeMvrywwYNF3JOc5sbwhlppf3WSARkba7h2dQZ
	 VXhWX7+vphIvHVfeYFdXqk5epsR+pXYnyxy7wKDV220dwvMF7MbUHyfgO3KjXowSdn
	 cn2fOoSGKulCaKcdSOTjCapYc+IDlX7LkiBTM6JLSThlZuYcAuYLPuemay+0sDKK0t
	 QZt5mPwxHOvKtUGx1JvTI2gcSaEUXnXpQcSjnqURLqJqsSMEElheN0lb4ygzUK4kwL
	 H3IOflSJLJk+/L+xS6LKGNJ/ugZbJZXWXuHX/pPcoG5V5WZGlLYegPepc5gpHwAo1Y
	 mYKt+rExz6mEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F73C87FC9
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175371299358.30405.10874083386508270311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c39ae936686d3d70ebbe140876c690298cc83d80ce0b8834888a5f29df169e6
Date: Mon, 28 Jul 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753712993
