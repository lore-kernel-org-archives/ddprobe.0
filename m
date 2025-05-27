Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339262DCBF0
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748306994; cv=none; b=JJNvLuNQHh9Sc9UNpZFnZVZvZfVlxEem+wTPltfG84eRrsrcIN69PetuEnVTMS27FcOKIuTsLUf787GkxXUy7FexwFZOfNwpVf5TL6DzxbZh9vuuesGusEFA7FwkORQQ75Qs8HsxpqhPU6YgwHW6v40XwunQluS3HuetMOEzdQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748306994; c=relaxed/simple;
	bh=oSIo/GopVCcdcA2diMsPJ614V/IiyzyaFdaJRAxc+U4=;
	h=To:Subject:From:Message-Id:Date; b=iLM2IjloD7IWq08Zc0Bolqy7hyR3XwSN959dLrBY+bdFvl5drSUjy1Sa4gjMBIVIo9rw9A8uIfV8ttFbDrER0n+WlucsIDjZzLpYutQFrn97vShWYf3KqvgihIcerOXgs89ddQcHbSE7afzzvfvKLXahHErM0MiAy3UrhLtJcwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VfHD25cN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VfHD25cN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31BEC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748306993;
	bh=oSIo/GopVCcdcA2diMsPJ614V/IiyzyaFdaJRAxc+U4=;
	h=To:Subject:From:Date:From;
	b=VfHD25cNgRC3bnUeBXY0G1AUnw8PxYYgjNhpNKlB92gAxS5EI0ZiiDZh60Mv39kHI
	 sPO7Nm1PsVXlWFmjQgiNG5FXL52kIeYNAA/pDt3yPtYS5Cw/IAB1IU6fBI6qDATzjI
	 3CPN3V/sFo24Cj9HWK/H7eVio9QUH7ZxKhYC2IrNXhkyqz1FVQE6ChMAE/gKAcQMik
	 nhEFmndzkTJ/1NQO/9qMW4Wavdzrs7ZW9ANbE7IvwxOuo8sPjZBg3wf85abMXqkW/k
	 PmjeCtmIW7CVtxw/B0swMzOQ/ZiYO075cohaOpeVJMFQ3kKTbLi5sxiVeqT/RRMYhx
	 vJ8sXbsLB6obA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E93BC54FB3
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174830699357.23239.11883484458266192967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc6a0dd84695674254b57b972419c368158950ee8a6b44592e765f7e71e187f6
Date: Tue, 27 May 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748306993
