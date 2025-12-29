Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1689C22CBD9
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767024834; cv=none; b=OX7mJcJ3ES06Mu3eZ8gCn9vW6QpG7sqZwiqyQNSHxP/4XEmWvJHGvAGNwlvCg7VLRGFEzBBNW13IzV87ZDl0i1z170pTMeLLSIgqgb6q+V6X4qPW13zHBX1104nc2kSpiLjQ7HVSF6KN9kedLFpvuHqxt5gGjK0J+LpnleEjACY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767024834; c=relaxed/simple;
	bh=XM/qC33SRpskM4VrxwHDjE/dG6pbUfagO59N6qJef2g=;
	h=To:Subject:From:Message-Id:Date; b=QEZXbEHU9N5+sxk5T40igKUCcgeebu/XaYgjIAz+z0puKGGVfeAL58Ia5LiFBxC9YDeRxB4FEMDF85vNYf30qATajSYCseQLUtT26TgW2JnN2k4TfPsDutRcgfZuqCXsOVMiBlLrQAsDCiJpAxStPjUMFdxpcS1Gmyay06mjA+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYjgi603; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cYjgi603"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55DBC116C6
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767024833;
	bh=XM/qC33SRpskM4VrxwHDjE/dG6pbUfagO59N6qJef2g=;
	h=To:Subject:From:Date:From;
	b=cYjgi6038qrUBkZU9qAfsZy6cVZRx/ZUJ7s0UOTk03gR0k4tgviL+lU7rQUYC7uWe
	 zcAz8M4sTAzy7GDedaQSk37xxgm8YAQn0wvJKW7VL5v/ggJ5YoQdrv74k8JRGQkbcP
	 I2jpKkUaDB+KmJGFIKR2obFhTsdx1bYHihAlRHsMoiw4fizomdQ7vZDX6bhOFK0kAx
	 RNl6uYNcl0QSwxZCbRvGZnZkfLO/Z+SMkbfqHI8nDeBV+6PE8GTBEh3GdGTMv12Zp8
	 PluY/CR1R3rli/4ag/uHeRzx1Lx2MAPioJYG8H2hv8e+z1scvPi2SCZFvj/3t/4hsT
	 eDP9iYnl6Pykw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947F1E9273E
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176702483359.17812.1592897273186488889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f36d81616e410c8712a515a9b0045f9808517490eb6696ed31d36ef0edf66da
Date: Mon, 29 Dec 2025 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767024833
