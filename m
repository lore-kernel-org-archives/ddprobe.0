Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245F8221FB2
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762287594; cv=none; b=JcqFpVmoxQGF1XR2vDrIR/bMxolex0kKR7BbURnaFVMktafqiXe+ltOxwcqjipP6DhylpkR9KhdOkKbUJWc0SS5rqkWmvP37qez9PNHTctU1q9qD4Wb6fgUYOXiBhP0CO1Fig4ITDS3e9XqNIArcKwsAES6HzCuCtiq4Wbswk84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762287594; c=relaxed/simple;
	bh=sZUlas2htOHZx1kFfLdz4LX81XCJnoMXfbSEEaVk/nU=;
	h=To:Subject:From:Message-Id:Date; b=KUghLIrguT78P5mPN84DOWHFM05Oy58lyD/lZCAfw9YSEqaiupoU8HCxH1D5xAg1Dk55GWSDbeOOWJ2YSNZBKdCfr4OR9UoBEM4zOVW2dQlS9GjtGoKYfQef93P3qk383ssPqd6djNyQa00BgCr4scr57lm+iHuo9LUWxNJcCAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BAe7qm/r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BAe7qm/r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A372C4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762287593;
	bh=sZUlas2htOHZx1kFfLdz4LX81XCJnoMXfbSEEaVk/nU=;
	h=To:Subject:From:Date:From;
	b=BAe7qm/rXs4iWh/zMOUzrsYnFsOEiOgf4Z5rG5pQ12LQpha/h9kXYoMX90U3FHdzF
	 /MzztwAyRB3glRzYIoHHWrPgfNbHpl4AuFo9DN0aNGVxaA6amuWzmMZkxulPLXm/Y8
	 X7q4TS0ggQNBgrqtZqI3hlAAd7PoRNHiGRNcdGJNdQ2m1kBfEPvM8eygR0rOzyvZtZ
	 ciNFbNTCneJIJVMdpYZ21eYhgvPNtTUYcoLVQs4+ZzTDFVNfQBW5u/vsqUaLyOOm+/
	 o6TPqzLzdCL0YCI6hg9WhFiNwn8hsBpDhPn/RDC1IlSjSK8UWlzHbvDVY7dbWx8qQT
	 nlizzqLdQ306w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDC7CCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176228759357.10316.12516106073679127732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42f00abbcc602ba7417f3060b98e7fc5f50903c646adead4d79f6004652c0ce5
Date: Tue, 04 Nov 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762287593
