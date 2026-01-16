Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 035EB145348
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768571634; cv=none; b=IIWcryvMWxy05edK4a/cC7dx2F7QB9wzMBuKKYUAM9EPa5RyYiFaeUWADRSoq7h/UycbDwMcydqY5djGHzVy9eUEW9oQ3KS4iCOmBRxKmDQWhnho0VCesHQLTKK651+7pTEUoJSRmgC9VaTn4b9Ol30zQ6cLjH7GVlxXHQaZzTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768571634; c=relaxed/simple;
	bh=YPdZ5txMkkWtbG9IWGatMuFZonsDLjmt2R5CaKtikao=;
	h=To:Subject:From:Message-Id:Date; b=HyNUU9IOASve8oXCbxyt/dkSkZ7osEKxvh8TvG5OvZrOz+koJjoh6wculQ8Llj4o0YB6T6ByGnEiscMC3qjBHmh//WFJBZvtcXEBTPF7aMeECx1lDqjA6imsWVJqUBIwEzTx+dj7z7YiAk5Ob7+SoVGBjTtqxby8yBAkBVZ9k/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YVHrp8OR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YVHrp8OR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A785AC19421
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768571633;
	bh=YPdZ5txMkkWtbG9IWGatMuFZonsDLjmt2R5CaKtikao=;
	h=To:Subject:From:Date:From;
	b=YVHrp8ORa+ZM78AbnWb9Ji2Vgt+nsDrOeqM3suYzixjiK6yxDTXcQmJ3nC1/mcass
	 HRsEwP2YxyYPP6SZsRwh/2pTRp+CpYPVPqxbbs4sGj0LD21IocFwyr1j61Zqo/mKqi
	 LxkYsofJE3XCPD8Z6D8237jn8Mw/ZlAIVgHHOdrF/Qb77FE9juMIjgZTLFjgt7MR1p
	 qnXMzTYdFw8qbptYIku37thnq6WDlSY2kB+vemfUHpAs1jB+dCNjPTSdHKqESvhKbQ
	 g0H4R41a7EplD3wFIBIcYUj5WzbMSlgk94iqF8ZwiG1natSaE21fkyUrNgXYmLahwb
	 RBuf25tkNCbqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996B1C2A06C
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176857163359.3874.14597482833180828194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0e0bd1fc3c547502670ed73475670f0ff96d1a7dbb3d63a7235e7f9f2d27298
Date: Fri, 16 Jan 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768571633
