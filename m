Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2D51D63C6
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751599195; cv=none; b=JlipydNFA7eAIfsJVPpqe7yt+lk/n5+0YN660S+f8sAbDl20diuTbnA0C/aeyGOB7vsMgBLKaN8ZWLKNfFOw06dTyQR9R2LTer5DOJPcUdiuac3rGtjL1FfE5704QWeMF42vHDspOhslSsIZAFSfWO4umYlBZtOfMLews0YDbrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751599195; c=relaxed/simple;
	bh=LqmnsUI07td6Lqce/oCMNSqMeaAYo86poC5IWhLUs2Q=;
	h=To:Subject:From:Message-Id:Date; b=Z28M7gyyYMHeyWwDupPwuY9OMp7VczYyRwHQy60HAJkd2qvKLxS3rGKOithvq8OYw6QLEqoKRD52Lm6IAVq/aFKzQ8hDxsHTZxMnMFY08y3/uDks9RDdZB+pXMSlWwcLfNH3QahbXRrJY36CkkX49AIxi0be/feR1XdQw3btSyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jm5QKANz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jm5QKANz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9D1C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751599193;
	bh=LqmnsUI07td6Lqce/oCMNSqMeaAYo86poC5IWhLUs2Q=;
	h=To:Subject:From:Date:From;
	b=Jm5QKANzMKLZzBpY3uf/sqi4iNCO7qLjuqUp6b+/+JQOBiWfOBGRxfDMSJ4Vd8m3T
	 t2yxGW6GmdkHQNHDgS+MVCxvI5oouYkRwYbhGig8Kwa2wl0sSUiUgVD7R0sDh2wyKm
	 9nUmQxhDjE4YuFh6PGWl+61cG1OEgtTXfRwwM0VkcJ7CMkr8PhNI6xqalLyW+MErTL
	 GBMa/jeS1RpYYARh37fvxXdrqagjtpHBO/6BUZAjC6c0Y7Qwb5M9ng/bj7Gj8SmnbX
	 s8PjURRs5zgyG5LtBqpqvhVUEMjayLOx99UDcV9TzZ6KWWtUpLOz8FCWZELJC1pFEP
	 xxoJxq40n026Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E543C83030
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175159919357.2815.16095629573272040368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d055dc39d7d9fdfe57b97fdaebc8f561925eaada6c8ce0d2aefdebd167b330c
Date: Fri, 04 Jul 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751599193
