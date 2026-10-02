Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81B4B469826
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790979634; cv=none; b=nkHTnPH/e6sUfzCVwWpeI7qwpjOCxXjf1vyQ+0tMvr+ZbBuxdjmTf+IV1S0MNgI1oHT/IHkUeyBXVB+NNZv3wVXm/HSmBNbpJj0EVNbBQLllbe5UsLcsPky2HYnSsz3jKcfKsY5q/dnVjmkUj4OGaqHVcYLIWqNUMrPQNipw5Rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790979634; c=relaxed/simple;
	bh=sTXIP+xWDJSBFfoyoSoa5eVErcFPFHRXwpXZj233AdA=;
	h=To:Subject:From:Message-Id:Date; b=IzbdYreI/BUPr7u/jNzJqhxPXldQjtacZSyqYtXLvaeAfDpaLY+dpnY/Uo8l/pBi/kPpw8qEmWa2GGYXOHUfJ+MjROo2evSUdAAFzvEShwcZQJakkhau90dKACCQnC2Oj9VurVBVA3GGZllxLLJEgHHYPWcclDPwhUIaR/72mEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ph0m5OWr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ph0m5OWr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9CBC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790979633;
	bh=sTXIP+xWDJSBFfoyoSoa5eVErcFPFHRXwpXZj233AdA=;
	h=To:Subject:From:Date:From;
	b=Ph0m5OWrhAThdqMX9WivebTN3n4xTBNTZMKJnlFe1nqq1Ad8uj4zX2Pv4izebXqvB
	 zH1zrbD11geQ2gDC72/X/0R8ijySiEk59q25Wbcc8YuPidoaxzevOXVZWxcnAsjJ7R
	 W7mxTzk2rJBpbjUYKJOKEiaLXzTP3RJ6eSVaUS6KaL+ia/dgNfA+Qczcm4BWy4whf5
	 RzklP4XO9PSyqB1vkYESE62pPKNDUlYYNVfRsfoV3+PVoZbIz7cTYvEJv1NUu+gyoG
	 +5SZ8ROEjfiLh8bHThtOtqZ8vC2lshXUP5i9yQY4cfJVocSrEcfRpFsGWRMytG8YCk
	 xyAid5LXGcX/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9644CA5FDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179097963368.8747.9898321261804699989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5666111c4010c711e21f1d6d5db25396f4a562bda548ed9a01a81ee57b4b3040
Date: Fri, 02 Oct 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790979633
