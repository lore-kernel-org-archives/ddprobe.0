Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295C0318121
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770141234; cv=none; b=hBd53oYerwxH8I/tsfMTxL3waBXVf6zH04I8b8lhN11frjJC/2tfYYNwBjGyC2eCmQNW7G4E9gDTUCtfPFNhhF41cBAY2b/m4QUSwViTCK0Czk6PSkYUpF8ZHn638s4hjB3WFoahR7krwySJONQ1p2ApWb3/Q+5LN1X8owOyNgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770141234; c=relaxed/simple;
	bh=JH38lvZlUm1xDYyiSlYtMf6ycJNn6Rj/1mzTQc8uqik=;
	h=To:Subject:From:Message-Id:Date; b=leKEUwjmiatQ2x/VYsR7lts4I/UnI4XAcw7Q3bfOpCCG/q4lVyMMMV6Ke7SQX967Ufd9liWgjlvUsYXI7zbIhJXflbjXMLsNeTGeQa6OfxFVW+il9A1+ytztNia2towJv1+EXpxmJa0sffTUfVqo8ljtndkM5fkZjQKG9hrPaWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AKuV+BZx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AKuV+BZx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC49C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770141233;
	bh=JH38lvZlUm1xDYyiSlYtMf6ycJNn6Rj/1mzTQc8uqik=;
	h=To:Subject:From:Date:From;
	b=AKuV+BZxN9JRs1ugwca/M5RnYlGn8rjCZxenvEoaoxqdmPQ2CdlqnvNFPT/X/jinY
	 YPTTSL3hDRJkcyxsc+hJQh8T5G5tWBusvH7arGhDd/al71LGiyI5Mw5R0zIMEa6cme
	 OxBhI3b5rxr+StIqxKSsNjhSVdH5RUfdyXJt9+wxNpRY1a+lAxREoCIf8OvTrKZT3u
	 eQH5y47Rwvh3qDusf9BKmGk3RfbATWq81+QuL7x38bF43T3M1anqu3nnALGOCLUICF
	 4hwCsfv8cF2K2TXeU9PNEaXKDuRRi4ReDSnFkBloLL2PazYmcOMWR1PDDjrLG9IjsW
	 P7dK9YN/9Dy8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5797E87852
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177014123366.31413.16004775893264291078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 600e9dd4509ca0e6e936ac89ce320d6f0a5186945083e67627c07e2dced6e744
Date: Tue, 03 Feb 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770141233
