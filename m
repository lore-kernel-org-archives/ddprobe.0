Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE4B748A
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726031154; cv=none; b=ZAR1be6uJJA9Jns+IQFsh8Ey9zCU3x/6smHenpqZiJedqJmUK/Unxy/f2iFrBR26R2qxcrtbAo7uwd7Lt6QD/AB2tDCa+inCxwPipMRRCrXCJltFis9vb9TJyQ3M6M2ux0FDcXJJxduBA9kDfRNANrvZTPCKTzTYbyI0it3OKSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726031154; c=relaxed/simple;
	bh=i+6M/ohNVSsRTBIUj/oXvLxeDVoKmpsxryGY2ShdDTE=;
	h=To:Subject:From:Message-Id:Date; b=P+bL8CvwK8Ovu8mUsg2W7Ezq/Zov7McQnoitvtq0WJvpa9KUPw5ATQ3uKU7VV1ARtLKZYU3F/No63JNunFJzWommpcJUZGrzeBj0RVDgUp0peJ40rjpproktn/IXDJa5HIaxLt4fUbR5GGu8KqdRdRGP9zGmPaU9VCJ126FHP48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdpBtYT+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdpBtYT+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7103C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726031153;
	bh=i+6M/ohNVSsRTBIUj/oXvLxeDVoKmpsxryGY2ShdDTE=;
	h=To:Subject:From:Date:From;
	b=jdpBtYT+VN2MT8/7w5xVhYdEpKG18+oefE3t0QS2lXTjulGY3E4Bjj90WaCi9ovWn
	 uPgl6ablGb+0bliKjNT8zOjJA82ty38ICgNNO7zIDyGr7cvQkXaKkqD6OGORUkzvdx
	 gUXSYuKUT5UMAXcC1uPXD7eSVPxPwnKik7d2yz6WbJPOz/COD9dkNl2OBAe3/9J4Ws
	 9Zej+19QOhUdTQOTpOSwwjYqqzD5WtQEnHedCaKKQJEMwEcQozfEeHI758tcilmUnv
	 kKMnZ7he+71yGatyzH13+bFJ8nD2CIOOdNsPAUPOqmtq4J7jfSjyokPFKRmvur+vd2
	 NGkYozYQYZ/rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A7CEE0209
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172603115361.30807.7727947649015469833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ca1c519b7258004c3e3e82b80a7712326c4f72d76cbca0779c9b3c0d2453cb7
Date: Wed, 11 Sep 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726031153
