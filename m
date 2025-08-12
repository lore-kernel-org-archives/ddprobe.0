Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E54F2D0626
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755028794; cv=none; b=cm3PD41Y1BYP4ZwDD5Mi4dmHuaijeMuvF17iOZS05O3ZRVfxHxY6r0QOHJJv24KRydDIND6AS1x+d1MpUOxVTxYXN6a9OW8FYKfwqkwbUeNSAzYgKX4L3oJ1mae+ECeFfcdjRAhfQcufhetJgYoHp0jRW3/QRtKU2H26YpBZc/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755028794; c=relaxed/simple;
	bh=BQhlz3B7K1Rh1tXuyqOXYbgkjiVvJMQm7DqtsJmbRAA=;
	h=To:Subject:From:Message-Id:Date; b=FZPG2Qz8r6L7hB4QEpiKFBN7yWGmvHKWWZkK/TnkuFKnRo9G+TIf3S1bY9LQhfF1IbgUZwQHDksBsP5pbBZxFdv3MbT+pLOHjetbjimezE+gryvJkp/7fv/x3cR1zqKz47yS325Smm0h5wSV6koK4TALi4FpSGEbO7u0KMcCZU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hY9hExzs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hY9hExzs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2756C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755028793;
	bh=BQhlz3B7K1Rh1tXuyqOXYbgkjiVvJMQm7DqtsJmbRAA=;
	h=To:Subject:From:Date:From;
	b=hY9hExzsL0BY+O8AjnuWZuDyayqoypWncJ5sy6QW1V7ML/KCWQ5kf7R9pNI3ZsyvI
	 81ZlWRCxdrUQhbbBeFYipHbj2bUtt21Z1b70hZsVcJZYJtkON0rQxtWlqEdgf5xvIo
	 JQI2D9C7M01o6mgi7rhnr3YLQo1gifAa76WPb27/Ag1gnD6ftCzOCem96e9/j6pUh/
	 GeT/AseoRhpcCcEEAJW3BKugUaac0XhAy+4sd8MZT76xwdp7sch3ZJos1gJdVcmblt
	 36SsdBT+/oNDMlov+ZyFzIQHBqzedSYkHquaGACbEPH9FRYpIZlKB8jTHleAnzyLTw
	 /vJNP1bjj/Pdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917D7CA0EDB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175502879357.14295.12866484356436880350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8807db4122cb4f61c6e192cde1c7aec2231ed2fc1e2e3de26ad30067366d96dd
Date: Tue, 12 Aug 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755028793
