Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADEC15E97
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726866354; cv=none; b=SEfhStwpojxgPKDvbQXypONmdP4/XzKs56+wT5B+w58yiyLyZ3dw3DMpZ18wFSFxAUAo4QRgddJrhSHfeB8vijCY4r7nuZs9ccp/slJqIYTwcm3Xstbb5aOeu02alLbYX+dbCzLA79E9BbAz77VV8xBzjDq4o4k8pPm5l1IgFpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726866354; c=relaxed/simple;
	bh=vazkdw49DNHb6RXguwkME/Kk6Ht//Uuy91yxfZfjlS8=;
	h=To:Subject:From:Message-Id:Date; b=GIyxD91XncZafQRDnPIK9uWI4ygspa2FK5FmgutavYad4cq6YRZsTje8WpruN06MMD3L6efQsBo4LClnlk6m89eonMUzVvEaJmPE3lweBS5ZBdXj1V0wYw5aAPaSZ3So1N0+RYnIwm3EYyRsTAXzBmKp5SMojUKBCfEJ82IJ4uY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ROFKd0mY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ROFKd0mY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B09C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726866353;
	bh=vazkdw49DNHb6RXguwkME/Kk6Ht//Uuy91yxfZfjlS8=;
	h=To:Subject:From:Date:From;
	b=ROFKd0mYC2CvcwLv1MADM0v7BHRPjsgY3UtBn6IajsGr5XJ+vn6Vj9EE+frW7gmUh
	 gKglqR8y9I0lt6BW54GKbEaFo/AI3FF2rLHWZ4cJ8YOG3nZlc2nGxXfMRfa0qs2Wtv
	 TM7k+JZyR+V8rkBhhPVebrIMEVNSGb44XUR4hA7LHRco/qHzTQ2e9JpKAZwT8t/fDV
	 Q46S29wOrkbgUZAsHPYD1CygSe0cCWCXqMv1mn5JiYzu6GRXx7VUjF7hJerc8A0ePZ
	 /UUP+OIr4ob/ldf5TNJ1bYjYoAackVjtb3VlwEAlwY1qJOhVmN0wxPLxnDJegsPQ0x
	 qY8rNpWqQwV3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959D3CF9C68
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172686635360.3713.2037657691820067822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2b56b58e0909234a18367fdd806e98cbf85378cf500db9bdf7f72f73946e3ed
Date: Fri, 20 Sep 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726866353
