Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5648628643D
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761937194; cv=none; b=MVxB6WqycaiJFs0Mq4LKaq24ZCKRi2irVa+mt2W747Bx00GPIyD0QUhWvhJBoSBIA9PN+sQ3eVPLLJgEEq+7lRi6QTlBYQDf1X7hlbha+AsVhboX2bSOWyQXmOzTq5I4z11j2eS2vOaWhiTglPq+a/ZacsQlI9PGEw9tu6BWDn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761937194; c=relaxed/simple;
	bh=eQArH5P89pMOXbfL6xc5qM4BcFjNLiH54J8mm6EJ56s=;
	h=To:Subject:From:Message-Id:Date; b=f7YdfGTQMRnOs45wLP2EzQoOoANcLUXwXljYP2O1OMWr6g0PqpASXeraA2VWiKRfO9dZIVZqcJVMdF3uX9KvqmgQUyj1rNaU8Bcb+yowsXR1/IMsOBVApuC3yILtyUN82ZrDbWk51vNQ59GVbACm+KSg2LdUC2Zic7FIpsQ1hA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcN6TsDd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcN6TsDd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88E8C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761937193;
	bh=eQArH5P89pMOXbfL6xc5qM4BcFjNLiH54J8mm6EJ56s=;
	h=To:Subject:From:Date:From;
	b=lcN6TsDd1IBSDxscfEorNR6gVzjg773RRghTO+rslh8FJhgdhtl3puT1Ld4faWL15
	 dlApgALbyfrn5w/4uC+KXmRIFKbF8b7EpE+AqEBLH8INPDkJCkoZnMOm4RpVu6fVIF
	 Q8IBWimvtxVw/WEE+EIJ6zz/K+jqohnyLfSxS1UATqDbjPubMyfM183hy7KIJVCvDf
	 WXlq5UFnhtY+xE+auy4UQojQSHhdFo7PHubF/4Cn0m0sxOpwKqXl2d7g1CnygMLB97
	 Pb11kXiyVIeQDPK+UIGvYmCUTfVYlrbkTLcmnJ7AcGEZR/KZ3PCmeieQWxecJuH7Rp
	 eCfGCaCq9duwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941B2CCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176193719358.31144.2041204643434726696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e60589dd6ca8fbc30c46864b54df633071553fd1dd8d4a2f4698cf55b2d69fb
Date: Fri, 31 Oct 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761937193
