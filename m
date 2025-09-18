Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293251B424F
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758222594; cv=none; b=s/Tr0tAqRtVWA0Xi7O+Dzyxps9VEWBKGYu5ED65z8N277kmr5DRSSi/aamVppNg2h383JgJvWbTqQMkaUMKkN2SMGh3xZgvYsockd9OQJTvPkPWMx0IaVectIfZ2r9l3kD7TncPMfaZxi8CFBe6Adbyu0UOt3TaYgMMYfb8Iopk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758222594; c=relaxed/simple;
	bh=i0JSCI577KmJcWBXYMj3YEuEnRLB3j3kfC218zWCblk=;
	h=To:Subject:From:Message-Id:Date; b=lcF2goa0nO2yNTOT00P9ahUPJDIDHBvEAZycnS6qqGVUauBPZz69axPkGCsFwWdExGze0EoU/ZqCrUSJ8KHzsa2JFGTfAtqirJ7aESPlKB/OaFeseuETu0/qpyeOlciQO7QxsnmeiTB5USIB7zTFZfEjFWBNO+muKVPlmqdV6k0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/avXWRy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/avXWRy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2444C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758222593;
	bh=i0JSCI577KmJcWBXYMj3YEuEnRLB3j3kfC218zWCblk=;
	h=To:Subject:From:Date:From;
	b=T/avXWRyoiy4AchGAFjgcakIArYoidZWFoGxGqaR8efYFkedl4BDJdHIeLIthUlxO
	 sxP1Bm+LQqBkwrxQs2vVYLkmJKm/BInp+Lqi+sC90tpuGuE2J3tpSYU9V9u9Ev/Je5
	 NZQmHCkHnqLgUXdJFFzIh1yl9TtwIljc0oj/AVfyiSjviRLJ2x78X1JedeQkzgYzP2
	 bVMU/6/bgOlM2Pi3M+n5XS6US7SK8YMY7EGKLEccYB+Lw1DNOhUaqLtBCa82VSNMof
	 XS57UwUZy35qSQzZeGWJXQHfsUfyeqg8ccjojLqLETvLeZ5wbK4EAn0QSx6YVMpcUF
	 HRAOm5KTWkTqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FB7CA1013
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175822259358.8720.11487308640215001677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 530a9b8c78a71457b4763fad924b0be4e069a3796b5de1ee9eaca15459835f95
Date: Thu, 18 Sep 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758222593
