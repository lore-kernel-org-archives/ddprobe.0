Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 565213B2A1
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 11:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717328723; cv=none; b=U21Z8CufytSmSYLfzYlTijVttfo7D5eGmtMO+VZNYup8DApZF3PdlsIW42Rx7xzswQSX6EVgdSfk3mG3YAJfP5Q4HbaLdX5gCm/xFzxLoMRU0OFp/QipVf5yJVyAWgPz6JSe7sEI3nETjx0De3xi4O3PMQz1Bj4auFiSZPKrkWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717328723; c=relaxed/simple;
	bh=AJS+CAPD/mhptyhM5AfwPW4naexX8z0u4AVcOeRcqv4=;
	h=To:Subject:From:Message-Id:Date; b=YF5178lJVNJ1bJDwQvBi0Fq7LKMdHe/ULwSHcUbnwijtZuoCCwgxxqCmtLONosqal3yS+k8q0KSFkriAlR+NCYGuogT/guNOJBPZ58NDu5Wn8G5ZjwwjWpFtubdGQiqdyIUTuY/CsRIClXj4KadqjApEMb4l2SJr5atsE9jxuxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDRHL8mD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDRHL8mD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32DFC2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 11:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717328722;
	bh=AJS+CAPD/mhptyhM5AfwPW4naexX8z0u4AVcOeRcqv4=;
	h=To:Subject:From:Date:From;
	b=BDRHL8mDwjPrmdjDP+tY6A9tY6qPafyeglKFFRxhtRPRWNKvPmH43w5OrRGKC9bLZ
	 B8VvhlZyhlIAu3u9hQ5+9aEWuwwoY2eoqGJmdAhwPui/lgEdiUKF6MqaAeXqjabkpu
	 S6prchTyGhPbjjiykZ9Y9Ul+ZnJVgP9MRIDdHylTuEraBgylqFNllSt3AT9BQOrVCt
	 WE1748KJNoV7BwwJ7FfgL0iXnSQUC5GGrkuoNMACnya4JoxPw5EVYGjbmTkTsDJm/Y
	 ZjlmkOTfgMWORuEMZVlRSxQdpPKP6mH1Y7Pi3OFqIW3+YIiaiqPv6JiaIU1vNTpkVE
	 xe5ARMF6FJ4qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0231C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 11:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171732872276.31289.467553005066677670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e48357ea11706747fa476b04653f9b335f949988fab098b0a1ad924b6870dd9
Date: Sun, 02 Jun 2024 11:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717328722
