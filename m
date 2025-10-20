Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A8332F6933
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760964594; cv=none; b=OVMi8x67eRbKDjim8VOFJ9iOP7fg/U/cpWBQjVj/rQPS4cURvdZkLvpzycuUD9R0nTaDSrXi1rX/CMYTEqnfit3c6jR/mO5G4GCJSsB39Oo2QZAoEqJ46lj2J3jRDamKFJgHwr0xq+rWt+9c82UeeHyYhX5sVSwCQcamYDbPzK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760964594; c=relaxed/simple;
	bh=ErKvLSYYW5eFYvVVzA/j7Z7KxlQFgY7qeTV3Wv3Ysk4=;
	h=To:Subject:From:Message-Id:Date; b=PQCOk/q8ny9YQg5CI7wyhGX6abU4MQNRoQARpDnycRez1OeDTpkzdkmfT6QeZbDIg/RCdOZtd9Pim2+fkMfpkoc0WBiGz4Cb1wogX0NuGYzaIxEtI0qBczb1UMNx7mF/UkdrGLAlBaCM/LTWPK/Nf+JMG7xQCJadB+24EntjjiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8u09gR4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8u09gR4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3368C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760964593;
	bh=ErKvLSYYW5eFYvVVzA/j7Z7KxlQFgY7qeTV3Wv3Ysk4=;
	h=To:Subject:From:Date:From;
	b=p8u09gR485GVmPJcH6Gu0qop+OS343VOtPr6uQSnTr5L7F/0XJtADiGBQqVSXCGe6
	 21sJssG9RB4F95wJOQXuSiHyE0aVBrvRc/PAS6vHeBSQlkxLa/bcNfKTQaDxNya+5E
	 H8zlCNLQTY4Mvo19KiIQYLWCLIYavZn30Ad6ZVhZcfKGrE68OZrtjUSqy6DKyjhV/T
	 fRfFN6d9vyJpv46uXXQYTfcfHHkKnMFlpcsS9gq9b1ambsYeARqhiar0sM+1KCoYHc
	 tKv4sN0l9l9cLMnxo2K0L3D1IZ2+VDJ2629DaXNF7+QVCLkEYRcvjmKZlZxh7JYgic
	 KYajimg0joJJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92356CCD1A7
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176096459358.13832.134091020305921795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01c9b3106723844ffe867cf55c77b16e6803d2f44ddd3c7e28315723622e7290
Date: Mon, 20 Oct 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760964593
