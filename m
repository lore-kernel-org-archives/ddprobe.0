Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CAAB37998C
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784837434; cv=none; b=CaWNT1EVTG7nzveUPCCt0oQ8ihl82ZJNjQlJS0bl4r/9o7OkeJFXy1fW3UOEc7z3oHJWcnY8IMkviJcnBB0phrFhRGsNwmV7vhe2v58oNXfIAT2Zxfdky+vxK+4wv+VZrYB29ONaM66CUbppzSP5v384JuwM0T7P7u/TyTZLgX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784837434; c=relaxed/simple;
	bh=QnAWlxoRBu7cUMfpCI2IGxjO963MRlcYckNlZlQy7m8=;
	h=To:Subject:From:Message-Id:Date; b=jO6ufZTGDHkfZDnyq9xyfuBy0MFfnqluFiuF4pBensd/2vIsOHHnutFhbGd+AR/B9RfntcGwQvYZ2gyKbSNR3WdafV7K8yExBcN5nSfLf/sYQoy46Wes6WsBPlebFfRLtbmx5qXoeuaTXCTW4qSTMIdTa9uz4bYMOycgO461vOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJhWzxKJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJhWzxKJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5025C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784837433;
	bh=QnAWlxoRBu7cUMfpCI2IGxjO963MRlcYckNlZlQy7m8=;
	h=To:Subject:From:Date:From;
	b=GJhWzxKJGQdjqvT/xFNf4kdKCoVpaOjx8V/EY8JZl/oe2Wn3W+fUkeyjw60KDIv1L
	 0JqXrMwuxNR22xtxuIBbGFfdJLRCsIs47xJk33cjuf+H9fk/ODAUtbiNCOUKQj/1vT
	 7uFMTqBZtOe9MG6z6AnYGg9E8NM4BJhmXv0e/M1JewPLfx0ltxvHmJ/bW13vf5J7Sc
	 gExn5fMZaXXkySoolMWhgouTjb77jerJkLb5SmafFNY6JKUWJ23KkhLNlQe3pCE+HT
	 u6x49ryfL1yZCo5+/lZvR+UzGxPgIzLgRrlP2c8gHQFPhQWL87fQv6396i69OEbYj2
	 7IViaB7blBeuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AA9C531D0
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178483743371.4939.5472887447839272426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fb3d1d08f570d3581b74e229504f462d51e1216afc99a93da6adbd4d4fe4c11
Date: Thu, 23 Jul 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784837433
