Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504C881AA8
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787027434; cv=none; b=nc4szBDWnkklurerUDutbM0dJthLqAfgjXvlJz/IOxOKPOScI/g7pFIyM98oymH/KXJA0Yi4xJN2sQFXJ72DnAXtF8bnEn/XWifD1OakkD3qTnzYc9ByrAYu+ijmLSvPXtrFYI7aFY15PofxIe9AuhjzwWTq0tNesNqFx6tA2Xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787027434; c=relaxed/simple;
	bh=fUbPNu3CTPbe6T30YF1FQMWIH+acHTBlBMSX1NPzZDQ=;
	h=To:Subject:From:Message-Id:Date; b=bJeazGDKManD0kUYAovW51wFirhxdIdpu1i0lJOiJqVtRj9R90pr9A04z/MmlEWO21iYVrEEBEKLv2RgM01nFzTepn4ifENVzpqwsLt/s5x0octcODwJuM0FB57+DYp9Au6C5Ol1ymwI/sZ5KjN2fknoDwOX9pA/QFk7vG8ni/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gF7c4f+7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gF7c4f+7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8814C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787027433;
	bh=fUbPNu3CTPbe6T30YF1FQMWIH+acHTBlBMSX1NPzZDQ=;
	h=To:Subject:From:Date:From;
	b=gF7c4f+7a9JIjrmpDtAyWdmPuYccv6dgIib8YCt5syTrIspgrXJeVgHlAe5YA5W4o
	 jystr6mlNqcZUDMUxALqF64KYWv5TnjkR79Q8UQGiooPlQZgcjoWRBx1Cz8oj9hYyY
	 4pW7F4UPs4OwF2C+DRdaYSZdX7WdxL4N6dPsHkj1+xTtZbizFu68PLc9Q+w2DqCUNc
	 ZapEtx2cuBqN5IoiQKz2FMiG1ch7JGKGS4hASO5pfmLDAlyqtNc/AYNxl0e9V3SxZB
	 QML6PSshxEE3LudXaQLFGVWkhOfqRDRKndCeDng0jzD6DV8SWfsFrZ4sbGSJfe0fkf
	 gXARa3LD7swjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD74FC5DF74
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178702743368.18303.1547482533731484172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b64eb85023039892bc5c5850ca2a3d7957d7d3818f18379e2216e31bd0c690a
Date: Tue, 18 Aug 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787027433
