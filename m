Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B7B52853E0
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 08:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763452914; cv=none; b=gHGJijtpA9sU3ZmsQNxGSbWWXk9JCENajKkAE5gGpr0vgbFHli4Lg/VcA3rXQ6Q/WeACkbozfpkBXo25uBwZFxhhViMal9JjSMcFUfVM5xKQPE7I5Jy/3eaenHfmzNL4qksmSImzgENm1Z0VVoO+q+d3pbP2/gr1bqN2Z6Nv39c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763452914; c=relaxed/simple;
	bh=majHotBN+RHXcE4v7+EbDuCRbsmN5VktJIyo3Q6BClo=;
	h=To:Subject:From:Message-Id:Date; b=aeKOWYsS4DHImDCOjDkFFWIOjKaMIR1Ip3RKl5eZ/ATRA49ncRjjIUtJoURdRCDj+JFS4qf8S/Qvjj5ByBfolx2rpTphFhg/6JELi+yWgwI/QpHsW5ddVtkq+LWy7bmK+9LGV9nUt7T54SnvvsY2Ae9oKObt4W19iR884MBtmkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e3hhvg+l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e3hhvg+l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C21C19421
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 08:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763452913;
	bh=majHotBN+RHXcE4v7+EbDuCRbsmN5VktJIyo3Q6BClo=;
	h=To:Subject:From:Date:From;
	b=e3hhvg+lc2wU7b9ai7VuJdXCF053hQFNOSXlw66mP8ezMvU5Ao28DZ/LAGB1UMKrn
	 ZkpqDUG9pWk9yf81wE6HiWjWBFyRyBK7OPtzGNkxecQeUuIer9PyI6AVk7c0IKcIVw
	 EEFNRL8rq2RmwpgYfSWWYOhHr3L3+4d3kcsPAt9z+Y9n+cI8lEISHTeaOTQbvIMC3b
	 0dQ4rbTBDcKVPI6qSEc856XWELhUWh8DCBPpbymw9VIQx4ttXQTxClj0fVHecmrCTG
	 6xFiJ8EREtOjEAIcFUtcFt7nsFOuREG2pyOyOUzaLNn8QwJvLK8wOBJoND+q1/f+9j
	 1UOTn1CTZG36w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92059CEBF93
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 08:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176345291358.11967.10406834195921702881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84b1d499fe6d2ce7fb28d6e0cc3eb5fd0dd3598a95433bb1ff3b5b57517d0f8f
Date: Tue, 18 Nov 2025 08:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763452913
