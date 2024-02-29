Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09B1810EF
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709242097; cv=none; b=Sp5ka9+96hMnyNeLWyX7kDq2Uhp59P/knN9i66ZhvxWd1i6w6+Mo8gUYA2AansUFm7DoeV/d+0QtKc0W/QdCpcka7fpd2WwvUNd4ECLTR8TZAwSptRnbc5dqi5cKkercYrpoM0WunoUa6aCnAegDL6zD4cp9hVeNYJxOYfldYgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709242097; c=relaxed/simple;
	bh=Yg3whNdbYk2/BU6tYWNAlPtGvCN4aSMVhqA8hVWp2mU=;
	h=To:Subject:From:Message-Id:Date; b=Xw/6HIZZbTgoYL3Kzix6M8Cptww5sLu+OhlZJILtoeH84EYPivtLZcPjhpB+msj9dTL3rnWLhe5nPbvvKEPcgPqL6y3+y16qh0jH6HzugxLG3bRd7hEjUua3L5lk49aohj5hQBrsdNUYZhtFT0lDWjpMe3HGCbDGMPekfxrQSkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uBnV7caB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBnV7caB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D262C433C7
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709242096;
	bh=Yg3whNdbYk2/BU6tYWNAlPtGvCN4aSMVhqA8hVWp2mU=;
	h=To:Subject:From:Date:From;
	b=uBnV7caB4mz0WJukFOURvDRqncBkdB3SUCXWxnglf6Co560MhdBIXo/aqv5B5RzW9
	 OzYgFYhk/u6HkvBPO2U2obh5XnvVxXl9RWBh1edQlIQE0ImkJEg6OZ37G8uuLm88I+
	 Fu1AAjMqJftrI84nYwLIm8zyJoY5f8kqBuMgmVk4DNIJqVI6+AyJqLXYfsRP4liubz
	 yceSNR105XhQCJ0oyPH9hTpFWJC6ckxDD7qe5ooOT3fAIOVpZU9vKlyV7c4afMMnEf
	 pd4OakInlwOhSuW4wxd7lTJ+OitpGxIAQW8Y2w0O9yUc26mFayDx/HZzR17P/aGYQz
	 Pfoy0BUTFKNkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61455C48BF6
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170924209638.25631.6943107759905881104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a54172fa5c49230bf513a77f961c76cd34a7165eaef6b14313cf6d163bdef4d
Date: Thu, 29 Feb 2024 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709242096
