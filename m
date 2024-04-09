Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEC11156F40
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712699297; cv=none; b=AX0H4/X6+9++DS18i3KLU1765D2bCCl9kkecqOKnvH4VrIaM+jX9KazgRL+2Bdh1obdpsbMMomGORfoNiyP2GcNmHHiWYDWzIEJkRSNjjOkZ9ykY52HNR1BjnX1MEc4TPqUAJFrn2z171VGHbnU3wVQBFja9RorXfLNMtdklAO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712699297; c=relaxed/simple;
	bh=bfGbu3iudswvFi4jOwcOu7ibkc4hal+VJkpgMthuNC4=;
	h=To:Subject:From:Message-Id:Date; b=CtMAPVY8MSJ9hq3GZqyUGc52t5RVAoZqGgx9wJZ9i5GoBL/+nSo+lxhGJpiLwAdVHHJdNVN+Qyhyr9Rj4esWcaOsh3kIrtjVV1mCUH1TvtwxYFZxpOtgzOU4HnPOP8ms6WFAyZ1zLOoeEM70JAp5uJVzm8GmGQM3UdqIBPIuy60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/rJpioZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/rJpioZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ADCBC433C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712699296;
	bh=bfGbu3iudswvFi4jOwcOu7ibkc4hal+VJkpgMthuNC4=;
	h=To:Subject:From:Date:From;
	b=R/rJpioZoHxNUL5zmMEjhJgcm/NW+3SwpsaTPD/LLFFCKbPoLfudUfQaJBQHesm1Z
	 f8NiXBEv31hfZEK8TkABJXupjtVSBU3tOIJOgl3qcVBhbxL8ZQvUlfOAXcnbci40TP
	 rIgosimGAb+Wi4zOd/PLIglW4KOt33D7TVl1uWr8b4YWqjn3CnI2xYbe9hNP8D3J3k
	 H+a17+YAH5HRtrsO+76cBOBueukzgG4qrzvvi+fTcvUBuFWCMXmfPZlczG0FhWGlkR
	 CFnwsBD081ArnH3SOrMnbjc7/xoKOS+LgJ6RzVHcY3exejBVChbxCjtgG/5alnL4o/
	 BG1nn24Jk3Fzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 691D1CD128A
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171269929639.9266.1810766065185713678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db6d52a0cf21dfc760674437b611821af658890b09fa2fbae2c9bb73e6971d98
Date: Tue, 09 Apr 2024 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712699296
