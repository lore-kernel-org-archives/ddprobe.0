Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ABD44A2E3C
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785334234; cv=none; b=a4kYcU3EoKJTD9XhXRZmILKuKz2jbRhf1aQ4dMs7SL+9LgKbQZe7JWQAgXaVOA941K2JIqZe0nM/LbiOpTVCAhNMDQnHRWClNcKYx6to+O2brWSJ/8L6fSwmA/Hd9RMaNf+0ctPO612G9ZHsq6OqZezg/FUUTb9AkkDglXKsfUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785334234; c=relaxed/simple;
	bh=8scEQxWtNSuetYB2DIXAVdkN1QpAIuw2plsI4zTbiOc=;
	h=To:Subject:From:Message-Id:Date; b=XigzMPiKg8YfkK39BUsEhLVHFJD65UcvyiQf7v85P9t/MLQ2kXHuA2QMoM1PzwdkT2Bi1FScskzVOHluOuD673zPDBxfLe8Ie9OlDOWtXXhZIJazcGs7L3yGoFL7GyhDCCUBh74rhDHJtZsJvxMy3+ZNdNsMnF+QNN3bctxV+Ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XafGJio/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XafGJio/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB0FFC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785334233;
	bh=8scEQxWtNSuetYB2DIXAVdkN1QpAIuw2plsI4zTbiOc=;
	h=To:Subject:From:Date:From;
	b=XafGJio/5KwDp+0kwoUh4pSAypTPr8eLejzy6eudOLl+ZMgl7GqpP9ly7Hnz+Z3eR
	 sGr1WeqTY75XJQAqu80Gnd5zRWdFq/tV6ZFZ/aut4nukBU+UInDL9F+sZhUshPdEnC
	 AByD1QgLI/XW0LlY1Wzd0hdaivt/AWgUOQInDk6g7LOeyEYMHtEBr5HlvkThijNxRn
	 pOrJhBXhxRpMWqcLIbwdoewKMiRZwEoR1cVZiOqRa6iy+X0aK9QDliTJOxpYL2Hqpw
	 aTMAj5XzW0D0ItGOtp3V1WY3i5y3kXuqYMBtRWPSHy0Dz+SzHMtmwKUhrU7UkVnxCo
	 a9trZWX1Njhsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A883FC53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178533423368.5941.15498714411254503847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8629c87b1534d9a3d73ad358a1f4ccd8e5280d53e41b2fc1d5a9d12278b6027
Date: Wed, 29 Jul 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785334233
