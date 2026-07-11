Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1736828690
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 00:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783728514; cv=none; b=QFRpjJNWmLTJjtj10OklLXMotVRUBiBQS9jphq03OmrkUjKMMrJ1c45f146Ry8dKAsDQGmLkjxkfy6ROKPeDIesAxYz3lZVEci8AM5nLSSIHydLK9QL1A6ohcwryVTGQjKWF7O69L0EsrJYl4ia1LzLLmeIiZLE70TulStEyB/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783728514; c=relaxed/simple;
	bh=hRkaUqr6qS6rUWQvn35K2+p6emLDBh5dJKIhbpicoQI=;
	h=To:Subject:From:Message-Id:Date; b=SVBHUfH5b4WltWz3P4mWbA8OA/jpKzvtUbAiwAby5jGigBFOCmOPWZldmskULOJiOF0JvRmeDzwc1JjnZt/7/3ic40O2SwL01a5/4pj4aGTgfGY0ucEAwvv/BIJd5ot4cURhypVpO/+HrrGHO9U7Kb+ptLvvhkmD/z53Zq58ZbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxgyJM4S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxgyJM4S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC9EC2BCC6
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 00:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783728513;
	bh=hRkaUqr6qS6rUWQvn35K2+p6emLDBh5dJKIhbpicoQI=;
	h=To:Subject:From:Date:From;
	b=GxgyJM4StmtfMuwpbtShq8c+YGDgdbq00vHkFBVxl9WLyaBFAhmtv3ce3RC9cdzGE
	 z0gwAbcyqVfMsu5CSanmm/GzVz8a2zds6QADIyXBxOZRdWsosUXrPWFVpOAn2/7brc
	 DiJuvfZC0MM+sgSmbSHBiCzFNYCNxe5SWk8UwapyB4uKnPIQE6bwzWmbq8ALp612Ir
	 SejTzDn/ZsnAXnfXsD5N+cuzusii8Q7ECjK1FMSWgD12P3+VChaW4AazMIqr0/ScjH
	 Kkf4rLFIE/a2FvBUbG0wYA9k+sSn4/bBVrCyujhZWifiG6eoAsVWDqMPlWBSCp2Eoj
	 LQX1UDSuhogOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EB0C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 00:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178372851368.19563.9239174265456563533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f31b0e5c1cb614677474636939a4f6a79d1e6e58a445ea2217345b666662bdc
Date: Sat, 11 Jul 2026 00:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783728513
