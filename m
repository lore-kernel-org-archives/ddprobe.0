Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 747A017DE11
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 11:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719401603; cv=none; b=Q0WaTcxuf8nrhC8/BRlEG9qE6KhtfWYNojR6rMTpcwVy6p7IEk+SkpR/vF2Y4Civ5ubt1ng7DEPUhCBGWI3lTFeHi+zU5/UjjJ7gLGO6n8m+Pe39VOYd/70s2Z0KGrer1oXGyOjkiGdfnukFs516+kj/AmbWhKUtp6AgwdV04U4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719401603; c=relaxed/simple;
	bh=FKCw710PdihWxJDaviXjfzuiOPqemdWP34otxzVSBCI=;
	h=To:Subject:From:Message-Id:Date; b=pkv9+f6U1BJdfKaw4mmzTRjddi6fFq07izes+g9QDUBOBfNGlVi7B8Z1Bqb1/gwvw5Gn2ksSuoZJ5nc7z853DZax0ttwfZyAWt8CMSxp7Qjvreskt7Ci3j0dhiai+pMsEQ4grkAE63hVev4/b/wkA1CyaCWYka53sg5pKG0MDbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XwrE0jIR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XwrE0jIR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E13CBC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 11:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719401602;
	bh=FKCw710PdihWxJDaviXjfzuiOPqemdWP34otxzVSBCI=;
	h=To:Subject:From:Date:From;
	b=XwrE0jIRxKPemC051ttk6dcyMlwR1MhIhPLK/6DROm49RUzb2iQmSCgwAA7jYCLgx
	 lZqeAnzzwxIfPZjl/d1OPVJCHE92ZMhRYv/eU/QenUHhEnaQVnLneep/HsKTMhVLcL
	 4+ChTBrmsyhn9NSupoPhJdXUXvGrJD08anhQfAF8jfW3QUILDnPtk9bEMqClLHjja3
	 3LEvDQVuA0a8aCLBCX+EPhrxT8PDESrEHGyRBl65z4TUvqYQM4t7aJ9JdhtfBNXvUB
	 BcxU6KCAPhh9Y3hRgdLI6mruhya9pHwP2zJnagZB0/ZbmU4vgwWLYVeeYMOkRFYVeg
	 q+5scmwBfVVLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8D4CC30653
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 11:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171940160281.11971.12804400408875755781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f78bba63219101ecd94925a50396fa72fe56a27cfd80979632d7a703ee73189e
Date: Wed, 26 Jun 2024 11:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719401602
