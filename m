Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1578F2D2496
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774199094; cv=none; b=X7WRgEjPHnHkoOSOCffdgcyQZM28S8fTgla28NGXVBc193TSgKJ+cEprMzmWSTLthi761f1/nvfvkp6oTdJG80ts4QcxXTv5mU8MHJOkSlUnQdMr1TRfOTBX2DgnC/dFCy7K4tsyzOrtqUIIKmUNPn67VaE/JR+SiMu1sF95TGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774199094; c=relaxed/simple;
	bh=2eIxTccga1dpFH277wWMsb+df6CxMDbduPFAEO0U1KA=;
	h=To:Subject:From:Message-Id:Date; b=WzVPFqSOPlMteUMzWF8iUdS9rZRQ1dop2JCJ5Ww0qDjHs+/BZOOZqt18z6hEDLfhguruwHhCe0K6SimQWgeMtXdZfEQIcoYBSkbY0hQpca+sHCc4vvRgK1eWSlx22pmspODNvmaLFFOWKm0n8rKsDEzUR7ll9osUgsp6ojHahoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tEYmy7ux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tEYmy7ux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52D5C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774199093;
	bh=2eIxTccga1dpFH277wWMsb+df6CxMDbduPFAEO0U1KA=;
	h=To:Subject:From:Date:From;
	b=tEYmy7uxGrfR5OSJgGuCEN9Nrae0zepTmpZTilHqPJsMz89oulDlgLXvzJrnO2SHr
	 abUigOnVOXQz9bJEhPQSxCFaAJh/tP77/RxwnviY29rhwfC0meD8O1jZnJD3uWjp6q
	 u9Oc8Kqtmkxl2b2oTZcsRho45eS3C9/1xj+tZRuAmSFcacowFmgM61Miv1l384iZ3W
	 QhC2D5i4lCVG/m9Xuu4fVwsZUtupn2/N7f75rQPbjzhttPLm5rGQo87qMDcBQZRSuc
	 fmoSUKZwV7OeJlVPBmUFDIulcx+ZusISkC2K2VIPo0SHvLlmpH3S3hLgvQU1Z9Iyps
	 1sP0XOBW4C5UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93985FC72C4
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177419909358.7144.186712962550150897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b8dc511c7e739e3a42d577f6d06e56ba5f9882b303a2f4b848e00ba864d8b8d
Date: Sun, 22 Mar 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774199093
