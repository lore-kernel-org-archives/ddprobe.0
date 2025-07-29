Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCB53FB31
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753795194; cv=none; b=HQV0/JhtQgl32xQAa2l3oOB4Kx8QlYuxzeAZzGcOTchf+SLUiJMbdZh8pcKfUO5Rw34zLWMbBZlKzuP4uka8IDcBh/R+O5AWz4yHWfFfEFTH61wJ8WREkkZ2vdRdRN74nIKlcWtNxEZaXxSNoN93eGlI+Q8vljmja8OkW42373A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753795194; c=relaxed/simple;
	bh=AMPw6S76OYZGbHklMblM1KrGJOikmBfIY+ul8Qekne8=;
	h=To:Subject:From:Message-Id:Date; b=kW81Ci6PlQywT6HBToQvyMk6z9ZIDrVzkgoHFpnaIeH8tTxPtaI21FdhEvEnlqm03ZCU0QQpoob/+OBCLb9TJaakdl3GI/2ihATdPng9YWVO3pCfF6t6sZuC31F0NGRMIcVQWD8oxN1G7r+pTDYXgduPBPT1NsH1aL1s59vpgAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f+UEbbNE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f+UEbbNE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12B5C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753795193;
	bh=AMPw6S76OYZGbHklMblM1KrGJOikmBfIY+ul8Qekne8=;
	h=To:Subject:From:Date:From;
	b=f+UEbbNEa7cMzFADLuWk65o3GsjUgoHuefYnJ29QyzB/sZAVtPFUhiv2WU38fY3vr
	 JSO3DPLnMf24yvbGNEF6xiqk9VdB55JkGp2XGSge5t5jylCdg3ijLBz2R7FIBwFV33
	 o0KFdFFY8SDwSJTKEmBlfi5b0xQMF/hmhXyoV8HUrzpOYbeRWN6t+a3M+OTNsuIbtD
	 I26kQayT6/mOv32D8TmNWWlpjsNxxJIj7FqzzbMXubXby50n1shSHAdodu4lVSF61x
	 mf9ur42+xcfPdek6CnfL0Id0JWx8MOdA8Kf73kDJ9n0vO7Gjw7Y4Tl6+5n9kBa3zZx
	 403psqyQv5OJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E94BC83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175379519357.25294.6239455646119678087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a38ca5ca734c64a816be1f819da6d3fc08ca1489ca58487c70b745a0d5cbea51
Date: Tue, 29 Jul 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753795193
