Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE0718BC3D
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 02:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764643374; cv=none; b=BbGxNz33Rj46Wr7Y14wg7aHStuXZ2mqmbXtAp3mfXXwlhYe7UUj5k/vu9k7MNwj6B7HzvXVYkuRjyobTbN5rSGatDi4n5368esVyF/oCW/ysJO/KDd/Orbg+Z66ayHZWlw0JPcxVbyMH7MonCIgzVyHQUJuLZN3y5Gke0wuMl6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764643374; c=relaxed/simple;
	bh=BcIJoWCcJoRDns8nR6M+KQrgutv4h3AKyhQHKKUU/Zo=;
	h=To:Subject:From:Message-Id:Date; b=eMiazCy5H0ZSJs6oP1yW79U0OPgtRMbUr/finb+M3rxkvsHVk4WHkPxusMwR+89MYh5zkLgXDQa0q044JuDEFbYWJyK6QldOPsNurIXRExzDZdH4PVjBI6ctp1DjZndAgzxPkvqxXVGnUR9BfHZn9707RIX9B1m5YUzFWQK+vaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V16TFSPW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V16TFSPW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B8FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 02:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764643373;
	bh=BcIJoWCcJoRDns8nR6M+KQrgutv4h3AKyhQHKKUU/Zo=;
	h=To:Subject:From:Date:From;
	b=V16TFSPWdzbKfSC/pKXlwu2nB+FofgLWu/1eI+9OhvWkkFRAYxZYo+fMisOR1G79v
	 1VtPjr9UcKCBRtox1lUqrt4fvI8sYfy3Xc8CMVign/G4fsmmawLb4OXgrJDWXCs9UB
	 ignV+iGjVZESPqRW+dbu9wV6AoxhHUxEcCwh/BxIcDGcvAEDhOt264vCs4/8F8oUD/
	 ePXzYOmKN4Amai/JFV0ScwPYTTE9V1uRRmX2oWS7kapCK4THgPBy3CK1IbbT5UZli7
	 tqMJOm8qoSL7xdDBl17NuGtlWl+RTVjMd+Z0zj3zqiDz+eSgdbgtwHCOzU458WoSW3
	 nlIggR586/O1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CDAD116F3
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 02:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176464337358.7352.14156101515177243876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54de2b3cc534a436265a94891a0653f8cd22683ad0fab64b4124d99bd847df1b
Date: Tue, 02 Dec 2025 02:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764643373
