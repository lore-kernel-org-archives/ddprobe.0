Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115C717BCA
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772516094; cv=none; b=mBP3hGIyCN5Q+KkMkOh5iP8AdYUSmXbz73S+p99ga7vB+PNhxMvIPkZWKeaK9sJMr/vCM5cpBZdQjxTapBSgDgr3X/jSKuWnuq1gNLPS2IVxBJeTZwauLGwzJpi2WSPHQSKra9cofkVbKiY5xzmhQTE3Cxp0fpCQSfojtv4+Yuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772516094; c=relaxed/simple;
	bh=aA/0qkY9Yr/DWUy222+sMPSDJ9tbqOQ0v7Pe+W5yxhM=;
	h=To:Subject:From:Message-Id:Date; b=swMeBLYIr2NF4woGo24fw2U2YUycu7G2bI7iq9U7R+qmZTDyR+/IlodCHfnjOPI9lJ9eZw4lYC9oGeSYrQGGP8sRIVISC45aAa/GbZ6Xr7l99+ntB9jiRy5hgbje9oKpxUnwH7u7Ihlv9nNeIXSIgrhQPOedse5SU5Udy6nIgCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RR6pSkFp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RR6pSkFp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9646C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772516093;
	bh=aA/0qkY9Yr/DWUy222+sMPSDJ9tbqOQ0v7Pe+W5yxhM=;
	h=To:Subject:From:Date:From;
	b=RR6pSkFpTD/Y9IUMc/3EEvuFcAfsA9luUoq0vAzmSFiu6gIVsIDIgn5X+bOVi3SLV
	 RZU27wWhx0xBv3PP4uLOQPMiZwMf+6sgx8truOzw4r4b2J5a9VfRuqTJ/VAXxu6LbQ
	 0hJZph+XU49wVujfwN5pi3CUG0g781A1Kgc384O/w62L2rOwXMWMHqwdaUGqO5p+zv
	 eDIOffSpn4X0EEZkVsA1sU8C5MRdt/yewdOlzr4JF4Vo7dCi9wgKzX8zY9piwNAZ4a
	 Pvo9cS2hEBPztaS96ttb/2avLNtE6IJ7IlJUKJgB+hEImMZEfiUaRZgIanz5JcowZ8
	 Y7rx1xGYzm6Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D97E67A69
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177251609360.12577.5886139682364119287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f368f4cc59b0c334030584506d93d35ca6fe625b83ca1325f6c13a7cf267226
Date: Tue, 03 Mar 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772516093
