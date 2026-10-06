Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AFBA352016
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791321634; cv=none; b=hgwJE1crCbhC19WNyDREqhKhTWMsYCiM4KLnpIfrQb23qtzv6ewyzbAQbCb8e3Wyrbm2KHz2kbBiX4BO6oFJJEC8xRyFSRniMjBIuU7uCr0ZjXYXrJCjXqdZ0eiZcT3iopwU6nOkqlawwlw6wPcibckVA0CBsh/ZH5m1W1nfV8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791321634; c=relaxed/simple;
	bh=xW5v6XRjOtudHWy9GFtnEmeE+S0P0BIM9JVrEJ5to8E=;
	h=To:Subject:From:Message-Id:Date; b=aYYfEFALt5z2gvG2Mov1ETip7tDrIadJWmszWwSw560LqR6ooOcchqChtSIWlmUa+H2Hxile78SKPyg5yeXlqdR2U1YujD+SmiUQ1HN5/sBWS8kKTVMvZE8izP+PdiitvTD7PaiXXK/E3rRpatUPEYV2r11bessFkCImtgYosas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vCfaG2be; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vCfaG2be"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E49C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791321633;
	bh=xW5v6XRjOtudHWy9GFtnEmeE+S0P0BIM9JVrEJ5to8E=;
	h=To:Subject:From:Date:From;
	b=vCfaG2be+oBMw5bdylqlm5seTzJxo5frVukzjmYGWFMgkLD2mbDOfgnSGdDWdMO6Z
	 BcP8ZRdete+tMArwFImaOY01MdD1LJ8Gf91K1HjxIKTnXbieWE6W4e3ZV3BcDj/kSV
	 aAcHFNzbdW1BRZCtfuGaD07Vo5wt6pkmbqFumNgolsGuNmykYPkQs4CPnxqSxHBEZz
	 vbRcx0m+tfeFh+w4dMWs5sYsnf67XbkFqsHp+pVUzOhjj/geSiOhjZjoJ0bHa3Evzt
	 qM/y/T4HWFA5nQnfdj8HFbrtKGON98FozDwqnqdrEgyZ00QXUk7YtnRz1yeKlkhhcJ
	 gjnLjVBNIIseQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7EFCA5FFC
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179132163368.11930.16272174921949565692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f6778d4182196a9bc0ce2c9fd598717893ed11a61583608fb55e165b37059e6
Date: Tue, 06 Oct 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791321633
