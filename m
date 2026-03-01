Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65BF72E62C0
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 22:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772404494; cv=none; b=hfhJQyD2L7emaXMV7HbOfLUFBYYoCe3/Dv8/9xSTkzX2C1ZNFaIr/Pfqx4nJbROZbJeTtuUiP8LhBjwtseS53LqA70alxpYaBM+V9bcJB6Ajepor5wTULEXF3jpVIgb0JozZ59oEF2s5ZAqup/LiCVhPYVp2HPjm6D2BK+1m9dE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772404494; c=relaxed/simple;
	bh=5E6B3Q0rBeWYkyIKe0zlb8FRJ+ycWIobmEqrXNXX/FA=;
	h=To:Subject:From:Message-Id:Date; b=FGUrYVVxL20XHoWpilWQsaG4M9WVoz+93tr4mrPDdAsQt8OhXti7lZsxorbujnzPNHFBD4y4f9AXTmhO1cStjWRXSt/4fFaIjM341npp2FyjltrU2ajIwip53dhm+4tBdb+u9zbcLLQaPLbcMn+blCD7Veektj1v+z10sX63spE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXbuKnYQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXbuKnYQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 113CEC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 22:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772404494;
	bh=5E6B3Q0rBeWYkyIKe0zlb8FRJ+ycWIobmEqrXNXX/FA=;
	h=To:Subject:From:Date:From;
	b=SXbuKnYQO1VDg/zW5+2A2NbgqlOhKy/J+SWo8xHN+EgKL2Etgxya8a5tiSV4aCNHg
	 PetzeDNRwQ71rvhDtvWYUPtS0VGyicG8W7w6ZbbtgA2nP3y7SEZ+J+m0AlChx+jnBq
	 3o042tTmMzO/5d+Y0N/aofHWdO90OnuqlnK9BfcKXO0K2oXLUM3YjgIBo3eupqHEkH
	 XZv/n6IVOHkOPvmvo0z9AFeZS6l85Xv5Xv4sVJowOPYEWtpUHlL0+pmNmNfWdl7i1n
	 yb0N64LfQ48j+azLtU5B3gTkbIuAY26xVJDylTdqD0i1vgegR0kpNrqv8ylJXQ3BJN
	 CyBYdflWA2Dtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD8F2FD0076
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177240449387.15970.5554318499127247654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d45c78e1dc7d66fb83acd01c1abaf0eb27cad04154c8cf4a8cccfe6db6feea4
Date: Sun, 01 Mar 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772404493
