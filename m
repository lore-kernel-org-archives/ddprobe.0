Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3987353A63
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790304634; cv=none; b=ZVB/bexAe1r/KtPJ26IkHCOk7HwDQ4sYnfhOTzVRl4XOiV2BeqcMnbo3IsGap+AJxRCXupHaWJVp7V99cBIsX0qy3ipp0VYRAf9rXWzEFaKp/hyk0lNj6V4e9hlJLOpTxAGbZg/pVC0dFVh6mTsQiUJT+1zTVpWJxBQ6WG62tXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790304634; c=relaxed/simple;
	bh=crLJ9u12JyV+D1bBIvhpKZSWQWjx6f8MTqSosLBcJUc=;
	h=To:Subject:From:Message-Id:Date; b=bLRlwP94zLNceLgqP+f0jTXrjfeAps0a0sGNTBe6d6GywWulq4v3PjD8W96yb6NleS3fzKqJPIuYfy39RzN7hEjNg1myMD6pa2ZFhNp+C45UuGbTdOIfK3n02KLEOrAmpGNLMbYFgM/Jmd4V7l6B0iwveeFG5/nputeV7AY57yE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZP+tkLG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZP+tkLG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCA02C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790304633;
	bh=crLJ9u12JyV+D1bBIvhpKZSWQWjx6f8MTqSosLBcJUc=;
	h=To:Subject:From:Date:From;
	b=oZP+tkLGAiSfcrKLzcNZlz+6chouHD7VUioTFLw26xZZdmTH6HNuegahlLHsZbROl
	 /nuiwS42LGxK58gj8lIkpI1WeGNkjl5FDQpQP0AbOjJitwt0JyDNAspBEvptCDZC13
	 veRehLfUfzltdMcTQz6Jsh6WFbUTjZITLbK84Is/hpGOgzcmCh9Ea7ZzRNZfdB2lvH
	 v4coa9WMEPoVWO4pSbkU2rhr2+OPtqfC/6rGNkKd6lteoDJMVhRC4pl2Ha4ZY4ETbB
	 cbKgmIeB4IAKPRYAkhlLT0gsZr944q9gdrOk7fCzHO1jPMDXAzK38WSRG/sPTUdBNa
	 ekiccUi6C1R3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B387CC98318
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179030463369.1762.3476779334218508745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4d268427a7571fb1be284e68ba4fcb4cdb2079764150ad793fceda3c1b3b646
Date: Fri, 25 Sep 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790304633
