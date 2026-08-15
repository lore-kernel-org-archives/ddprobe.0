Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556061E98E3
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786768834; cv=none; b=cUYwBGW8YvLgvTIIruYG5Tw7BH7VqwEY/MUIVXrjMNty3WfRhwPqQfLnR3egqDAKZyYcweYph5hL5rnsHrZvnM5IUuTrpY0kC6LyzCq73JfD9+umPkof4CGU1RYQO8/EWdzfUvDJtWfmf+FaxAt7bsvsswEO61DWE+VEWVaCtgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786768834; c=relaxed/simple;
	bh=6yMEWmMwUHi4wINqe5GG1aQJCsc/H0mYzPSZ+BoM65E=;
	h=To:Subject:From:Message-Id:Date; b=nkHkh7etSfwZopwNdMI+dFwrrLJ9cmB+Id7e4nOSf7iuHcnsdz1Zr65vuotbByIuev3pWIzi4APhqcDw6EWjMDksZZdOlNbuGbAorRg0sGMRiYfCu0CcTo4S3JjBjpqwGepI7lXw1uowVpl7jOkLR46tYP/Hpa5MwdMbQC3eqR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sqhj95sV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sqhj95sV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEEA0C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786768833;
	bh=6yMEWmMwUHi4wINqe5GG1aQJCsc/H0mYzPSZ+BoM65E=;
	h=To:Subject:From:Date:From;
	b=Sqhj95sV8DCKO9n4xu56NJHxT09K8DkxoNRBSPjp+VMCzOK0HcoymdOw9lVm/kF8U
	 YOn4hb5RrGByy9Wgo/CYFAuhkuJXxBlTa8D8CRPwErd24l8lY0Nl4NswgCoa2JLBQi
	 Tlix5HjPHbnoIS0+/jDqaFq8+sbVvFW2D9rMgesvempzdEbYGXhhCs+A9QhxCggFtz
	 DZliNQcCkXaeIVHIAX43CKvbk8UP0l+LZxQeK4nWGVbxER6yi+GLNy8daiEzsrD1mW
	 iVLgidsGXbGowIWE/ijyrKY7xRK/9/JjOqVIACt0Q0G7g55sTOK5Rcr+dK1Uoq/Omm
	 1Y+sKykOoE/BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B768DC5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178676883372.2740.15838547627290629914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b870e749b7403fce3c2a66cc3f42fcbd83d794ae4d78d47c6caf2ea18246c97
Date: Sat, 15 Aug 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786768833
