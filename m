Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5F013A250
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734509754; cv=none; b=AR3MiOTFIwznk44yIMAdITIRsElqYcdzVRH9CeBwyM/PS0sGa+t0GWLh+IGYn976A1g5L+PisYBGyBshJTKKULveHBto73eDK5mE5djO41LTpMaW5u/ZqyyHiIYkXXAiwcFuap4V41/zpxEuT6OBVG1dvxJ7LIWurIk6VBWPMYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734509754; c=relaxed/simple;
	bh=Vw9knKBZKT4YDixDtvOB0l5xXpc6J+WvZBr3KVuyWuk=;
	h=To:Subject:From:Message-Id:Date; b=ZAIp02qyBqHFtWM+0F/XOuLbyk1TSuP1Yt5lvVd76o3UG7gYSw5wGNHyzUSibZ4i7raPa/a5QE4cARBmsBFjesGMQO3ztcqOfXtKZ6VR6veyz8gN6P092UPv/TQ7AI0qDU5yNDEovdDkln96/daliY+qjIyJo4GIHXPlMSJtCBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lbJHB/iQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lbJHB/iQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD249C4CECE
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734509753;
	bh=Vw9knKBZKT4YDixDtvOB0l5xXpc6J+WvZBr3KVuyWuk=;
	h=To:Subject:From:Date:From;
	b=lbJHB/iQKjsXCQ1axjgNAMBQsQ35lqLU5ThK/2pHbiwgu9P0hu1QdVvEu7lhZvHW2
	 merVfYJ6C7wkS9HUPT4QPXBccTBke+uDIrI1h6G2TfhRvKOH6v4U9/IUy2xydIuFIY
	 MX5AclUSirvjH79LskaAfBgxDqLEkwrV+swDe6jEgaAASLB0UmENCMmBXSixZaMO7D
	 Lo9fFAJvYR1gubzjBVCPazQYrSN/PkaGasgz6RglrbH/H6PzP9qVWbFTdq5QmARcmz
	 UUTn8+IbzQlzmalFowrZH3p9QCCfRp0XogWGmZw7ckFB5iAW+NguHzKzLJZJ5jymNF
	 NmL0AU9QtiAag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A69DEE77183
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173450975366.8509.8218272190345603535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e65a57e20a90271b4ab0ae9444a083fa7d97e09668a3e2081a9d0b42a1f8c434
Date: Wed, 18 Dec 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734509753
