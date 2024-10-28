Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2988C524C
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730144754; cv=none; b=KeMrQSeg2Ww8mN1wXCfe8sWR3yDg+mdho6NVOs7NXGGc7zSASnmg5SFgMcUAHHipCRrY/uzotXO6/fs4oKI1lv5aYQUWCt/ntmor6vRndNpQQANZOaqD6E97Kh7+oB0rQpq+rJRkI8dgM3hvwm6fod3ye6e7wv0n5Q4zgs5bRwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730144754; c=relaxed/simple;
	bh=LjllWdozt6+n41sM0dCF2R0XgJSTRWyCOhuWYs7yQqs=;
	h=To:Subject:From:Message-Id:Date; b=Ak6EG/b8xu+CMKYee5Jv+aAp7Dre4wQOHe+wOR0vmCqjormb+PsbDpw/PLDw6G7LHM1eAm2FFOBsklrwpYceRz/zpwki8+LLOitUsMMbTmxptkSSU/AvGLJY9dWbgMCKeB/Agl8doSjx+JYIJOkQ0IiVtsjlrh9MK4WfGyWNlJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UuawktEn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UuawktEn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0184C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730144753;
	bh=LjllWdozt6+n41sM0dCF2R0XgJSTRWyCOhuWYs7yQqs=;
	h=To:Subject:From:Date:From;
	b=UuawktEnWyySTvxZx/1iOPIEvKBSKQ9SudFIk0g+VrChjLULDUhjiYXpt9c6sW5XA
	 vMdtczdMR2LuTmqyTBryklS7vDGvDnQdk+CjXnfyhn5xgtyflqIAE1K3mBsb2bF5kJ
	 imbznXedJWfUOSPQ/2RqQM4l51xAj21opHD3gU27mVmcJWGa4lnLhPhVEa87Hf69VX
	 9XjxYGe0YnGfl9t96xJfjMXiTkUwclE8x4t56b3HrrJErZg/fEjuauMdMETDbYHTdx
	 8WlmwzkYLRx7Uned+OMr4QB8rxka/nVQlQJq1JsKB+38Rw6n2ANdqmPgBi7vjKCz78
	 Z4qTVXg3A8bqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9904FD3E2BA
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173014475361.15558.1630728710830165661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9a600580ec5dd9fa5006277874900a0d59dd3f379bff5bebe0dadc446a6a32e
Date: Mon, 28 Oct 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730144753
