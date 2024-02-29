Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7F04AED5
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709224097; cv=none; b=aIQ1XrBLloq4WQulg11dmkLz48JCsivlgcZUwPQllf5YB3kAkbpbEjqqhH+hxjQ0KthLlsqXZD7WUXLf4cOuawLJ8NV1MGNL+wEN//ra6THov9odfnPrduwwKtPIpRXsq6VqHyFUKh7jk9AcCGbEiJ9dbiZvlaflyMVmzFpn21o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709224097; c=relaxed/simple;
	bh=Uj+vQ6K2Lg8Pdrw2yFJbF/6ScP3HQEzYriQ+07rcZIA=;
	h=To:Subject:From:Message-Id:Date; b=BE78bLG/x238xuBTnzew6W1DF+BO6ro/R6tdwqy+Fnr77kZF0z0BS9h+gggYGV4Nn2khNJd+vK94FU3k4lN6s4l5xUInsSnMdfwRo30GvCoiM8+uttWVczkiKCP4LaoxXEgqfgXis2l/WEjrpQ4gMS52P2vIZn/cT8KkzWudSNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qEEqC7Dt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qEEqC7Dt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76CA1C433C7
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709224096;
	bh=Uj+vQ6K2Lg8Pdrw2yFJbF/6ScP3HQEzYriQ+07rcZIA=;
	h=To:Subject:From:Date:From;
	b=qEEqC7DtXGETCSOECyZ8bMsvTb4ZrKoAV3+8rJC8jQR7SpECAq+ez5KED1h3M+vsK
	 HltG+uwW3nIIx4xHoBXpLu29LKuV9R/xc0HfKsqgm+E9e4HkmBx0k/+xytuI2zLxk+
	 3FuTz6UJORDvjfGakbdyTjVp/JUHBAErIHGykfEuaISiFO6AunQObPxBUXxWHjlA3k
	 3t7v0KCPYUK6y0yFjcsTF6vLQVohRPNGMCkjekC4hcV81woU8KvFcuTV80PTlhERi6
	 f4SktgEtaRGbdaUnR0VLWlubCEKjE1WTQGudCKjvIlifLWbte+AA2Uj95zILmI/ssR
	 zOu/wlIvrRlTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CFB7C54E41
	for <ddprobe@lists.linux.dev>; Thu, 29 Feb 2024 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170922409637.16161.9615098743744592011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eafb8457a0c55ec6c659e96ed1bb4deffb1d234f66ce54642d03fc35c70b067b
Date: Thu, 29 Feb 2024 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709224096
