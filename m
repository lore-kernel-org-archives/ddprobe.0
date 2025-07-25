Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E65A291C0B
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753428594; cv=none; b=l8FWvapVrhgLVzYXeEGXK/EBRtCaUdIsju2ablFJi54SOTwcwP69uyKkBW8eKlEyHf5aAQvm4CmR9CrxXEDnJTuw/XDqE1HdmxiNlmTMMBRcvQPPZrfAwyukScogWO1bAgsn6xrrSNeKv5OKiUgbnxUtbX1Q69oxFVxOEeYAHvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753428594; c=relaxed/simple;
	bh=VSBhfLJYX8nT0XLqX4vHJ80ERA9NL5OXsm1B1xSILf4=;
	h=To:Subject:From:Message-Id:Date; b=gG+HmJJvnGMa3OUUfpOfoPATY4OscObxc18e8jYBLGxpe+nIGuMVxTjKG3yAj1J7PFqaaFimqLgx8+ePOaQ0s0Ej8KhrQdLCwVzqHu2dRb2hF8PmS2MTctWI6d8OgJSJW5diudCbjomIBZBIo7t6DR4B7TXqpzqgrdMHtNSC/RI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pB/HRvVs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pB/HRvVs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0697C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753428593;
	bh=VSBhfLJYX8nT0XLqX4vHJ80ERA9NL5OXsm1B1xSILf4=;
	h=To:Subject:From:Date:From;
	b=pB/HRvVs3yrlMqhy+HZmu1tD/Tv/NauVsGggW33c9yMFdZPvQs+qfq/R5zzekTx8/
	 KEL9YlC351jTRLF4/0QTUcQTEyy0PYwKAaj9iWKll6Tb+eMLl2WX8jX+brBL2jdPnW
	 DFs47mgjDNXJGhavMRyIqvFVk1jf2rMAZIshMqalfWTP0Nm+h53d8i3KLAQODuvKwd
	 qy4hcWTDDYMFEKTEkkxwzJ7C+8VxwAbFpndCMhNGML5OtoNaC2fFYG6WXvSBHOFRtO
	 npK8Hl6RwR4J8Dms7PTnZhQht8PKZcD7kWGscv0ygYz8tbk6O27+St4aLLOpNc1PEr
	 lDkSEAG1aJ6vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901E5C83F26
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175342859358.28805.123606894156893688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8359d3c529457108a529c75e3d09fdc3051a455219b51e0d05c04ed684928897
Date: Fri, 25 Jul 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753428593
