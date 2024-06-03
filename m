Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 626C05026B
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 09:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717406123; cv=none; b=FtrP61BMsNnLlRDo6W+1yUG4PXQZg7YG8E+A2E0DcDCLoJxFzon2M+5Lw3nfcHv4Sgv5ZcfdLyLmtthBvZD6mqid9c2Y+ldLzcJgWG19WoqFMKOe+Rbc1GqZrIiRiX/P5syd37X/zJdCycqHag0PKTV8qV0qG0MCphYBOTxeQts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717406123; c=relaxed/simple;
	bh=TKbRxMF3DUt8TqoBi3b64zKdWVoybGP4hNTEeUTdqRM=;
	h=To:Subject:From:Message-Id:Date; b=W2U0t0lqlppGbZKx9fNy54iMDYVo9+cJYOBhj0dBjrIgr5EdbmQTy9MyxOXbwfYslFE9IfThKECQ+Do0nzzfCng4NqRyC/78gYDrXMIuJwwSwhsgwxkZlTHmLvTxUh1E5hHTUH9uL7u+PE1CSLK3u2G0QRhSKM9+BifOf8pe9Ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ReXogIlA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ReXogIlA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0CBDC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 09:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717406122;
	bh=TKbRxMF3DUt8TqoBi3b64zKdWVoybGP4hNTEeUTdqRM=;
	h=To:Subject:From:Date:From;
	b=ReXogIlAkgc+q8OB2SScPGW2V1VZ4XWlzX7sTdUiV32dASqwWa53YvZQVMhiC3g7C
	 RlHTTnzJIVsR+zZQQVEJ7sUYQD/LvvBeXbWjZfEYB2qHGSWjWngFc5TLM0ArDUrQV1
	 Sf3W9g+phuDZMXaCgE8Kt09n6zV+7S5Ul4N+cbhS2WJgdZuKBBR3iVpmYCpytScC/h
	 VVR7u77Q7OcHJrrVYAU4UmVEcHXknKDC41EjGprJUJqjT9vrh4AT+0rEMhuZTXLWSd
	 FsyZYLHuud0jRo3hWxAiEo2QEJpxp5NvUOkqtvWRpswbISJES7WCrl2H/4FWPUReeG
	 AAQe9xLVp9Wsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8FC4C25B76
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 09:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171740612281.12432.9846469256275634689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cfdec243eab5a9a5af607e1bb832c16597a0330192efe7e1f8427625aa37c12
Date: Mon, 03 Jun 2024 09:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717406122
