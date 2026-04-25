Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255F723C503
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 21:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777153654; cv=none; b=rfrDBp/YvSfLEVBwkPlsta6okbFvq+3gwir/bMdHBuiSUUEjqdcnnD0gwkdVe9dc8OfIxwzKCNe39hLKKp2ICimsEvupSrCydNTTqsyBKWz6jeDCS2qkBsBufTVJgkcXxxbJRN9fyErArImLRd873kgKQzaVmljLkeJiSG1A/kA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777153654; c=relaxed/simple;
	bh=zHPR0GEZeu+RFQklo+2DlUo+IRtV6iIuGJ/P3smF5/8=;
	h=To:Subject:From:Message-Id:Date; b=nn+XA5oyGy77qKdpSNnd/GhyPlJTlmVn/4btD9X0Z9Y0zwTapViFWea4CTTW5GyWuj13K8UDxAAeFA7CjWdorGHS47Svsm3fr4UQggstz3rLJBStR9NxoJbPs4FEatYUiu5ukAYEYbzYUomMrLaL9XyfW6ukFKaB9W8lr4D0sA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kDNkMMEK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDNkMMEK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA8ABC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 21:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777153653;
	bh=zHPR0GEZeu+RFQklo+2DlUo+IRtV6iIuGJ/P3smF5/8=;
	h=To:Subject:From:Date:From;
	b=kDNkMMEKQBr6UWMbnOcgx3H1tCuUY/ovd770AQD+NM4OWmhuifCGe+Qdi5U6F2AAF
	 kYUgAcOO9NMyaZdBUF00WImOJOPoSHoXo1gp9XRKDCfVov11neJyA3wT1QHUDkqmFt
	 mnf9IFOu20O9OsK7J7I23td8ydRNyRqmawyR7B3mzmSNC5aJ8YP5ph79nGB/flUrGi
	 AkpCMahllsjLB//dJ5putwtp7aLbUsWq/Rx/DbofNgbcth1nNp/4ePnIB79p45A1UK
	 kY1GtThZt4zLtEkueLj2So2JMKqWf5xKZ7KmklmRRJP/gpXXXRVQuDcZSIUHw+pY4U
	 it46zmOVcXtLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A27FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 21:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177715365368.30061.7690937834541418652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c353983fc6efa735dea300ec777312539c4f1cfd657a66ba9c9fb7a8e2a22f3
Date: Sat, 25 Apr 2026 21:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777153653
