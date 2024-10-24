Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314EA16726E
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729755354; cv=none; b=URpKmtSuw1WZ3hAFsQY8gWhpZfTK5kGTNGJRf+JQQmMCYPRTNG0fMhDpZqQV5t8St35ukPap4P2GTgGSIKEwfV6fa3L3aGH3HSJjsADjQiAB2v82OMqIws/y8OhyA12A3egBho0ekUFSfXMj6MznGbDwy2lpaiF4hwf+VL4xyuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729755354; c=relaxed/simple;
	bh=QQ7C7psVC4+RLPm15Frg8rBd8KL62i9EADn/ER7LMQ8=;
	h=To:Subject:From:Message-Id:Date; b=WoZS4gZGfBT6TWDF2V3g0NdAAY6ra0uPfJThfpsyATAwmHI6brHtVe7amCfIP4JxRyx7RJsGCuBBhi1pb2oG+IgzdjXV1429E3RV82ImVZv/D6ACif0krh5wMU4n8htnYG483VdCcGFhBO5KcM7ylQcBNbe6RDmNKelSZ7tYNZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5Jj+vUW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5Jj+vUW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD190C4CEC7
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729755353;
	bh=QQ7C7psVC4+RLPm15Frg8rBd8KL62i9EADn/ER7LMQ8=;
	h=To:Subject:From:Date:From;
	b=k5Jj+vUWznqtVmJk1wRhAEOBT++qwbbTnVCAbcJQbC65OuTYSYY+2IqCJqCYrywxy
	 qFReQETsJ9HZp8orNGGo1L5QBybmksZ8fqyjOng5J5J3dPOwqh9LecZngnrbQryaQh
	 KAKo6A9itQJM2ce/CrcmTO/2zulvezCbU0ORQ88/jSXePAONSXmEHmzmWo9EUYJ5AR
	 5CACXOSNXGggex5siKIkVPFFiY5nCcTh0cS6kTgrybkkyAjh2IbEE5hnpRyfj50H/B
	 nbbL+xppF4pylO7bdNBwgIVwrMjrU8uGaKfvRhh7Lj9OWYthoQwg57dR4QiCGWCYRO
	 x+tClnZT+4EWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4052D0BB66
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172975535365.13169.15654656334973036812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a0c25ea8fc5e6cea22b059f1d38634431a778ed7e33138a343aed6b835f55a2
Date: Thu, 24 Oct 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729755353
