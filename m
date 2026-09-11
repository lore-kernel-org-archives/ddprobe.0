Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4404120D4F0
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789105234; cv=none; b=TD93vYLyuoB/MbzH7EtM54YWYwD6i5PT2G2fxiqUDR8Sn6eOPErqHL6GWEbYrRzEZMZtUE0jwxdm1pM9Z+BLrvWDNzNqcLWgUI+WTKot7HLo+f2S28C+oxWujcIvx4P/MhQfWBrfc6sd29ZYUjrPCQU01tOWpuXZC75SpoMbAtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789105234; c=relaxed/simple;
	bh=CV/kt1lWzMf9oI1v7mA+2q3xlHQHl/AmiG50RIZqRmE=;
	h=To:Subject:From:Message-Id:Date; b=rLCpCXJpcqV/JnSCcLPXOoOe3v8Mm6Gj2XHzJhrbHIvZZjMg/wGe7gJNquTcJSnDfvb7xmMRFRVYh8vNK2cRflCTQ8FfpZTyoPWAWHn1ZyA9u5T53TCL3VZ8LNc4jhjj4HVqCxycEZGdxbCh5ZhhjEIe/EyUxrJMOBn6V5fs43s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfYS4Qfz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfYS4Qfz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5ACC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789105233;
	bh=CV/kt1lWzMf9oI1v7mA+2q3xlHQHl/AmiG50RIZqRmE=;
	h=To:Subject:From:Date:From;
	b=sfYS4QfzzLv40x0VaOrwXhipxXAHEwxf12c+2hiaDJq3j3CcXazE0jo80EQLtDEAB
	 ncXNcfIK7mAVXareCte2kH1mL3Fdp5mlJtXFpvl9AECMJ5bHu/O19W3CmD5QJLQFje
	 QrE1DHWAF9+DmQxt8GPM7+WAKpXzMITkIQi/wq8XSRMmT4eqlNyZ6+FE6UnHxAQ7TB
	 3XQl8Z19FC0up+nYTXgQ17m04vvlXG7lDeXagzLBfYNXT0OW4j7abY8g7MkL4JwAB+
	 KJ7FEpLJUSzHWftu3Y0hbnB+koqtQ2AxYgiuM+XnkeJGBpFrMvLym0dmtmMZoko5Gg
	 DuUW4ALfjYR5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD47C79FA1
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178910523369.10029.11760773215537334766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94aa99d4a42fc77b427d1e8f291e8426748c412ec0365fe88d99dc6366bf0f5c
Date: Fri, 11 Sep 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789105233
