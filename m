Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2422652A2
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755627594; cv=none; b=GH5OSH/PXoincaK4B4K7VvhKFrtlbY+fIj8TKrs8gW+ufcJ6/R24MqubYAGDYxKgaXkO0qS3aqJ0aIwdweu18SwY9CdVjXbl4pX3kLtsiPtkUhqmmQm7BHkeFIyBSf50HNC/mcXFvDtaH58sPOfVuExzS4XWFJoYroipokDg2ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755627594; c=relaxed/simple;
	bh=IcwD2U6Je2K2mH+XSlRPY04E92X6crV1fEF4LOJpA0Y=;
	h=To:Subject:From:Message-Id:Date; b=DftrSldC79EMLTTqw5UZyUK2JAKMVqE3QHr0ImKCDY/XTEhusWkykhpO1b6eF7882Sy4Q6rOF4eXdPDfJrOBVqqr2DUfowr4yOU6YEmBnJaABWz5Yl3m35z7BL9xuOwzbFyJCNGQQqTwZKinf5UgdWN0wqHyr9fBhq3cWAUpQMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TH6lhnc7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TH6lhnc7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FB9C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755627593;
	bh=IcwD2U6Je2K2mH+XSlRPY04E92X6crV1fEF4LOJpA0Y=;
	h=To:Subject:From:Date:From;
	b=TH6lhnc7IbszYlVLEb8APeQvjztICcNgVmlCRH3vNdhc3gjzfR1AsuLZcWVz8nzTE
	 0Ce8hBEhOlSK5puHCiXpKVXomYxTZASsV4nSlrA5xQhWHMJgpygsNBUXaZt0k6o7r9
	 oqAUF0XgqqzsgUvQkgg1Tc0dgUbSVRper2cS5QIOeTt+9s7mW9ClLPboBxpaxn69kI
	 SnAaVaVKNt1P9FZ7ny3VW7v1ZM2YH2/e7ndqswjz95tYwO/ACAUVFtQ6TgcxVHQQxz
	 ZarB+NcuwCyF9vjeAB22eTZ/jwn2Z8Vi+EymKHnGwnSjrLelXh+8lcgbLw045C1oY5
	 FMST+1/P/CFZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91592CA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175562759357.5118.8139283867784103610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd894ca9da17773161bcda1872cab6f190636e1e4cdfb88d14afbe679785d4c6
Date: Tue, 19 Aug 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755627593
