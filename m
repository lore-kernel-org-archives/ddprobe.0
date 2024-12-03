Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BBD17555
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733194554; cv=none; b=TIgj5lV3XJeKWkkomsnu6u8oo0ZAWmOLBU6GHeKW4i+ZvSBb8i4ThD9dZ0rINyUaDUpGcBw7HmKxcbCD5g+oCztXhyVGhotwTQimxop973uUe8PzWQEsxYQzU2pni+NmO6gfXchXlu+ST3pCQl7F8+7W/fiVxbrE8wgvTrJI4XQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733194554; c=relaxed/simple;
	bh=/01mKUYctOml0xB57fePhlRJR1DowO9uf78Fv9Uf/2I=;
	h=To:Subject:From:Message-Id:Date; b=V3pC+J55htyilddyI0TXwZMWzIKSyNV9/b5KhK9C7uTsdmYtczTNkHI8KRMDaMuHyaAwQtq1EjNZHiZ5yJdKXhiXZOIMQyqgWrydrEX1NeRVwrSOqd+wyu8exERLlU4LVHg6tcL7S8Ea/67KdIY41xKZnMUcvWiFMQBcdMXbdfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HL7ymu1U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HL7ymu1U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E43C4CED1
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733194553;
	bh=/01mKUYctOml0xB57fePhlRJR1DowO9uf78Fv9Uf/2I=;
	h=To:Subject:From:Date:From;
	b=HL7ymu1UTGDwoHHvY34jEoLOzm+b026gthddXKUmg/x30/LehY5/2FuhpHaUXiC45
	 gFGsKwvvP48Nr1qpYUVypDt0uralEH38VYTHPBiqSFZWLMKjcpwfcOZc5IoOSphqlF
	 +2kFHd9B2EJMKrahCB6/uWzf7PKqzvViweBbJIdntJfQsQm9tLArhcOPuTNEGWGRAX
	 9cqjQ9+dQ1zU5hWCci5lUbRG0D14e7nxVuAlHrYs/OBg77mqOsd4lN3vRkB+y+MtXi
	 liig5ve3mjdksl1jWqWSnk+2qXV3htCzur5qOHnzXRMtkvExOUUatJjZX3Jjz6Rhii
	 eCF1wxzE6Ytmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979A1E6C5F1
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173319455361.1550.8490288844106988851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d631f761789978a22780de23e3f3954f4310ca4b868b08c7e6112ea6d3e2bf8
Date: Tue, 03 Dec 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733194553
