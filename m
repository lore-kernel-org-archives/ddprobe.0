Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202F24087C
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732979154; cv=none; b=K49AduQqgHebDZa6iwlGGAI+LxmxC7vv5W3xnaVxZGLgUV9WfZyQzVWzYtmyeFA4fYkVIloiqEeLtvplYDJUyIEUITO+FQMHwiusGc8PuUEoHOHsRqtruNm25a9oN/dpo8h6M8IViWVzgS1LQSDiIVE4rXnP+UKHDJucJ1hVjmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732979154; c=relaxed/simple;
	bh=Cfk0J465QghCJppq5AAvO22706z+nYiZ0E7/ibU6CdY=;
	h=To:Subject:From:Message-Id:Date; b=rF6y82Yz+ea0ypWgWB05VwNkGNAstWEZakTIujCZvBuNaqvLV/ys3CB6qbMT0qthZNE3eR3lhbd9vgFa1Y9oew6VNEjP5lIvy+DDJgL90MsEN5IS53ICJdz6/nhWg/pxP7XW1lKH/sbu6iIgax3jJv8pMfSyw+cloZ0womfusfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MGyJ1zlz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MGyJ1zlz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B41C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732979153;
	bh=Cfk0J465QghCJppq5AAvO22706z+nYiZ0E7/ibU6CdY=;
	h=To:Subject:From:Date:From;
	b=MGyJ1zlzcSlRo2upsQ0Pbja4x37LNXH/FsCfkX4omLoB2bP4qL1OWqzqn/+IAOrRB
	 WAbdVh40x9gLMr5VyXmHHXb9Rqc7vgOU38nrGq/5LFG5ckq+TTjF/m9UJWbK/Jj2pC
	 6f8trikFjidPsPDzs3cMnYLaH2S2k/4pdDizYvECBXx6mXUm0hlYM9ulZdPcbjYjGK
	 R7lEu5Pg3DeYJbR4on6lccz9Ffj3YsQJ9wjRBXU/Lr1dchxgJEMq4YlTOCjecNPTwd
	 SHRrpL5wuzCxbvg0YeZXvYodUObqZg1LMQCYgcY7AeQ2lBtjvfwpIBTYGVUNPl04jM
	 DICe8dyz4Jsew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94795D73606
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173297915359.24645.7672668373916349318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d43a6cbabf1187f75c59ea79ec710613d531b87bf0d636291ad6c456d97f739
Date: Sat, 30 Nov 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732979153
