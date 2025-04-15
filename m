Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54AB1275865
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744699794; cv=none; b=ZAwqA8HPS2BwOs/5pbLO5eP0FWcyj1sVgJus5PfOw9bvYL3bTSCe+lovxoNXSJ2HfaNpGswHjGnlAMoIlIbkS+fT54IonMuQebzKSPfINEc0d4hpGcHPw+ySzEoFQsDS/a2HdtP/vFOIT9UzUynzmmO1TTQ05vnD0HYT88hiaUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744699794; c=relaxed/simple;
	bh=6qKUNlvgePNd3IC47alBTyRWHGtg2ueGX5rb6Pa/T9w=;
	h=To:Subject:From:Message-Id:Date; b=NXHLTCTOtqhrYv25zuJ1wepBtN46lINXOTDpBRpm+qHXzjRs2hJuD9Z4PyLrHOzyao06/+rhslG33Q5IuMbZx1bhqUgj/ZSM4kv3vxU7gaKXZ5ao4ttoo8W29TBIePtXIuqJ1ZD9TMJN6b7lUObjwJKX7oZKFHSdePKjBGDVpHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KTSTsSxo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KTSTsSxo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B319BC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744699793;
	bh=6qKUNlvgePNd3IC47alBTyRWHGtg2ueGX5rb6Pa/T9w=;
	h=To:Subject:From:Date:From;
	b=KTSTsSxoHefxGsLqlAP9KZle1k/RglK+ZGR2XZnmS/zDJJbmv9znGufrZ185mJKzX
	 9owYcygFdTGqUDjzAYxvg5ryLxnzV+lXYh2T88kC0qB/uj9r8DchLnx4ijHK4u/gLG
	 iBxM/ZaN3S6MpqlYTJJ0h8amT+96+y/FuPdKggOZtgAArIsAGvZUsVyreaGd8pq6WB
	 e58K22jzVQvwzsZk/EOFzP9oX0HLihBsJOWs3KDDc2Z7e4HObmJNXYKJNOqRoqNutq
	 rY5NDHTdrUx1YvZRmMjn1idQpPqVcFuKjK4biQZMWHhOLivWRFFqjX9u+9CoHulR+k
	 yuHF8GJoNyL6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9BFC369B9
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174469979360.29427.5425764202687457562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7e71ea634fb1cfe013549d61dbbf1977985876a2ee81257610e859caa5b3d8e
Date: Tue, 15 Apr 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744699793
