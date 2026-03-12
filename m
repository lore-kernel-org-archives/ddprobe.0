Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8C2346770
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773303894; cv=none; b=lBLkeY4zhVGEPfI7xU5UaAmGWuZVIx16PyH/QDGcz/00cJ9uXB/L234SCheScn3pIaFgdjgsjA+gPO4kHEpoPNoPUJqRbfpeK5SoeU7sy4a+pIFCLxOmKJkJV92EJpKyziwtn0Xw743OZeBVFPwVwEQKHNVUrJ0a4IilQEa8/VY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773303894; c=relaxed/simple;
	bh=ELZQJUXnwwLxIsQJsQucQlGoQ0TSmkIEevQfG7R4ebQ=;
	h=To:Subject:From:Message-Id:Date; b=usKJGAJuCXfO/dbGBukiDZqNNTvACGh4Qc9rRW4/ZiPkrlGp446R+x/IOt33ooxa7jZ8pbkfsQF1p0P9T4EmqcGAu8Kx9lAO4jpAzqA6jh7BXvN5Tg086Lr6/litXSkd1ZC40AEglWDRhkHcbb9RqtEvYLBoELvJ0iBE8XJHB5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lc9wrUno; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lc9wrUno"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F59DC116C6
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773303893;
	bh=ELZQJUXnwwLxIsQJsQucQlGoQ0TSmkIEevQfG7R4ebQ=;
	h=To:Subject:From:Date:From;
	b=lc9wrUnoCRlrq0Wo+x8A961Mgp2kalyTQHZAqqbpKbsTJUGPOKyRFPfREO5bOdFpw
	 0f/Taal2cqY/vVwkDsxZuY5shqcOAAvhClyElzhjGj6nlCp9xIFXc7t0SVoN5R4ai/
	 KdorAxGZDxrn78BxPJNb61jGoSkRn7vGPySjegSnDA8TsOZNzbVR+Np8EPPPmrSUxr
	 w07OPfV6hNg3FjvYWDGwB56q/HtDSzUJrAa3KkgpX46vv8xYLKANgAOh+clfSIuho4
	 fx/+ACGei8x/q4ruPb+iNITJfM5a4RCs8irRXym817fQJdRxXDfZJ8KuuNntdkuT3B
	 TSPXgwYP8LUBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903C1FED2EE
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177330389358.14484.3589714178277266220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45da696463dd8e4a4b39b6dd5355100e7eddfbb2b8a4b6e05ea47a76e65ff742
Date: Thu, 12 Mar 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773303893
