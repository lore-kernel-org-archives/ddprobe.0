Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE6221FF39
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752097194; cv=none; b=O59J/BCxI0H0srvgPI7OpXmN6Ud4IyEywSZzj/grLGY8J+HseTxZmgUXLYv38zdzzkDjyolz1NFvqHFMg6+Kjkqtogg0PqMr+cJUNQahUahfL+1J4DTNOcDZMIQudOHg1lMER1kXD20hWtmPv+K9aLXZpuCEAcexhbrxWO4nDo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752097194; c=relaxed/simple;
	bh=uIYzPRimvrx///MzD+YimmYIf3aAvWPU7KhmlFejuPQ=;
	h=To:Subject:From:Message-Id:Date; b=kAtRPtKmpEZdKVHtNnE7EjC39QR7meY0GVSiWV8lFrP/vXyreomOfSnIdGzNYJmmg4aqUR7bgWVEoq94YjWNl9b18UTgdkC9hsPHzgGVHwdvrRGod70+oYZTMCRuQZBdRpcH0YDDPyc25urQOenrbo0+8rCTqHK0J86vwjSWwGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T82lOz+1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T82lOz+1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2698C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752097193;
	bh=uIYzPRimvrx///MzD+YimmYIf3aAvWPU7KhmlFejuPQ=;
	h=To:Subject:From:Date:From;
	b=T82lOz+1TY7zpClyNUpLxZ9Ngvv8QejqYULXCzOVcrI2j6F7Ah3LvomvnGMVJpSYS
	 fwLXif2DvMdgsaIC1ojRb/zj7GEi6WgQd+GmA/MnmfX/c9dG2ctBEs8O9bP3ohGmVd
	 pIGjHLsYdDifOtE+KoAg5LLPxTXVN8KoL/a0L6Zp+vglkXa0LhTQTVw3gz4aQJnTu2
	 GHSXBOox7mX7ZZ1mBp3N/INn3pqHG6szDBrqbYMSl7ZI+OH5nagVhpILbMWS1MTel4
	 5XpJBxlHLSLpUd9KFVUURfQuj+ro1DZcbnOQhtJVQYgbEKGjwrGyDOQlQ7w71ue+nn
	 2xOxOKxU4EF3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94287C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175209719359.31744.4879883134375124054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8f6e64e08ea04493e85891d0999448bd77f4a96a39b2f1d9c7d78f640dcdfdf
Date: Wed, 09 Jul 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752097193
