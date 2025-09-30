Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F0A239E76
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759240794; cv=none; b=LjllAKZRxF9ygJhI/hpWynZxWRmcOxOSwwnjBHPxh6rGLV+tZOpRfFDZ6T0tC/ML2ZJ9PMSSJDXdLbdcxQ6oIvtBLk6EzpLMWOjrKUzKMGd52ASNzkXkXPGl8+d5K48NAQ3akSBdKEunxhgiSNG/rf/Klo9eVUZz9qGDiMxfwYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759240794; c=relaxed/simple;
	bh=yNGl5MDUr8ZaCJ7K0BmRUT+fEchZKY/dsD0uyLMefjo=;
	h=To:Subject:From:Message-Id:Date; b=Ka/DLWxIm4NHfbu2DWxTk2Kfncc75sJ35XjF+ymjKwq+oTHRlIPZzBbM8Qmog8useEFPNuWrX80o5eNZL1yHVh1jjEEoCLY9lfEgFHKcedzF0rixnFyxMGERRHOciYLARlIY05OW/zIV3JxeLy6QTxugLIu+vETXQVijE9d+gRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DC1zKO6T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DC1zKO6T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA736C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759240793;
	bh=yNGl5MDUr8ZaCJ7K0BmRUT+fEchZKY/dsD0uyLMefjo=;
	h=To:Subject:From:Date:From;
	b=DC1zKO6TG5RjF3i6RbU/dyrED8ZaqvI4wkG1yzNacFChJ//DY9cnz2Hd29PI214gs
	 Yml52Qu4hfeJbVls+ovLbEHcde6lc7ZgzU4AvBJmQ4LQJX72jAuQkOcJhed3wVIATV
	 A+cYAv48jtd5S3/FEQ/IQ3HMLvcNdzU/eWL1dSwIGhGUjRfR8s0uSvXz+lovKQOFht
	 nLRD94hGPfyD5LbNHjMD33R9KHQeYuvgqtzXtYgHQ0+PoWtO+J8PmFI1dafF3jY+BQ
	 YZu947GWE8d4v9BAs4Ho7agrs4oP9qN565FIHwZSxwjFVmKyJOPkmajhEu7M3qGGN6
	 1iSgL9y4Yh09A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CBCCCA468
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175924079360.1214.13796368616890905188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97cbb4fdfa36b70a66a94372ea7dfc8a4a1e8057aa95958be693249d9cc87236
Date: Tue, 30 Sep 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759240793
