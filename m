Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340FA1EB1BC
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 20:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740947334; cv=none; b=hQc18NHXNKA0FCpbN8JHPe1sZcvRfAlgmt/x98v34HPbjvYEsqvIfTv1ZN7/EXwLikYt24tpXaaM+41hV3aCdDUQ15S18EBVkhPt9TM9BS9n30hs4qP2VThp1y36FEF8NgC0Al/AedWOF3seMrCmHEh/xdzmSgyHILky4lD0W3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740947334; c=relaxed/simple;
	bh=BYtZNmDi+j2Ty4jCTHtmEAg7AYhyoz6G7Fa5RZWlb10=;
	h=To:Subject:From:Message-Id:Date; b=OinJ3EMqzg0oK4VrBTp2ElapPIPzVfTj4gthiCdT9twQ6yhfHAnKqR5kwOh5CPgOui54yPcPzKNPga1aXk4uuCIbSgV7XYpqSlroLH++3jFaoMA8uQpihxUxgLeAZGY3QtBToUUvjCL3e+KWTMPm4tsiVndoO57KQw5pXCgCB7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=elgI1XRY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elgI1XRY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF024C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 20:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740947333;
	bh=BYtZNmDi+j2Ty4jCTHtmEAg7AYhyoz6G7Fa5RZWlb10=;
	h=To:Subject:From:Date:From;
	b=elgI1XRYLNHrqILmhHACjRG0mdoTJVe9SZkpqG4ozLiGE5DHqyiwu0BpSME/7YJKO
	 XDfw9/wJ3xwv3B16yGwfBhosgVPlWnt79vXDo2S1iENRzNwONqWxT0yK21yV0jiPbx
	 a+vF4Qf0qJvD5f+fvzPIbG5tP45gi03Bv1jMRVM8gpZtvp78BxG37k9q3Dz2fXdOFC
	 fZ/V/czFtwDpm4dkF05WXA8ZUXhXc/ZFGfNtEMS9tTXOSkirMFvdOKNE+22D+wJwox
	 flKWs0XdSk2YRhHCE8DdDu1ZVUzWVwC74y40dKiOju3ERO1xP/EKpDT7CNq5DEdzcn
	 gMWq+gUuewkxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94243C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 20:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174094733359.16261.6696368809679652328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bc79a2ce6cc248c4fabc9e3d0a2167d6107de30e05d34f8fde0647e549f4c90
Date: Sun, 02 Mar 2025 20:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740947333
