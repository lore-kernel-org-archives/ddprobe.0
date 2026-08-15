Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1B01B4223
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786815034; cv=none; b=SlXV80bUelZaC4HDgQlsVipIHq2UhD3xtyICZmfPe9tjL+cX7P8wuZ40Vm4opipTJIhnMSZvSItfBeqzELrGVWAZakDctLwKgopTXbZLJcfBA5C0juQn1IN4AfSv47J9i0zg0qIKB+YikGwG728rPp8u+aVrlQKtFg4HNGL1aVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786815034; c=relaxed/simple;
	bh=CwIazs62HNJt5TTIeMXcwsX6DjQlWhR4gaBg96PLwqY=;
	h=To:Subject:From:Message-Id:Date; b=KipZ++/Rg7uLox0VX6H5tBlTBOLOV3+5DHANIg5wGVoWmVfINfNh/A1wx+FIUQuwEeGOLNC30fQ+CMCOYDaTp7vIDnqdIYUov8DgJMzOu/zLQUHyNQKSJ5xnWAH7X+cb2LGd6ZkuJBlqA++KlXfyZorsLxPi8rUxYqNdBKPVjUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WMzi96NC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WMzi96NC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12F5C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786815033;
	bh=CwIazs62HNJt5TTIeMXcwsX6DjQlWhR4gaBg96PLwqY=;
	h=To:Subject:From:Date:From;
	b=WMzi96NCPOxYX968r6/d0bgYgpY+BVurw0JSD29rDMqsIRcAVWZqFMbjqSrgbgO7c
	 w7Kj6hNwNuBOjdKjTXjcl8fZVck9udsiHl05gElleqH0KWl817OIc/nz2mZecdNXwQ
	 hcca1zbA4dL5ra4MqVsmUdmpPqY3tiOMQKf12b4laGjZXbP44JwE7Jg3kRvemEINCd
	 kuMWiwwalZ17o/VYpBfMqnxrsSqRLrCkdZ03XEWafVivs/avkKfvp4trO1m55BWp2R
	 nBrOnAdMoFcHDa/s3X0iHEXJ6T4WnxriFeEXG1erdWNwx1lQXIBQHXJng+uWuYpRJp
	 gd9v6ObjTLPrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE50C5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178681503368.15194.13086082365431047099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 356673f356ecb359bc86f92b018a42366da924734aafcbd4a9186d6fa56aadd4
Date: Sat, 15 Aug 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786815033
