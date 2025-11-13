Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118FB217F35
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762998594; cv=none; b=aiUS+bZHlhcpEnLNXTfuEqOCZSy3hk7L7RdLU+dKm0qg5zkgxchzFSaTffmZeGq8vvY7KJ8JEf6Wg0CA2WBpbNsJ/97h32BGFhpVUtxTtYFCZUo1I/0lEzrq0gCDset969m7AGPblVxBIvjMnFxzquVnyFjLMKRmFQMD+iDD9e8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762998594; c=relaxed/simple;
	bh=RSQ86QozvwS0g6PZemQ/W41rk7rHvmHDDi3b3BHIVVI=;
	h=To:Subject:From:Message-Id:Date; b=CvNpb46WeO+eQYc3JJgKMIWhUR+nKbXrf7YCVeVr4doNlvBYew2I1sAEe2soRD/noNuWxicLHFwjneigfxkvqcDB3wmFB1+0Mq103XTIeVE90OEZ15oPDdPyIy31pCrs6qzgHs/eFtzkEqQrA3jemfB3G4F+tSnhurGh4GFyNnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVbb6QvM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVbb6QvM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D22C113D0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762998593;
	bh=RSQ86QozvwS0g6PZemQ/W41rk7rHvmHDDi3b3BHIVVI=;
	h=To:Subject:From:Date:From;
	b=QVbb6QvMykMr8t9g+gyy4Dou8YcsKwg77qj7PDM4pXkFhGRGIobdJ/h+4NwsPTF4g
	 R8wYE9Gu7vB/VJP8eK7Iiv//BiKpXHihqZmFGDdswAD7U/1I3cTrWTKAD/uGnYQdvq
	 QijsDk+2jTsgYQwCA7ydsxZf+EwtcZtIdwm1X1wwv0euVKokPPLq/SbMeOqZ8DgF0i
	 mUmAbBFRLofuQAFLOf6FKFgmEzIZfv6mHX5ttCHq2ndNVrtooKYU4K0Luf4PgjWTFS
	 Y3XT4sGGeHHeUmBw55qpApxuNP8G0jHia8P0zKNIy+wUXZ+a6fpQIyWqGZ7lM+rP5/
	 8wnx74vy1o9bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9677FCD4F37
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176299859360.8431.9711813640863606181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a00f08ca0786e8b5241606cb7cead1d6f8db26fc90a2c9b4896584e4b6a70f9
Date: Thu, 13 Nov 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762998593
