Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDB1645
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762078194; cv=none; b=r8QGVNj9Y/lFTLZgLA5laN/2kN4wbdpo8WM9Ncp+5iIQ2sbe7mlXI9pOnWYUPVkM4WhcztbadKHopB553hky8BTSuGUqum0z1xgcK9t3hqkZi0eRaCjBIX7YnQBsoFXROZ+jU0ywTQuhKJ664vkJUyFJ5CN46bH8s6cQ/iiHwsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762078194; c=relaxed/simple;
	bh=qUhXZfrFDjJStCC1VLQlCiVmH+maAHU2HfLLigBeHxU=;
	h=To:Subject:From:Message-Id:Date; b=FQU1no7GR7dSPSg1kiwGxN24Wlo0+vxsH+Z8cjBlKBzJ7tqvzIZSHAx/VL3xTc5GTOsgPjpLBGuVf+2zZpb6QutEmjEYpygoncLaNzc6mHtZpjvsYQqM9AJUTptU8Tm0eBLWU0KfIy3q1eN60JgMOFVqQqhPmV4THP/vvnS5vAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lKPxT36f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKPxT36f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B338FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762078193;
	bh=qUhXZfrFDjJStCC1VLQlCiVmH+maAHU2HfLLigBeHxU=;
	h=To:Subject:From:Date:From;
	b=lKPxT36frk38MCToFW1S8h35AamW+iQ6095PWLOLtlfr3i1WNme6Eof6FyGKE+oNY
	 SpVfRurtstNiUFruCrP75oUhj2C3NJ/3IUngg6ucYWQgX/0hXdpE3QYWjFbgYonbuJ
	 cLJA7Djs62TscFEPfCU3SGqCdnP49QK4bdtQvq22RN0VYCTIxtAjrHaETZUc5m3L/z
	 4ieWtWcFnJQs8KcHJBzhP8o6d2DWnym/logqnTfUWr1LuJNOdF9aUzHCZu6s9HCIQB
	 SY4cXK+L/Sy27FpR2CN5+Gh4fyvxga2aZ8nH+NpOt7QxnymehCch0XalJUqdxS3nOn
	 bt5HNbZZk/riA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E67FCCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176207819360.19623.12668230869759725412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3e2aa2f747d34d7abc50ae66211f75af9f9734c0c7590ea08b43e72b402c895
Date: Sun, 02 Nov 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762078193
