Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6782620ADE9
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742384994; cv=none; b=kikLzIEXPR5T38B/SWFjMhC6hMcIJpL8+GC4GEL0bVufZNu4Sb3vRyoMRW0k9f0o8uOVyrv7c3suERq1uRffP0U/NffVDHqOFKK7Qx/tWQV2uXi/a9qSMHl2ILoLizSpLAjRqJhdWjKapwKeRV6gpjflFU6W2sJGEYjUJhvptTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742384994; c=relaxed/simple;
	bh=o33NmhlXcoKNaBAOwgrtwKkZgszSEDCXGZH6rJ+PLbY=;
	h=To:Subject:From:Message-Id:Date; b=JzdMpZTZ2ROpsEwSg+gxFTzp2IuvVXZm1nffhX4nti9mZ0GreocSlh/hbdExpb+IH6utXf+qMOn9m4cICCJz8/KNcgSc3+UmGm3HjsvCybjj2dUuZT65e6oTY7l7hxtFPOymVgAl8xV7J8klg2d2JTfB3e6sNLICdEXiDeHyaSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ua/eSGwc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ua/eSGwc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A45C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742384993;
	bh=o33NmhlXcoKNaBAOwgrtwKkZgszSEDCXGZH6rJ+PLbY=;
	h=To:Subject:From:Date:From;
	b=Ua/eSGwcIAipTig980cJrlYt2f65QceBpUQTF3ZjmvSNG/DPZciLv3cf7AdpDPLIM
	 XMPbG1NK+HqM9aFBFqbMRKYEqEc55rnqnqQHgSk+EOnvr8AhAeJhsB65Sh1miYZbb0
	 JhKdM1DWhIOrJPtfzMF2sm/QDUGoEp/E8lw/mGl7eckVxs+unXAGoOHHMI9GgJOU81
	 NTyfsK4ArsfyiAxlaxqo+qMDPUWeaBUWG9EcbPajOAf/KtTFavq5fb8eC+0DnZ8H4h
	 /tFUxe73/yiQcsqagJmO5jF6pZDYDfIRuYfCNnSqqYmnvE8iNaf7aPzuE2LIwuBSAx
	 wz7y2WorRu8Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF07C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174238499363.1834.15311819407414814907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5ba45ec17bb97b120e1d07673d4cbd97800b84dbbac805e47cde409eaef06f7
Date: Wed, 19 Mar 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742384993
