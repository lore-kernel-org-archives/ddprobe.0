Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3911A26290
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 08:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775463334; cv=none; b=cpQ7ebxPzLHA2jdDqcOT1ACtbawSIkedOBwLhJbKa43xm4+XhIyB7SdGTh3Za/alY2byXIBbrCBSy/dV576tErVKUxZd6LUAk5nT2i/3wKTGp2l0DGTaHf3crKS8NWQ9M+xbN3ab80qVLKfiUNYOdrST7+yL0XT1TgyWLFMIeq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775463334; c=relaxed/simple;
	bh=/y4OGkAzzpRMQZKOu8Otfrsy0p10cODA7cuQ9f7tAnc=;
	h=To:Subject:From:Message-Id:Date; b=W3mBbdzbGJlIAtPMxP/kMBcdp3jx5xCpljWHdWYq2cVoC0p0BGKSvLNnHmx2UvsGrHUKj+oDPKus3VbONH1j4ok4VmXoECC7zMGlTdx98nkfYDuQ8K5tkvjCKKIkYszTPO7pmKfi/BPjL388p+T9dLtPOA3x6YLpfCn7g9jMFWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A9BCS8bz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A9BCS8bz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7FCFC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 08:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775463333;
	bh=/y4OGkAzzpRMQZKOu8Otfrsy0p10cODA7cuQ9f7tAnc=;
	h=To:Subject:From:Date:From;
	b=A9BCS8bzc+Yhm3QL8KDW6b3Ffy1m/1esaIM7yeL7uP5DO5TBfktj7mYmLmNTg/ZNU
	 fm42Fl+8PtbOICEp2YuKy/Aun01mKob2CRNjxn77IMIyONlFjQg1ZV/QaAsaKh8Hoh
	 WZ6VYN3e9gycX9uhWnLFIz1uShyOqwEGa7fwvvXP43NevEnujpgvGL71rO2P8asUNf
	 m32bBt9SHpJWEdCTtY8RFF/bs4uFPe8PG0NpAzXEDhP76cEhfExBgrGUWcPW4FF4+X
	 +HTyTNZb0Zph5U3X+VDYJsxIKZOvmB2+hFoPAUc+B+MaBApwpEEY/d0CtalAOae0NC
	 7Nnp9mjhV1dtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B010FEF4EC0
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 08:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177546333369.28555.4386388345339518102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21415ddd89fb2f453b6aec5a3248f902c7a7db5fd788cfb008bd5f52bb77123b
Date: Mon, 06 Apr 2026 08:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775463333
