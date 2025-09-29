Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C825F248880
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759175393; cv=none; b=B/lTLO1zr40/o4knNeOc4DhCmGDDABoI89vRGseKuMB3pUDzgIsF3INvuBNbhIS7LD7RrWsh7xWd/3N/7BWQzb6MZ+o6iQ3gYo+pLeYFTbE0QRtIYVdWHIUFRGdIQWoHOiOm7orfdyi3dXsth+er1PyBp9ar8EOSs1kdaWqYnoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759175393; c=relaxed/simple;
	bh=+zaD3LnPteqL9eXh4Zvo19ip5GjtKWfKrWwG+/klWTQ=;
	h=To:Subject:From:Message-Id:Date; b=n7aufqsqH39pPT8FsFzOnCsO+513icvXxEwKXQnbcMKW4o7DBEDx2x2KmtfS3nEvFtT2u2zJssTU1e2vGcGQkGLmcyeuHHBO1X3koezzvGZ7EHXhOBoFJiwF/D+HekNB2wucZSBsU/qtDj6b2s4Me6Zeau5quZrl6hloQ1VwBVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kx8pR8ka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kx8pR8ka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA934C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759175393;
	bh=+zaD3LnPteqL9eXh4Zvo19ip5GjtKWfKrWwG+/klWTQ=;
	h=To:Subject:From:Date:From;
	b=Kx8pR8ka6PWO3X/SS0S9tQQl+n2pxIUe0zC+r3OM84rTCN3kQhKTzhjvxwSMFNCbG
	 jJnWM3VGhl2dFnwJI1aebpsPijbrEG/cRqxhx+pgdgAzqVBxvZqrpOug9fIe0vKkQV
	 q5W69yoBOVTYq/FPXfBIrwKiHQWfy2h2KtsL+vGS7NFU7tu7K2EiurC0zX/UXLm9JV
	 XjhdO/cpnvZTVuYIrwsoWky6nOpP0aSTVh3bPb2Sr//74+7Ne12doEz3hJUmDiYsGb
	 Nc811IaHOafS+vutySoq2PeHsFrhGudzgUyEJkGfwNJK4uCmeeTh7EV6tvX0SKpCpW
	 kSYu3rD+lVcLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A50CAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175917539359.18660.18124045519119169486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af4d84134ef8abb907393e7c914a4c7b3235ad1476e97459c6636b255498f97c
Date: Mon, 29 Sep 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759175393
