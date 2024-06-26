Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47378191495
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 19:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719429203; cv=none; b=lNc8SuARQq9nGI2sqiNksZXdxId3SBCFZj9+69a1LpiGod27G7nNu+LiwAtLdwyzRWa7c4P7RqF9f5YkTOqJbqsVUKcf0wqONMta8nsVF1yw0jv+TQLuL9b+iywKWb3sLtyXiZ3OFcG5zXSVkNpx9SzZQreW9HuE0ETOtR/ld2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719429203; c=relaxed/simple;
	bh=DtDicKiYhPKJlq8vADY3vmLb6oeBZqI05gEVCl5QPsI=;
	h=To:Subject:From:Message-Id:Date; b=I7swe+YoWq9Z6QMOXYAycCWPXRePDTQ/AdBvPDh40PARxgFc70sSxbwVGg7e7ito68UknhnamMuYeKb99+nWrGXN9r6GmCne5lsaiV4kPduotfrk2RdEimxkLBYIpQbxXsTHVFpRWVOexTGdZzhQE3M8sCMAHfayIMferbH7U1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ED09Vs4/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ED09Vs4/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2737C116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 19:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719429202;
	bh=DtDicKiYhPKJlq8vADY3vmLb6oeBZqI05gEVCl5QPsI=;
	h=To:Subject:From:Date:From;
	b=ED09Vs4/ef69R2ApjW6AGUWASxhKJpgbvbZmjNLgNhDCU24YhwjuUuwE1bScXzELw
	 yZp/6uCwEZDVcndzHcj96DVb83EHBu4eaQE9BTMPY7km5K8hW6VqSR3ufJB2zhqvl4
	 OTNEa2s02/fdvp7ZA6Qr1w2wEibfQhOAtnfCHhJGbrkM4PRDoVHJ10xVBINLEB4Z5c
	 rG5bM74PBiDKpSIrQjv0Zk7RNuYyq+JhBUWZdZtWBOJmPwqm9/JaSmDO1AqBHqvCmK
	 9TtNQ/rQUPmSwr3bQUpdESenSCUXT407n8eYmnMkRJis7egsr4mF9YVOGD6rpjBTA3
	 MsCf6pAeJcm2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0EECC27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 19:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171942920278.3628.5482436524331307052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d9d72907db53bffa50a17ca68b69bc154fced081162a9a350cfb54d00074f59
Date: Wed, 26 Jun 2024 19:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719429202
