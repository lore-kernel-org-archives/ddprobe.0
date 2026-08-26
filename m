Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61CB326ED3D
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787728234; cv=none; b=hgnynSUuA2eAJ37V9lZwNRLReHoAvUNJMWRY1HHf4ze8zv1XK6Z2wYpMts2/kjQMHvQN8B0WfseTrgO80T66bMNVmbBoX8DxsD/jFaOpnrSZVDzHW+HjOxDahBBkIo+kXFKPXc1AqdLj/TKU1z3XymnNOtATXlXT6BSWcbmHpZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787728234; c=relaxed/simple;
	bh=6YqGBT9GJC3/adCRAiW0+lSPVUwebz22qcAy728EQpA=;
	h=To:Subject:From:Message-Id:Date; b=fhAfRTWm+BF/AgEBBdRJtDOH9jkQHiQAwt0ePZa9EUQE41bzU/EZnLqZ4rHx6cnJ5GXyupIYtgvLaMUSDBm2g+f73a3UzrHmkKQJxY67Pqm1fHhW6rJSOI73v44OMh4oVNGijEndY5GJAGIxBqGcDYp6rEU/VdwsOMUwi2ds0m4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BpmjJemy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BpmjJemy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61DAC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787728233;
	bh=6YqGBT9GJC3/adCRAiW0+lSPVUwebz22qcAy728EQpA=;
	h=To:Subject:From:Date:From;
	b=BpmjJemyS1XRo1ISB0QGzKoVj3t6lDVUl26KQ0XCqZU6xjVKWMTeayhFhYp67nU8V
	 eSah7RQACWXxxc3egRsj+6DOFwz3ogwk3eHWJCGNZqcYwYORc1AB4jGXt9mZi1/jVW
	 VbiFOdcKMp/w+OdjoLiE3R6Y3jPoWnLKymoTCB+t8AglBdGDyMZK0XsPqNuvO4/5lF
	 ICFN291DmctVkEXa3uLKlwP/hgZvfrwQaOl7g46X3ez2EBwdy9es5HEuxpHo5dYzOb
	 JEQaIxmCdtou05IcM4WvF7KNXieZRiPMPatS1LI1G2t+fZwqDkU5NCYZcBA2kO3jOX
	 sijrnkSB1q4fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF1AC61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178772823369.8580.7350114361278791889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9b20659206c14bf3483a3e3db887f70ac277c394d7b1b9c27fbf99ffea0004b
Date: Wed, 26 Aug 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787728233
