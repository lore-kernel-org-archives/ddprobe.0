Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35BAF357D0E
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 20:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778963434; cv=none; b=Uk8yGQUddRJZ2y5IFxvH+DS/+u25mr1NYxygGCU8snJ/MkETzGbJH7pUuUQL8D8ukxXrx5RbouuKreSjaY2Q13rc8eOhqLA1ljFZpqNNDWy3ZT+h9nUqnzKNwvhiPYaju0gkjs1ohbBYCICjaSgMu3xrsoxaO0WVzYA2dvd7Xpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778963434; c=relaxed/simple;
	bh=qLHYRuIKOqz2frpPfFsT507FhTUjam9+j4Deyd8hjvA=;
	h=To:Subject:From:Message-Id:Date; b=I3d91549EsZ9t0myhvU5CXTul4OmP9Jr/izSylOgDcOg6zVfY5mHT10/IjFd5Gl63cc7W3kfvtfsOpnjivVswDj790sTholTjzan9pwoorgJQ3pa15h78CnDuX63kAllkdv4hlyO3j1lLO+CM8sRwHwefzst/kzinQA2hSxU+M4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a0GR6tdq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a0GR6tdq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3692C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778963433;
	bh=qLHYRuIKOqz2frpPfFsT507FhTUjam9+j4Deyd8hjvA=;
	h=To:Subject:From:Date:From;
	b=a0GR6tdq1Onc7jmOI+KguvjGdnGvVtWQeX+1KBmWju51F5KqDR9+S6C6Or2eOcaEn
	 3Dhxpbw6a5qvVYhXTwNR39BXwp85RVi4a9IYWnsa6ah5KRCQRgyxehRVJ5qJLSQuEV
	 Fvd+XQiI4THt/RwosgZEMiz5Bugth6fGxMIBfV9DXVN5SbCyLituKGP/0SuGnOcjF/
	 mhvrq5bFsybQDhNQXyu7XsajtmKvWP0e/CgA+8EkLOO3SNaDB1BExsNZVbiWl3f4xy
	 L/4AUVQS6Cg9LnQjZyWpxHPVDTkxJmV+tlIIN1eLZ0IEqqjVc8X8x6ZRo2ws1xteFd
	 PkD7zrqpLR5yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AC3CD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177896343368.26309.9614967757507813356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a94f4b02bd9011ad077671739c4c3b8e87d17eafd2d09913aab21a9f03ccf4a7
Date: Sat, 16 May 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778963433
