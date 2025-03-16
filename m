Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF69944E
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742146794; cv=none; b=W6FYvOJpQ7vEa3R86ztBV2ek8CFVaRiNXbO6IjdJPlqUmsaSbUr1WGN7uiVhljz22wnyItwAzCwKHxmMe92R/oL0NN88JOI+uneKMJRDHenyDRuoBlZiXlpfMTW1KG1vGizNCCYm8mKH5SKErkdw3py7CqA5i6se9SsTblInUHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742146794; c=relaxed/simple;
	bh=fGK2uSnmicHYdEFRAXJc8iwp3e6QU+dIJyFGzXnVxXw=;
	h=To:Subject:From:Message-Id:Date; b=ixYvH+HFl+h0kClmmk2oGDJl3zpgQv0fyf3m3yquLxMz5fLbZPCBVU6T7/LJ1c/foANb1nx6U8dxMdU1iM3lm9iuWwyn9NKp/+dr1ZpEWkJmRN2UN8Yc+K/0THiMYlcVGZONZaQXtlMjk4nUTr9b1nlF2jIQMyrV1p33qk/RaMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XVAAQBZG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XVAAQBZG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA773C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742146793;
	bh=fGK2uSnmicHYdEFRAXJc8iwp3e6QU+dIJyFGzXnVxXw=;
	h=To:Subject:From:Date:From;
	b=XVAAQBZGDQQjZ4stUuOsiq0gma6KwtHZgbhG4zw0s0Xe5ayqvtVEa5ih5BUT20e7A
	 azls/p9DBoc6PTZ1fKbIQm491GvL4rTtDelDXqofehrQI8toPbaBEVR/GJYaJvgg9S
	 kN4cd37dIbrT+YnNWCSNAB9fi2cwWRWRa5OwjA/AzeXbVQAIIFix5D1lowE4cQU8P/
	 siHfalyRVfYOepk13UPHdIQWQ1IxZfD9/49QANLMl5kkuTlHGEsSupn1PjSG6iYoju
	 ef+4DxMpGrs19nNXh+Fn+qb9xLi7eMcgSlwYR5DYqEt/kkH6aidocjIJ/Vl1+IYQZb
	 TlEbJ1lHHM90g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E4BFC282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174214679363.28699.8908935459195262273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62fe6738a7cc00d0e833ed159579dcacf3f412a9b7be24a08ef1572ce9410a8f
Date: Sun, 16 Mar 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742146793
