Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E6AD206F27
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736435154; cv=none; b=ETV+e8QeDdKvoUrRsATn7PxTYp6qpNeuARoOd2c3fyX6oUDPr61u2VORiK17Epf0LrMHsKRtrDZxieFoUByRWfs0pR7vRSKJ09uj+pNYmYUOxJdBseGPXnIZaGMFZfx+8egsbRDyDP5fmBhChFW0cJSh7NBLY+camBaLkTRXXYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736435154; c=relaxed/simple;
	bh=aNzF6GQ5RqYZucZnXctg1BQsNG1N2GR8xcD4caizGtM=;
	h=To:Subject:From:Message-Id:Date; b=RL8+YZiUt8i/0kZKDOR+CAd4a3MQezfV2l5Wlqievp98O9QMpZgsQESAGn7V52lrSGTu1jUhDfR0ilEJ4058t2gXUfX+UMt2gNjdfkJ/mpUyodxNBOjxshz7zUS8FVGsRoWeDl9rb0cyjfz2ghImmfqCPd+PtLsi/6jtKvlfNx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tc+CwKKG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tc+CwKKG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F91C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736435153;
	bh=aNzF6GQ5RqYZucZnXctg1BQsNG1N2GR8xcD4caizGtM=;
	h=To:Subject:From:Date:From;
	b=Tc+CwKKGTW5F3zxbJfB50yRhJs8Qots4sTk4xBLUtWtsJumbXVMD9OJiqv+MrrBCW
	 mfK07AfA72SdLmRWRxzYyoSXw9oYlzpkKfDbu0jxm02Zi7jPaLRm9U+QyLnklkN2d3
	 erigxUkjPJGUk22vIt989UZEHWU1SKSEomz+xj0LQ099emiM3cWurCTMWYjsVH+dlX
	 WuLhNdBh/VTilQeszccBKPrai+2BfoN9OkupRGjb/ssdo8Y/QQDL+oDzbBzfJzI7qf
	 QFcO9wtlAbIkFXkBEkAJVEVFWsiUOVmCj1hFyWYAPafxRUHtagebX+OSYYm2odcbut
	 iYM0OFFC5gCNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98268E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173643515361.20756.7242273888234665639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24e0d719ba89e8f642e3fb89ba931600b4ba6fd3a57c5da56fe5a716a35a0580
Date: Thu, 09 Jan 2025 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736435153
