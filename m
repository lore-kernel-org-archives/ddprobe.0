Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED6332AADE
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 11:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776425854; cv=none; b=C6FM+IeBU4Hy3NNMdrQPRuOzan8vGB+ijAflXi+16tMwBQoczbGT2C4DIu3gRqelA47SBy2shfbdLvEvmRBSq6d++eJ1hEYMgNFCNOtLYb4/Weh1LSqUr2TR0NW7mP8FYe50wmhWz+ovhipxs4vluLWDHRSI24sz1XJTOP8bKLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776425854; c=relaxed/simple;
	bh=0dCA5bPwrVfjCPgJme1gIrEV51vwy606HDnoX5OuwcI=;
	h=To:Subject:From:Message-Id:Date; b=IJMaaeHX3CfCbYF6ZdOtceIffaxAV7zsx3JIanQe9KjYabKOdsGIrEsqp5RHEiaTveTfY/DAs3ifcjzRIEg5pxTBQZUy7k3ZPqZZwBVJeHoqvhum/4mtwMgm44r5r+7A+i1LXZ+jlSKLF6TGiipMdquafsTJ7AK/A/IoAHAQHnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5dJfSKL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5dJfSKL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE7C7C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 11:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776425853;
	bh=0dCA5bPwrVfjCPgJme1gIrEV51vwy606HDnoX5OuwcI=;
	h=To:Subject:From:Date:From;
	b=L5dJfSKL/o5isru/oQxUShdjAhsFTIe97lpiMq+YGEdLEDuKYQhcHdhNmbOTlzqUL
	 TuLzRLTnetpMkT6y60GKkY5pXIexyC1uk0Rhf4MZ6zZqTXDdLGl4Mzum6kYU2K3FKi
	 oZdqvMTyLyKB3F0Pt054d1pJQWjeuSFq2RCSUxFKMPTzJXOBRSbBzZmT+o38XLuqVK
	 UqUmLJ9gYchp75aathWi77Y0p06nZFoMBDYc045LckD2VcM2qgbn4W9SwVcVPIPPII
	 OduiVRKfo+qeTXOWGLk5X2kWlnghGfUIvlg0YqOAOvHfrKEkKC+O4oTYYDbKd4xPwT
	 SFjL5E9usWK/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC40DF4368D
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 11:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177642585368.31131.5327235269777847641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b67c65d76518b21cfdd7b2f393b9493ef5eaea621dcaee1a17cd18060065656
Date: Fri, 17 Apr 2026 11:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776425853
