Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570EEC2C6
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743512394; cv=none; b=aXuCpswbR9P1zRCPleTkgNtYqd31B6M4+wh7G+4hcc0PfHl/ohFN2GBjzKyDtPnTRYNrlcuXMKGxQwDuNw9PHHHD99oa3PTuMyi/vJtMFJkYviehEwN6yJJTmI0iJBZyaCYKqmg6AQ2IXz6nO0PkuZctiqEjJdVQPra4C88QeBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743512394; c=relaxed/simple;
	bh=z0hHY618ULA0LehsSpmeQ/iIf6PA52l/68jw3bD9BSY=;
	h=To:Subject:From:Message-Id:Date; b=rPmU+mI1c0LJB7LFNbjITkDE7/DTD57G9WoA2Xxr8wskhmEF0EaAshWV8wSG3HKFYprLAsi44qKiwakKY4CW5KfquJsPahAITlfBRhONttgPaPs1OcMN6yc1/Yx4geWKKaa6czORLJ6CvaAhDi+NreCJfSGr3C0ayqXBSlEBDXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FODKtgSx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FODKtgSx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3642C4CEE9
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743512393;
	bh=z0hHY618ULA0LehsSpmeQ/iIf6PA52l/68jw3bD9BSY=;
	h=To:Subject:From:Date:From;
	b=FODKtgSxts6sENuLAjLD0s9d4K/agdBnsaE9rhURIZOHhn1+wT7Lm0wX7DEgizTe/
	 Zkd4dCVuX+RibOv7iugs47Hi23yNybjEbJ8IUpCwoDeXarMve1Ar9Qp6UzUI0BXdaJ
	 yIARbOxrVOr1NjIcvNFOPmh7P3u0HnxEh8T161iEbJcJqhld9CnU2Ule+8zU6ybg3G
	 j9+J1j5Sd9qTwTYemaNTS+tEKQ3ROpU2tgB07D/oVtXh4PqpiMQqihyWYIz9PSCyqG
	 TsQTyd4ZSBSt4N+dhUVlpnVbaL7tJFl/JiOvP4QsITTbz9M9j+LmkDJ+254XhoDq+b
	 YnIhF+JLDutEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DDFC36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174351239358.11842.7732884281378763758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 727ec39d49cd426906c087bdc11b543225208ee2489827646a547af0e8d0a565
Date: Tue, 01 Apr 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743512393
