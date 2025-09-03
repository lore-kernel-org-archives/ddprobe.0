Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A812E8E12
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756931994; cv=none; b=pUUpqkUh1DPJZEA9xMwStWBzRM5UBINPeaxPDQ3cnI2QTrC7mfilcqjlv058JYdoITIRJdOYGmKyjAy7krjMjg75roVnbtf2B7KSeEla6OVI3cBo3dekf/KEupxESsTfL7pux8Pyn3O4xDE7dH1GbhKr0pNZJGGkD3eNilHN9uY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756931994; c=relaxed/simple;
	bh=di1jewX6zO4mcmAbL5HQvEUlqENI1nTJUcutum0LkBk=;
	h=To:Subject:From:Message-Id:Date; b=V0+yNGBYu08T/JPEIyvi49FJqqmVnCA5wSl6b1TKTgtLkRpg7FiZD4PRWIZJ6bPo3yuylVAZ+zni+s2nAAkdZSM9NwMXfIOUSXz45HViO6TLOBTjaDxWO9m+mAu+yLD4pghyuch1ihX8kdp9aoqIS4Vc7ark4cUFtROBqUPtm8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HpfUWAVn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HpfUWAVn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C34C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756931993;
	bh=di1jewX6zO4mcmAbL5HQvEUlqENI1nTJUcutum0LkBk=;
	h=To:Subject:From:Date:From;
	b=HpfUWAVnSvy08I6IwaZo8IuGPHT5AWOD8eozbibo3cPvYdK1WqBRdw5FQ6Np/uxDp
	 119on9uwx9HUFimAwcZhTiOEtPi/SJ+BsmpL/zMHFqKQZGOgyyZZ6mDk3xTsU9b2vw
	 HCBgUfhvtNdYvlQuAy+4XWpH2eAZ7RHqerP/9U4qWL7Cx9vDKSSnon/aL2XNXsC9W+
	 xg2lLArBFZbj/csruTx10SXlURw5P6UuHGVsfOHPukbgr/uk0RYuJWLuo+t2wGKmqz
	 fRDlXrUsQu97j2OsXETzWNsCW87O+ouoxHRu4wWdeSq6oGwcwA7zL0Ty4pL/6u2lum
	 DZ8mhgeZ6rtrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F976CA1012
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175693199357.27117.2681591290950539558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 368b004e17dce3615d713f4e8d2c0720b15e0bb4c2d8b2fb6b15af3a5c0f4e1a
Date: Wed, 03 Sep 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756931993
