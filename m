Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2137028FD
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751159994; cv=none; b=CoKKJNLWN8T4m/ICifv7+s9vpRR5jT/gpd8lAVNUb5kfMZIKD+dSbakWN9Y2SA9IalN+pSjULzSKbbmEgtYB5Xuq+Mo8OumjFy0v+CFFd1lptr2/vgyvdzQ2M8xIqbyTqJRwI4fVvWKUpTm+9IY3X8iYZ59BKDXDPrVccI+KKb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751159994; c=relaxed/simple;
	bh=uU5Gl8bPbI7yflkodXh5syRD3M8IC8LhTp5qsU3RXWQ=;
	h=To:Subject:From:Message-Id:Date; b=fkOnRSU8X7dPLlcfaYCe59JUCi1YfRs4HSet/3d3LsVzQl95cDAvzrvhSbVfsKbRfkIS/SRxCl0DsUGiCWI6OBfmutgxlJv2+0woI71TEgWcl0aZaStHoUOYP9RFGLpOJtrkN3eRlQSe/28rfJU+zIw9fLnF4OUkj2q6iqooi7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qHK2u3iY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHK2u3iY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F09C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751159993;
	bh=uU5Gl8bPbI7yflkodXh5syRD3M8IC8LhTp5qsU3RXWQ=;
	h=To:Subject:From:Date:From;
	b=qHK2u3iYZSqHwIYbLhXM+AuiIEv2ulAJEqSng0xAI8HPQlg7IABAT6EASmuxRC1BV
	 XFPxZaSAGXNqInuFQ6vjRoUOSXqoB7k7mD8aC8kanrvQ5VItWgKlZjPA87E6bryaPV
	 sLYTYkfu8unIstc5i75288Emy4ywikDpjfDaBmzulFbkw/YpY+bo7mkOvBLb+lW1Mc
	 4a9vZQaBBiXwO/Bn6ySZFHFgvdWE2Gxf033upFNvaVCOMU3Gj50LtEgeo7UJeoAylD
	 jAIpkXyi/qmc7IS/p7uKWT9Zj+xhDYmK/Zk9rX3afVOs2RuaYGLzaLvDUBcL+euScl
	 DTWWkc2TvCBXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E585C83000
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175115999357.27346.1329811249333554532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c14b13c8e12dd171ea35feb07a98ac0c829dd53de90b1e187915b2bdcd3a8c7a
Date: Sun, 29 Jun 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751159993
