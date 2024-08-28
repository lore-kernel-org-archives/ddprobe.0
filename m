Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48EC3B67A
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724833554; cv=none; b=bJptXEsb7uKRCA+c6o8EamfrR5iW+qHRoZDTpvcbhpqsNpCaNH1uHiHqUlQj4vj9+CNW5rimOy0Lc0YW635aAGs+ee04hEYx3ZBi45xrg4V6YiOvzrXlhftGwNwfWxyJ54Djt8HWuncOj15SvJLeKJOsRPVvnRDK8aamrOAIxJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724833554; c=relaxed/simple;
	bh=UGsnJbh3jTGHMrlJnLJjLeLUWwO6GF0+lemp4W/6css=;
	h=To:Subject:From:Message-Id:Date; b=XUSzyRCRhq6VQSkPtQdVAj7uxjBM7eSq4SUTBcb7JxFg8EXRHkb4tMb76XEF3Qg7l6m6JdJlQu+w/yO2Nv8Um6TGIOFvfXOGSrY5He7mE5phD9mHdFWt1llagNIn2Lmi66b4qBpkQKwZImsOUxzVsOa0qcejawgApkso3qa3Sew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gFPjHD3N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gFPjHD3N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5520C4FDFF
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724833553;
	bh=UGsnJbh3jTGHMrlJnLJjLeLUWwO6GF0+lemp4W/6css=;
	h=To:Subject:From:Date:From;
	b=gFPjHD3Nliszy29eqWpw7jrsXSw+EFj1zmvQT91z+fVaGeE+nXKKEPlxE40Uet6qm
	 cGtLYgSSHgIFAIqe5fA6WJ6o97XjrSsAoPEcM6g+3YB/8M+eDI0iNw8z3WLXNQYK8F
	 m36tq7rnlkFqA9b/AM3K2J3JQVvPFJlKwTia6Tr/WCuIdQqMzCORB3QSyeXTSxQs+z
	 kCK+AXSiGS4r/LJdSGKEjDy6T0QOyrMV7C4kjDtYayZQD0BR3SCTARoBtT4k07h9Bw
	 Wzo4SA27omLDlBqUWtfudu2uRFitZU66tRjTmSkCuS6aIAWp0a7giaL+Vlpc7qvwZ2
	 o1HhpFEVstonQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2D68C54E62
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172483355365.16377.4777984305209454958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73fca37967a32a3c21f0d2fb09ef4b848e4e61a39b7e5c1dd0cf779f9e1621dc
Date: Wed, 28 Aug 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724833553
