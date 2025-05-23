Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F2A221F25
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747973394; cv=none; b=PTkwOHCrH0Y068FPzR18G2epb5kvCaB/8SUYTWGhJ3hE54KUsqZ5KiekeHG/Lrj4hPXQTUyWVVHK54PRPZomk7+CJYX1tITJGM9hTPF+I4+B0EK/nw2wH81jZKfZEI3pGHhDFD97geSOdujgW188VuIE49rwnXrTtQ52slvgBGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747973394; c=relaxed/simple;
	bh=Z3Hb3CAfTgqjjiYKrh5td1n8nY3+yVDYkRNHwYi7GGs=;
	h=To:Subject:From:Message-Id:Date; b=atYQww0wkJz4tuoJUHCyR8EnzculpECRp5X8hhDEEMZWrdehIdQCtUUbwsFY2zObNNulw+v4xlGNcWyMc81OdzgwW/doFgGbB0mXbF+GDvb6Va9tF6Yq6HAuGBh3wQyX7C8TMCi6nHQ9p/4DWIXp1o1SpxMoSV1D6autYwl3TNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SLNEWrL3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SLNEWrL3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80CDC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747973393;
	bh=Z3Hb3CAfTgqjjiYKrh5td1n8nY3+yVDYkRNHwYi7GGs=;
	h=To:Subject:From:Date:From;
	b=SLNEWrL36NVSumCbxdyDRjYYGbyjxR+oG7YZB+cNmfXZ8mqAz/V1CfWuZ86ek/0dw
	 vgDkhaYnjvt4398xM9HOJA+llsjZLqA1qDVJmPSv4Jg/3DxyIPTsjxLxdW+HAokfYp
	 jrzO4iO5CJk8IiDx+3XwfmM4og9OblnfAJluqeSP7S6molKzPJoze3BUR74fP15wVj
	 HHUk+yWpF+rcOozNORw0cx81UpEA5n4S0V46L2XYBjMXNUKxmIXhh5UH1wrPr7uPSY
	 y8bKN0lj0mrJ0b4NnLvQWT4gOymSkDEMms3E9jAUjWa1LMu1Yv1ozLSeenKaQHD9TK
	 IQvLDU94VTiqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9549CC54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174797339358.28789.5250314884430165912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aed298e64c1e563db9e9ed5372d433520ffd7883bb832d00189dad76eb2cad2f
Date: Fri, 23 May 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747973393
