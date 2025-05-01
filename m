Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C40F9E6
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746058194; cv=none; b=lNY21yP9RDcO4YkEbeT0w+h4Ch31ZTWR/T8WKKTIB03xwA1+bIcTpjfd65SGv09OflTqu0LaZE0aqoyo6C6FzcRyMQySrLl21/SkAQ+uhR6sQ/0EuXLX0EOPeDMTmTkQMdygLkNbAciGGIvlXxPkRk+Nf1OfKM7jJo7gqlI3VQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746058194; c=relaxed/simple;
	bh=DnQCnb9prUCqZzPvxpjDHCXUlEgK7XfxtryOiL3mblc=;
	h=To:Subject:From:Message-Id:Date; b=qTjgFj3kz/ojFmTJOAAF85zjxsMfSBo8hYQN85siWrhxQ+EUMFJTcn8pOxvc6+QukELSukJ9se80nSHPQb9jpWyqgZPJIO/26qZnlktd7hnFOm61+Iit7QJOTuJxrgC8rAjK9WH0nnjC+CwAD6tJLVL0UHk5U4r6R2AHTcwy2VQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DU54HY9w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DU54HY9w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2963C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746058193;
	bh=DnQCnb9prUCqZzPvxpjDHCXUlEgK7XfxtryOiL3mblc=;
	h=To:Subject:From:Date:From;
	b=DU54HY9wtnGIP7eF6ysEw3BJjdm3yvSKvJd+C8u9HuHSfVCx9hEt/sEKHJgf8v+bA
	 idlmv6IRAjZ68AbWtdq+geFOUhsTouZ1X8Q+iM/v89T2HVOiCxHaQjxLl8DrkqsP8n
	 z/PmFmGkQeE3qgpGtp+hyBfnkfPosWliFFOFTtWDvXv0ddGBuztE8RJzUViIJ5bWQW
	 HnP351A2rdeo1J5ttFo+r9pU2I1hDxli2YzKlbqyDAdnxjKuAo0J5DETYmSd0P3M75
	 HpbjXBh3vrslYT49thBgS7G0h9Ycjrm0xzA2IMwgsKRRmk3xIdJylfWBUti9cqiNY/
	 ZnWUIY9IYSiGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F550C369D9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174605819357.13776.12706030850379785523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e2af2b1479eb8e170528da6c2c65b6b7f77ce234cf1909db8905b1509a886c6
Date: Thu, 01 May 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746058193
