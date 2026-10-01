Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E2F2DF6E6
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790875234; cv=none; b=r+v0Lth/jwQNdNRBqUCFsMXk/OSKrbcgmoHacYoAvhLXSLuYIRvUgWSTXjbGdlRsbw2OCCsyMK9Anbeu8jDznjf6VXrYXjIoD9EOXBZUpNtir4OU9dQu+tMM+xF9pkF6XjTq4jbXp11X9DKi4A0YptnQ8g4Bh7jRaL2z6U8XN1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790875234; c=relaxed/simple;
	bh=T+8aN1SD/JRBK8Hf6Mswwkq18UbJ8+6uGRtJFSiHg5U=;
	h=To:Subject:From:Message-Id:Date; b=Z5NhVCjhBK4zbpxVhNAoloSEZdfOglbAyvpHNTmQNdT4WmiJVOZcMcgc71IUjAejW150ZLkIyDMtv7FwswDKMHbGZZ3ycEUDlFZYPKsoQMixP0c60OqdIZBQ8TaEkMYXng4wNyYvdPNB5EAN7hGHlkxbLUec8/cK9qXfUcBO8WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upScDBF+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upScDBF+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D379CC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790875233;
	bh=T+8aN1SD/JRBK8Hf6Mswwkq18UbJ8+6uGRtJFSiHg5U=;
	h=To:Subject:From:Date:From;
	b=upScDBF+FgsZLgWiVKve+YVhh3Y/zfJaokARM+e+dta34yhaSp4kDF5/8ke7W5FxJ
	 6dnpSHAton36WZ0qeuVy7FRnZcps1bQMzUA2V6abCqu0dXTQnn5PI2BbbkE/d+vpKT
	 42bIBukwTuozAZGR5hL+oRPajrKnL72A14Ke8eC6V97mWqnUATjuh57aERKwjHq+y8
	 4IVcZDyDS9AZnisA9zpmU3cz3Q0FaagY1rrssIa4OGZhKuBFe+DgS2VRFSqG548+yc
	 +mwBZF0UomtDJY1QAi6dUpuqrffrn60scyE9VWw8oIzABS6USRdI8r1HUletY2SoaA
	 GyVfSuiJDtb3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3CBCA5FD4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179087523370.12142.1871800879858381363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afaf5850646f73de8005ac872d57c7cf37975211d3a8675ae9e4b3e3100eacad
Date: Thu, 01 Oct 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790875233
