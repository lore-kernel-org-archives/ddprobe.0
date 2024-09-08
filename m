Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341411B85F2
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725781554; cv=none; b=tZUk1E2pigT3t7innWcejzjS2/jLZ1DFygDcVM6tcHbcYD1ev8jXmVbDPo3NMFXtWrFr+SwSu8khX7ddH9Uw4OW5M9QRVRnGhyztFvdIK3Rn8xEO9q+gJtmW+yHiBsyN/55CFGXs2o4tY809PPspY7/nVHdMQ0VsOb//bh4WqYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725781554; c=relaxed/simple;
	bh=/IrtFNK2FE31TLRDfa6Cr/FecC8D7PtrTRWJeRa6VIs=;
	h=To:Subject:From:Message-Id:Date; b=KnxEEFlYHIjoC8z2nKNrquYOrJuyaRPrxv7UmQ01ZD4xCIwS8LIHwDbF22mGCg7Izf1X0W4mo9y5sapQKsE3MB2szv2bRr1ZFesm1Qa9EuvekEF/iVXvUN5LvyTjUCX/4UGrFyNhn5WrlzESmNmHgx3z0dNwbfu3FCObvmbTlCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KjygYv2a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KjygYv2a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA07C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725781553;
	bh=/IrtFNK2FE31TLRDfa6Cr/FecC8D7PtrTRWJeRa6VIs=;
	h=To:Subject:From:Date:From;
	b=KjygYv2aBPJdgmgNciRdr0M12mv211V6fDbOwJVUfCnB8S+g32X/3YdDuqXnMnUm7
	 ACkbZn36grx33iiAzbs1uwFRv5WrN++uvP8jK11dzRx0X66DKa21EUR/6DqThgy0sI
	 0m4qE3G1Suw/HaccqOwRmdlkBZiu/1epL92y0RFiiiGbGtavfkfBWraApLXYRwvSRB
	 2CCdJgj70d2b1667iTtUS3VzLuc6yBYtqxGPWUK7KRt/Qqc4UajfN+gx9cR7gJDDNr
	 5uBpLju1TmRQ6AvbVIRk6KviRvm5iHx420W4Gt6rwUHHqTL03GUP0BsS1C9spyz90C
	 dOQZwpBXyO7Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EDDCD4F4C
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172578155358.9478.6388594454902427582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a79c65adbe45d5ad38f628f58d2c3ba76e65a6ef0ae61ec296cfc85b2cfef4ed
Date: Sun, 08 Sep 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725781553
