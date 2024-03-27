Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02BF312F5A2
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711559897; cv=none; b=MDDRZYd4L5+YNWtBGE2vCLzWbwowD0CDIMM1e8MCUfjwZ9pK3W5G9qVy6t38isoymw9JRKjJDom22T4NbN787WHy6jz9z0XXsnaeKUrTQq/yPbPbIO9nfnIKon7I1PfnO9RIik+zAEkdySVBJqST1s8uy+kzBoyJ3cn1FOKgas0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711559897; c=relaxed/simple;
	bh=3mgHMsHlHcqOBSAh3bFy67ncdvpuLqg8wpn0FQbQVNM=;
	h=To:Subject:From:Message-Id:Date; b=U/FDsi8T2Pb8BV72UFWeZF7p0gEBMwcO641Wk/3NHfg2C5aJkOpB3/y+vlgiPtwjAhMUzQl3EbXj7tWv5I0N6TwTSQNRPXIU5n0kFEfax7echV03mf+OaH0gqnfP3uLWclsWmnCytW5eQ+HzrNu3vJWrhhevwnjfths8ybMYlzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Asf82v3x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Asf82v3x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77B51C433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711559896;
	bh=3mgHMsHlHcqOBSAh3bFy67ncdvpuLqg8wpn0FQbQVNM=;
	h=To:Subject:From:Date:From;
	b=Asf82v3xIQ+s2XzrmHfkXmxwqrnUyVFwxZAnfiXdkQ1aOOdx6+nYj7UuaS1lKC3Bo
	 T82xGeoXmiDIRDS0mgHck+fZAJkJBhe/wToFp5V9y1EUi466dXIaT6RPuqtf/7UiQc
	 +4Whz32diffvbYB8uoKIF2g4nPXbIEbWvzR5dAO5CdU0bwAtSoBoh3BhMssy/kKPpD
	 UoJHwAC9bcZ4FuffN13uttMUpCVREU8OjAN8S+s+BhWNaK48sjP8yyjIuc9/cK3lBE
	 qJsmdgcwoWlYQ7VUPoA8S0qVSlMPzoXDryfFFhhgOUZicMmeqY+jxT3qwMDunMjapO
	 x8CVJ5pQQWVAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 665CDC54E67
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171155989639.12281.7518914282902628167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e80a52f6794b4f14055a6b4030fdab4da9b50271c0581f36e4ecf0464df65df
Date: Wed, 27 Mar 2024 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711559896
