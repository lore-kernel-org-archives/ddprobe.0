Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CAE81F0E5F
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742548794; cv=none; b=UOsIiQ4SIhEj1Lf1ZZ3vcDI+lAaAH+8IiPdzCw/QGLrFT6SzL1dX1zmcJwDgrApucSd1htOAvNOtVFpP/ZeOCcyFcTdxoHUKsVMxhHivazj9gBBciXSzCgpiwUODwemdnaQlyFAEFrF/AdJgS2yWoDO+O4cM3bxsy4Q6gTp+JlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742548794; c=relaxed/simple;
	bh=kQeMMeu+2BipJUJLal3FMZP07R16hcGdsEmDe0Iigtg=;
	h=To:Subject:From:Message-Id:Date; b=ETvcqJh8k+NOhUiFP7xQ9bPh4UnzkWcw2+PLYfELXUIfLxCRS7V1F/uUOsfmsXFSKzRQ4GgClgmmOvzM539W3gSZH7UjbyJ0AkkOghz3x5IU/7f3BxJxreKuHwcrp0dIDhRrUqNkOq8um+7T/wk+mYaTACWC+xLjqO6ruXmVDqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ELd8NrH1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ELd8NrH1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A62C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742548793;
	bh=kQeMMeu+2BipJUJLal3FMZP07R16hcGdsEmDe0Iigtg=;
	h=To:Subject:From:Date:From;
	b=ELd8NrH185nhEbttqiccJqLtDWgR8o/DhMKsrPZO9nmK7SnAfOWN0KB8n9F/Cy90m
	 pw8RoAWI/x6uzL8g1oChtH20Qybksnw0BmMRvDRdQ/S/TH8iDI24x8mEBARUmAWsrx
	 2Xalj0J7YQZXHl7YaZKWVLE6kl60m7N3aBvoS+h+E06fK5jSwWiggSoNkqD5ocVYQP
	 3DlP0VwBaMgO0XGSGCxk2zRzZ8d054Xz4J16RFiOV6LNQVTqWcTo9SPFnhmImN0xjv
	 ONn6uv/qBJkQ3FbkJ0cDRlAwiFqh+z6oqF6XsDRjJ8vvEPz6pHzE9swEhO35L183/j
	 QkpiOcC/5ZUaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A335AC36005
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174254879364.1388.5314900040643282179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f6dc7222a9be241d5915887492a35f3b46b416f927d584caef65a13634218ad
Date: Fri, 21 Mar 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742548793
