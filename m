Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4082A21FF5F
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 06:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763880114; cv=none; b=MF2Csl6oKBpcvJ96MrB3EEd9YBayuDO5wdq3qQE980EVJ7y9Dl9NsolB5oExBXqbBsNteFuwSVEg54qz6C5Bn69mkvx65r1Qv4QpIZMSRf/jzmvy13jo/ucZOwZFpz8LdtiqNpZyfN1WI0RWiIUt3MmDsLzAeHR8ekca+w+Dbvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763880114; c=relaxed/simple;
	bh=oXqgeOYANKY+VB2SnPp+xhOA8K5ZVNzBNWkONQKFNlM=;
	h=To:Subject:From:Message-Id:Date; b=A/CNoB9j/IC4uYD+xihOqKeH5QHH3Ag/795yoRGSFlVDi86SB++U32xVzA1io0AXZjSvuAlOvEvBynClqPb9dtrXf9UwB2u98YYssCsUGUvuaq+3I944X3XeqDfkjtd/Tc63sfX1g/Bx2GkDx8Mwty0fN/U0cFk5pNZ250laVU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTB7QfQ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTB7QfQ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37CBC116B1
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 06:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763880113;
	bh=oXqgeOYANKY+VB2SnPp+xhOA8K5ZVNzBNWkONQKFNlM=;
	h=To:Subject:From:Date:From;
	b=FTB7QfQ+1CwWnv96wrNM7honUc4UZWbsc018otEvTVxAVAj62Oy54Pu0iNUdEW/iy
	 Uqo5NHDtcQ/NMTGSgNsg17BQwjpOEjK7eerR25Rnz15ABA4NNlLjWTZ6PaexkKbWYH
	 sAsuTav13ukL0oFWgbfLWQFK8yahqgCr15/4F6pe9K31rZAvW43imf57YgYPIK1MpN
	 dMk6el1kbDT1s7pOSDK3+Xw3yuks59hrYTNKfsNaJ78T1V18/vhP/0Eh6QnMSKUwj2
	 xONHx4qFuKypTJxuW2SQVyyYJQEHNaYiyiJepto8jFMsH40NAa9RLyPiQuidhYOW+t
	 oPnvPLw0Abgmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CAECFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 06:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176388011358.679.14973679916919747891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 786dc426e500966792231ef0864a34d5aa784d75d40b020f69a7d0d95469d86d
Date: Sun, 23 Nov 2025 06:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763880113
