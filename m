Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CA0448B9D
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787923834; cv=none; b=H5zBmmHeotLEW+m2CxC1vLk4JGABCWsHr83p48v3A4QmYNyB3/kloIvUP8AzeCFl1EYSrXDTmnjo9HR+c3NcrfX0zt7A5xVEJKCwATvZFxXd47KHwa9ZL9NHqb22r+ilAvtuQBXoiMJVVs2N3alGpYSi5UKCji9X55fkpShDdX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787923834; c=relaxed/simple;
	bh=U3kBlAafUFbGirs2xTiJ8exT7hoSiMgnJTp7lPKHx3E=;
	h=To:Subject:From:Message-Id:Date; b=M/ucqxzQ9lK4SrwZWKgNWJR2YMOlVySZNTM2MbNSU6Lul/K5WAcMdztqcFydJiE4rw52Gc0jBgFxNHWCVRavwomFAdyRC9FEKjPh47uFxHRrpnb8BvuqbZ4JLpyEsoHtwuOIzycf02iIVD70Flw7erXi4azflHWOM7fK+DXG6vQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtjmYR7m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtjmYR7m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5421C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787923833;
	bh=U3kBlAafUFbGirs2xTiJ8exT7hoSiMgnJTp7lPKHx3E=;
	h=To:Subject:From:Date:From;
	b=rtjmYR7mYaOYEtTSuMlCXn92g7cLqTZV9K0qnqU4LH6ORGO/sJKCGDfGmixJ5ew3v
	 x51oNDDd2pME0yKQNQyTXOlisFQxmdnoc6dVD+52as1rJYd/viVNKkL+DZl8pM5VTX
	 puvzQrtoC3mx/+5+CSkpipzc7TDq8cU3hOCLX4qteTA3ywG0gtPnmgWLtVQ6SPR3NP
	 3jyc4cXFilhiKE0v/qEgW1uuYH4AGqg0ep7pG17r563KU4B357+TDzFcTFn1sWC1wt
	 N56WOOEa+e5fnWjdZsZbf9SS/pdiNRnjE53WPAXFEJ9u2XH9RBRspWOCYjR6IAec57
	 dwtxbRvWbKaDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F4AC61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178792383371.2010.8729977604651468231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5eadaf50944dc8acbd56cd70f2b12f3acadf56ab04fc66835cf98005bc1cc52
Date: Fri, 28 Aug 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787923833
