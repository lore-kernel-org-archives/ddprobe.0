Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223993101B6
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 04:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778559034; cv=none; b=A1DH4lfOxRM7/RzSArmchebd6QJl3YBuAb9FeYJuFKx7OILzoDUnn2GWn3tY4VoMrFBV0FbMbGOurl8WtblRlIxFc0GUdss7pXsRwe8Lt47/YXNx8ohmXkd7+MwQQxblr79JjdNCIgRwnHniMYAO5QBYF6UCWL5bwPPzgLEwzTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778559034; c=relaxed/simple;
	bh=LPIxhl5hjwtRCYTrKVWi4IyOYuKFbIFKybm1VpxAQTk=;
	h=To:Subject:From:Message-Id:Date; b=RTtnOcV3dwXuGpKhzwALI9zHAXZWZu+tF7IyODWYsCb9a49/NfRGZEsWR9SbiXOSXDKwGXf1XKJa3oWrp7fMU9TqMqNTooLB5oWBGIwR2YF2fjM5KNsVZAfmjL0eZgZ5FuvKiLZ1nC1ocwRJsfncuf8hSnkVSuUEm5ioh5cEvaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OqHM1USU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OqHM1USU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA463C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778559033;
	bh=LPIxhl5hjwtRCYTrKVWi4IyOYuKFbIFKybm1VpxAQTk=;
	h=To:Subject:From:Date:From;
	b=OqHM1USU9V0P4h0PNhwL2S8ApZ88VPV39HQxpYq4tRCwMgwMGyPUnNOMVPC8kWGDA
	 Hv8HSEh+PKqkf9rvHL9SC2Wx0qv2uGcGnW8xj8gGj/PE40hSyqVP2NSuMEFiC8iNtW
	 QzRpVFPmTs6OYUXq1/3OpVdfdRjDcTFRRUqhMMHHtNihw+Gxn6FJlzfatMvE0qmmyG
	 xpJh8LhyS58MnZrarUSDw5mbQAUKnFwV66WIQ8ZMxhDlW5JRYmzgs0eKy1r6CduY0T
	 laVZSXMemfgGgmO935xIRKjloSRWP1H6UjAHrCK9O4ChHsKAvoNBEk0zeuZemAzAXm
	 Ra7oU5522ZdLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA378CD37BE
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177855903368.7915.17998726096467339449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc406e9c032eff5c64cc9b3709649483f27cb80cd7d73407b18de1ddec7f0b88
Date: Tue, 12 May 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778559033
