Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D9194C66
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733034954; cv=none; b=GTIP2HT7vRnimSbb1d5yzjhYFwEl8S0ZObShtHrrIyuh+W5hcu5fHnGagQef9pY7mBi2lA2O7Rt7tfUk3zeOtWSKn4kyZIGVVa0Xoc02q3SHgQCzyx7skKMFBX1hvSgr5QQjBAdg+EK7ZXfGjDbmLEXlvPsYUHCSbi0/Z0VZND4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733034954; c=relaxed/simple;
	bh=24gWJY7HPMz2RBUDhiD75Nb80VfLSRaFTHhu7mTm35E=;
	h=To:Subject:From:Message-Id:Date; b=kr41/9ms6T5AOGsp0GYRG+4FaZrisXrWpwj5dcND8eLyZ4uZGq00Au5V7dzrgYW3/WqkgQ5lCj6eOQe6s+YdTU8+nif8FVcFJSD8tM01mmxLjrXGeQSjwmYEGV9S/sq8Z+9tor21gKxaxJe0y104vDjUVMM95fCZ+VtbOhDh1EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dmkzNMKr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dmkzNMKr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5670C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733034953;
	bh=24gWJY7HPMz2RBUDhiD75Nb80VfLSRaFTHhu7mTm35E=;
	h=To:Subject:From:Date:From;
	b=dmkzNMKrazlPTbHdIHf2pF5WQUSSD/9PKbWfjGrnHZbG27AwC+jaMiDgqNdDsU5Sd
	 igV3elikdpzSZcAemPhTvPVjYX8X3g26uTHaCSOjZqn+opg79WTCtVhfmE6AlWbXD3
	 6wI+plwBWj5vl43t9aeD2NYVNXEy+heCUkKb4kZljYzE6y/L4fyyT5k6HRtM6On51w
	 tMQulIJqTN47O8GML7j4uqspF5WoOdT+ItQlqtvI68wMwNk6jIukCpnPlB8TOLWFVI
	 4qjwHSNorVepn8nIXoDoIcgFRf+KOctGVljaObxAqbT8yORGULtH9UJ8IG3ACpOgAp
	 W72eeH4pvCifA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE01D70E0E
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173303495368.28150.11787471944498862833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86fbee6a93a2e8375363db36c93975414e8007e0dc0325336abccb0302c1e2c0
Date: Sun, 01 Dec 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733034953
