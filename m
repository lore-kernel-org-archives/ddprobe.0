Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF3CBE65
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743919797; cv=none; b=H6xJH7La0UhxFBHEBio7fqL70vyvfMe6bVQhdJU/cg/OW3g0pNXfgQji9jkh1pYMp3vfxBNPdxP023+s53Qdu7MPOzS3hx2qPXFG9ZkUXlcBLGeWfy8axJWtdDPnrUMztbnOApcxvmP4NGLCdjCCjMhTEv89vsDe+A+jxCzkGyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743919797; c=relaxed/simple;
	bh=pAWdju7jnyEtVh8ePoljZm24o6K+E+mIVWKU7twYCMc=;
	h=To:Subject:From:Message-Id:Date; b=flujSLY9xNua5YUiFRdXGnf7AUtshXlbpD3pgHSJVLvwVCPXJkQ7WcsT6EREG0Yf9Un6U8Py3+X+GfZmqCVfN91nEXeZExjUU3HHTszirhpmfKeXK5AHaKkvGrBA40nVl3DpLl1bmuG4wbZsehMrdBf9GFZPoRqFxccHGMm0EsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q1HaOQET; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q1HaOQET"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC202C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743919793;
	bh=pAWdju7jnyEtVh8ePoljZm24o6K+E+mIVWKU7twYCMc=;
	h=To:Subject:From:Date:From;
	b=q1HaOQETC4x8JA1Ro55p2UxEnrXgpadboNrVJRlfoZcnPf5ZqPCKbnHwnaGLJL6y6
	 ar6Dkspy2y70iZn/kThBbBRT5ovvH/t8N0P+331xkd8o5ZMHWjxLKopwCq0hUXWBGC
	 sAx62rR9kXwYD+Pz5rtNYcgNB5bquU3fkBDOf8V0wb3Rk7Aupn8SMgRUo+Rt3cMqee
	 sRejBuVzUfJDVWdsh9dhgKtCS2TtcF51YMg+kzqWuYcU0tmZX57coElYYnyqqlzc//
	 lbQLkj4AVfvTmAGsvhZ0unkjFleFIlZV/JqF5UNt6trjRlYJq5c3whXAYgZNlulqqO
	 FIxo1kWr8qUSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A27D7C3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174391979362.6858.12416708062818149440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5d3079efc406c1b18c38f6f57d4777166fbb6b5e5e75e43223e51a00f9c0b79
Date: Sun, 06 Apr 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743919793
