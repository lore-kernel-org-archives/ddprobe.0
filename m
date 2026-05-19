Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2D04199EAD
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 00:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779150033; cv=none; b=j9I5v0omOOxF+dKVk1jxgkH20JihUCfpdwcQF8NRORNe9splrXl5tzHG2nt4qJFnsx4kc3D7kIlhOTdbxP8g+TGXtdRHjmnuBhKI+Vu2dp3SPPnc7DtkSRcq1/jYKDHxlz9eU+hd8dAwK+3hdFJLecCXTB+RlGQQ3vk5Hx219UE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779150033; c=relaxed/simple;
	bh=Ps9NBJoocVLA7k+vFokX7b56bTftBPw69DOyqPKCvHs=;
	h=To:Subject:From:Message-Id:Date; b=GXydHMzFxqy0m13vGgGRXMN5gqCsGbY6WjcpmVmfRvLBf2FHCTdo46r8ExTCr14lmqrpeMEmJXjgIsF+bMXdjAjf+LKabKhOgUl5B7lbOTVpP4AD4vpDsZOQGvGj14F9r/hmwER74Dk+jBt7/ZHVLcSxDTYJXswg5dfO4JdDi20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qalHpURQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qalHpURQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5CD1C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779150033;
	bh=Ps9NBJoocVLA7k+vFokX7b56bTftBPw69DOyqPKCvHs=;
	h=To:Subject:From:Date:From;
	b=qalHpURQUoGF/B+xjImgmNIYcACXlud5FBK5Bm6ieCrW2YFuvIcEHT6Btl4rFCC1N
	 Js0ChjDlqHaThqf6kHpU3sN8naMMMI8VHQvDKCsAYEv4LH9PlVMMdt84Y8ZRCiYs9a
	 WPzva2J4TqnklzETx9Y3QhtxhxMnFWfF4eIIwgiBUzi0ug0L5UfzObRywCzDqOGnQy
	 ZWenh2dstrvxNXgzNA6sTroVfCAtwBoJvzR65ycYFBnzUveJzyScGxMwXw0mvdq8mB
	 79VKf7ULTlj2Iq7+nQjnL/VhDyK06NHxI+W47VQaZaUZOjgwwG1CeSFdcUWGx2m1in
	 BHgGAvnhlkN0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8F4CD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177915003370.12199.633303043374042152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31a27e53111bd17fdc81276e1e714f32cac1651365f9de4bbf6fc1da76881f21
Date: Tue, 19 May 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779150033
