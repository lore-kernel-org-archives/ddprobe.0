Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24DE5333452
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768424634; cv=none; b=rcCBhQ8pQhkqQw8i+OIdGm/RnU4dslvfpYd4MXUswOkp7UkuDLyfOuuCc3l5/fZFJY+XrEMvLkZpjkiPLA1nZ3l02i7gsdMOyLlz5o2EOPSssliWsWRKkd8dJnOm+dLnYl4e/rAGW5zqxuDFz5j9ObDw1TmD7nUkA6LLSkMFU+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768424634; c=relaxed/simple;
	bh=Vm6UjzVo1U62XjRbpUB2LGoWPkolY071GJTy2V0koQs=;
	h=To:Subject:From:Message-Id:Date; b=ltYP6zW4lUp2kMi8ql/BgpwGvSwdjnTjzFNrwZSO3hv87TARUvCA6daQUVRUvUKGLLblI3v/3u0/dpY/a5AxobA3YpAA/QUCK5nyUF5JkgARJ7mK2bi+XAeYzqy6HkpqTZFRQ1l3gupKojnxj27ClO18hZND1nUp5BwI042V130=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uCzpZHUc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCzpZHUc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA541C19421
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768424633;
	bh=Vm6UjzVo1U62XjRbpUB2LGoWPkolY071GJTy2V0koQs=;
	h=To:Subject:From:Date:From;
	b=uCzpZHUc0p355o+PobZ3Ka6kvwtOx6tCtRbMljMxOftoVl2FEzMCvaQpp2apuTlK3
	 7e8nIcC39HWZtJOoOmlU1Bx+M+IPc8HyRt71hnogkmORWt17bYoA26+NS+ctCAjpbc
	 iPkODMDHfwDOx1GXa5aOl1V/pzhIKRlXgR2iTMvGg/XEfb9FgL5VQf4r1waCA76UQO
	 hy8NITIoeDjZujDsl9hATUMTpVkJb3B2ORFCmF0NmmvQELH82oI1cg55nfrAXBAsio
	 naIIPoW9Z2jU1R6qE/0wb3N7Zt0u5ph0z1rIfYjdP5+p8DG1VqfrbVi9DKmY9Wv4gY
	 4KPr3mju+6Qxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B70D39013
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176842463359.10218.14709274379991841615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c11f79e3328c3f7696c93b7d33c2e771598bf37d916f2758b46288cb61ad003d
Date: Wed, 14 Jan 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768424633
