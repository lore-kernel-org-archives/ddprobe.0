Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3425E1953BB
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735254354; cv=none; b=DxXyltnnWToX0rKC+lh5QTUvDyCrmyZu/7ysty5xomnj7QGB/L4sog588QTXzMNWwrL8dcjl+sFE3OdsCmmOK0nXWWzjO32K5mhK6N4eDvndBw2YZAnSAqy8zglHXyZLezpBDHyeyW7uwZp9DPM51euqu5xhoMXkEwI2s1/9FRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735254354; c=relaxed/simple;
	bh=pwSOaZjipsiotkK4Qi3O9fuV+tT0XJcBSd3dvVvZQto=;
	h=To:Subject:From:Message-Id:Date; b=Dt6yWc7wM/COO4E+iHGVEEsxd4E0C/aHLsVowTgMUGzTpjW2hoDBKz9XuKrKynv8qQrgSmCUnq6Iryrh6MBD3iDEK5FvBIEy5sBqMDjNpWsHPMu5bjilCypnNGId2IFXbCe2f9Mzi8Ziwa+toYsHt62ovrMetv7No3pcE5IBbAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CMH++2nM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CMH++2nM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C110DC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735254353;
	bh=pwSOaZjipsiotkK4Qi3O9fuV+tT0XJcBSd3dvVvZQto=;
	h=To:Subject:From:Date:From;
	b=CMH++2nMXj3LkGr5gui7uZJUUToAxbb6aZUj8UVDcbUFVB6/aIhYEQgpGqmpIOBpj
	 5jxnxvuqAOCgHM+/zHJsOzWCtnpAiUcmPfBgpJ0tpFdA+yXSN/E4EipHXtvOnUqJNg
	 vPNIgL5lQFnvXct+HgmVyB02ezzRcUbGCCBSB4VW5W6qM6aMH5YLl4x6vjLM+EvvId
	 SKhQUAWqcAjkVwdDau+9/QAjbNslVwDjeDsEWROA1j14pff57jiIUtunR38uoaqyk6
	 pkvGiTGD1jProSI3xTKMfDSTG0E61RB4iRHGWEIpjsECqYqCBJHqafqhx7ynwM/C2z
	 RD3zTM2KF25gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C72E77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173525435360.15770.16340220237870124128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41e558ee1e9bf03ad87541c34a0a6d97fb12e975847486d99e194f51aee47265
Date: Thu, 26 Dec 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735254353
