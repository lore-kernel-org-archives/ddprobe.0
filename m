Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E32CF5221
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708237097; cv=none; b=C7Bcc0WoS/qkcSvDU0TBhTCWHfSWYiy6V5hrhOKzHu+wTQ3VgHoTQtYvOACmG25JYoOH4uiN9ixLhWbTkkkxj3VVk9TdadeVOfACw6siStHns/SEAbbMRh5jioYxFj4KTHWSMkElNQqbFEGXH/Sh/KaCj3Jpk0zo1/6crhvSG38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708237097; c=relaxed/simple;
	bh=uKLtOIsDdrEQVLEPNtbrQfB3542KR7yoEJdmex3yU9Y=;
	h=To:Subject:From:Message-Id:Date; b=T5KzZmAqfz0KTHK+1xSSPoNgqpE9UmeTI010BwHCVLZ7EMHmnMUdV9DK85gutmOUSjOZuUtxPMEUNTkDIpwZk99XQGqKNiGotHNuyc4E9KLdKANjfPMYAA5NrWAtCXnMdfLX2JmYgnqYIFpw43LUeYC24Uu/+RLSgKcZNK9r+gQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MeQ/HbYS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MeQ/HbYS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79E68C433C7
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708237096;
	bh=uKLtOIsDdrEQVLEPNtbrQfB3542KR7yoEJdmex3yU9Y=;
	h=To:Subject:From:Date:From;
	b=MeQ/HbYSHDJil5RDbGts4Px5eM+TXjUtUfN4P1NoXivgiLYW2Cs5nEqs9UvKPtWJs
	 VKjePoQVRwwa2wEDDdCj3S8JLTDisMk4zrTSakjo065G0fpQXV5vLid9IRz4lw0uIX
	 hUzifj5m7+9YmcDf58tpYBf14iwJsrQaBOQPNAmSIQoxZCib7XhuwUC+6GwLhH254p
	 viorHN9hx5y1GaAnviSXiDvF/HaAKwL9vhrdeapZof2nf1ff7DxZnjM+kR88Q34JBM
	 Ij5MX6EKkZaK8kwfttMJfy5EtmR30tTFtmSxIDm/JJ+mnW6r2qJPkGk4zw1LKY0zBM
	 w23rdb1/7553w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D70BC4829E
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170823709637.3732.4372221796640498961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc2b0c0800293ff16a86abf773bb6703f621a19708c16d865e71079ea4519712
Date: Sun, 18 Feb 2024 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708237096
