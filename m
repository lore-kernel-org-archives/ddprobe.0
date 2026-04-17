Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A40A19E819
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 02:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776392254; cv=none; b=UTSRY1f//bm+f8ITssXXo8iT39BDvTLS2gzJPsJujGtSqMOoRy4HQ714SgPdxLV8ISbwvSs5g1smmYP2RcU154nFGCPC32T9zP4GgTQqcadWtYQ+DZ1T9SH0OAIPmT0ESivAYgkXtKL+3Z2Ciy3B0iCjLjiR75fTrX6vQnhikyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776392254; c=relaxed/simple;
	bh=TWznJJOfK/fCHODyrI2upO/6KwWw5EY58jrSw8mNlMw=;
	h=To:Subject:From:Message-Id:Date; b=UhLFVsNCsGFL9VGpI2C5yHHMSNiTUYwNIaKrSa9wSw2nHHnvQs/UqacgfqlfufD236Vshtri1uHZpvPQZjughNKPqD3DIrMaq8QU77R62M/sNClnfgGAXGwE8JAoDYbuHbRu2sy5bjyg/9wFXDM+9xFUTnUHLZXWi1reuUMJt/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPy320Uk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPy320Uk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEB13C2BCAF
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 02:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776392253;
	bh=TWznJJOfK/fCHODyrI2upO/6KwWw5EY58jrSw8mNlMw=;
	h=To:Subject:From:Date:From;
	b=jPy320UkqyIf0ubNwn25gD25fgPc5WDiK0qzOrGq30OtZPS4hojyJJRlEY7XoNh9i
	 82L1NZjFsoZVgDpIMP73Y6uz5wlT22eYaii2Sc+y+L1dt6TzJBjhpSAHgUS+0SMngo
	 tE8FF97sAEcdhB2S27jDYa21jh/QHAD54PfNp3XjEw85aI0UloazmYUSdhps7rt3/C
	 ZrsNmyY/MUNaoTirlt67+V3sI1gFXGqDj1464d9Ol6+Xl0yEUEPRoU/J0KjJpurPL2
	 IDgsLzETmjmiikkm47jBLGVeTTF4CmNsebybpG/aPOaa/TJMIiJBMtD/1+/C2fdUPf
	 rBVMXYRo85jbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE98EF8E49E
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 02:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177639225370.11638.6676377437467265831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e603cf8a2236ac459ae3ba788d662e31fe31f0e4b8d82ff5e2d5833c0da59916
Date: Fri, 17 Apr 2026 02:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776392253
