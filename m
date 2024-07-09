Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390A514F131
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 09:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720518983; cv=none; b=Qpm7E4SsXnvK2s1m888cWWuypJTXqlmWGxIIinXiVPagKGppp/4sZ7IhIZHUvk7dMujihc7vQH7tfeAiNBbNBGToaBotpbWL0IqNECtsYON7benzsDeNHtV1LO4v8HXkibC+pGnLB9PCD9GoX3ommuun0QApKmJ3vxx9hOhypFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720518983; c=relaxed/simple;
	bh=eTFQv8Gktl741dYWwA96bmOrFxVV0yjYrzRVUCs+LyU=;
	h=To:Subject:From:Message-Id:Date; b=T8en+VK7vNBtKEuVk9uTI84QAb78iEwb7HjMjWLvVkwMRY5I+QtwmoJMVAFr2/XPjr1TNNkcW1mkzb6mM3HHF42oRuroKAmQms9UYEgLqOJvcn9jdOiSZJj7SYfkm1EEjyscISSDvnF3vsa21J8rBK82kvt4lbS9jr2YVX4+VG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TWeFQt6G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TWeFQt6G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D48C6C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 09:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720518982;
	bh=eTFQv8Gktl741dYWwA96bmOrFxVV0yjYrzRVUCs+LyU=;
	h=To:Subject:From:Date:From;
	b=TWeFQt6GwjmDK3VcPEFPRwwM0PMT0cnElqcrewWsC5m1hLTU5oYEKzWO1wqJIHHOA
	 LfA2JqnwTJ9MauXZTAIc8Pm+AkiruEjKZ8609jXsDe/Aqu3J47Ee+iwOD32NHiTtkl
	 lAia3Z85e0AQYGNni5RQQA7xstLFJn0qQKk2313Z1S/imweOX/AT2m7S5eSPQ/DDhB
	 vIOqSE1tM7EiU22v69bO3t8nCjNblGtk5qusoWZFiLA5U1iwEqYp+6iDcQA1ZVQezG
	 aG+qDJnn2O7aK4oH4FLFniEfYmyIJBnzt54YWq3Dg1uWn8auMILbx2m5FsFydiJJdC
	 6FRHUki4eTh/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2766C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 09:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172051898278.15185.1524792298218673748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 809a990442726e1114b37525a43c446652cc46f11d596a9097f60c69653bb8e7
Date: Tue, 09 Jul 2024 09:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720518982
