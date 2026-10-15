Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A81949C4DC
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792056634; cv=none; b=sHB4lAGdpj6APpw9SXWGzZNu89LtIsy632lUWxR6rzppamKBLwdFZKN3epmek3L+ntVMRgJlUnj4BA/CrFZkmoXzJI+w2kZqaVUiyZ1c9OAuaVQxgPLtOOFEPZiUUmnU553BEzwrVZfYsp/bTKxhhn+z8wlTBpsEdmbUuJxG8GE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792056634; c=relaxed/simple;
	bh=o+aXEnDbPqxHF6+/uQSoNMNLGrqOs9odS8wwYw6SqWU=;
	h=To:Subject:From:Message-Id:Date; b=XEScPb+TRjrrCGHmRUDWej4aMMyn/e4z4Ryd70WpeG7vKIO4iELuNouKk06dTT1O8bXEL3VDDfuEFpYCvyK9FbqL16nCe/5zMClg4JglzI2qeMOlyZQt0XuFCK6YN6gDI4GMZqJcckfw3t7XNGt7G7jiBY9bWHYK8etnsnQwTwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ls9Y15oA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ls9Y15oA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF4EC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792056633;
	bh=o+aXEnDbPqxHF6+/uQSoNMNLGrqOs9odS8wwYw6SqWU=;
	h=To:Subject:From:Date:From;
	b=ls9Y15oATmrrY9NROQRfZQk9WluzGgJU3gjwZ2VLBWAWk3ZWyTkGn5pJWxovah7HQ
	 b5zPO3F4FW2uUUgk5jBIbdsvMjEnDrhu6wtbXZOyVuMXPCft58SWXDmahELJHRQVdB
	 DR79fVUGlAfQ4Li/1g9fXHWho3lazosZRgs1/zDyoOjmE2GFAZWNabPYwsUAWWNtFE
	 uVqfm+El0sdb4Oc9ipYpjWtlD7zhkJd91E+OMfspn/Hsjd0++m7+VGTihgwCBeHKhD
	 p/8EWoetSdQ7DQ/4ToBg8cJfWH128zz5L1P6c0BphxRgV6by2hG4h4B00pH88WPWM5
	 anXbzz4Pr6kcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99A5CC6B33
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179205663368.22446.2056022741809484779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f771b01dcf1d3b5860eb45c55ca02dc0e75ef078a061fe241c1a4f02c726fc62
Date: Thu, 15 Oct 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792056633
