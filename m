Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D081E7C12
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 13:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780059754; cv=none; b=QmM0dqJH5GTbLLMZl2SVYBnlvZmjgntv6aA8C8btDOo4Ld4i1jjz+gwwExkM5wbBXjx0EtxeJlJakY9feZMkYCM21i9Je0ztgtUD1SnrpmlBh0S2oRyHNH6R9VzRy9mmfXcPidtcCsjzQmVQtUravVCDfygRguyn44oeDESSfQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780059754; c=relaxed/simple;
	bh=JdjOvJ/pfGKzkURMQpOXXvfd1rWosoMvdPe/8nd9Z9g=;
	h=To:Subject:From:Message-Id:Date; b=cIZAXq5CFA8CUn5x/UBqYGrNzmR9/SAOOhtLmL431ufVqB/LvLR+J1KOAn2UxW/dAbBdW/ZBuAB5uqZ8zYzyL0YbzOEkiQ4wLoudzWvb5FKngnJD+X9YDDkWggLKZyK9Y8luPNaEaQnNEfW08n4fMWRwNtfq0YestSrt+SXAjqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lvzAxIUN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lvzAxIUN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B38C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 13:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780059753;
	bh=JdjOvJ/pfGKzkURMQpOXXvfd1rWosoMvdPe/8nd9Z9g=;
	h=To:Subject:From:Date:From;
	b=lvzAxIUNi6P/+mbIhIqYWkDexFZnVPCqFjPkvRPTthSKyJYBBrs2LMliflw16TLIs
	 jijbhqFk2fypvHWyiB6V1BgQlREM5itnPGB0N2LOVe3vrbRSko/NG9xBXVZOHae+FU
	 a1hVAhEDIo6tlw193+f6t4XT/wmK0L/9lB4XSMouoxDgd0E6cYwgDAz2hrGmNdeTDl
	 SPYYQz1Yp3qAa2lJHkeWOp0ajjHLkGzlwCUgkhIPYkbLU+SgIEXv6pkV0t8FsJXhUW
	 0s8RMaL3JTeJgnKaXXtTYB1+fLooq9VICW8lUoNxXEj94sNqtbVM0oktbwymrGuOmM
	 HKt+2/5IxDd3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA160CD6E4A
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 13:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178005975368.12875.15625401024027888275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fa5a32ecfd3c00f39d75dec0fd2f825928e6d1db758be87d766266c67f13b4c
Date: Fri, 29 May 2026 13:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780059753
