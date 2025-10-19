Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6FC2E1EEE
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760874594; cv=none; b=trhs+PQf2bCL+CAZmseW/IVjYgSiQketaWdjvr5bCCHIjhEOHjaV08pY19l8h9Z6j/LeE+lqQ++kkWqrdyCFwwxFCp79YqpLStQHz8ltkAedZl/75hP9AkJBaGJ657DjTI8j6Ba602CcU+IJ3hW6aCtZVT+7twfrRyPKGbMzZZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760874594; c=relaxed/simple;
	bh=bAbzNxApFDY9Da2Y84IfXqeCx/tEDTlPnyhdVKYT8t4=;
	h=To:Subject:From:Message-Id:Date; b=cqHaDuYrzI0oiN4kv1jmpbxMwH0G3z4jGl/sWKcbZM4CedWkFqdqJHhbrtTrR2XTlX8katbFLdsT36JtvfEsD9555na++KdH9cycLcZhRYzOI76slrtWeWx5mWUtUvTAjMlffiCmNC3sVjMFYZrmrbzFSKqLaonGp4kGJxcfz5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggBgBe3G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggBgBe3G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23CBC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760874593;
	bh=bAbzNxApFDY9Da2Y84IfXqeCx/tEDTlPnyhdVKYT8t4=;
	h=To:Subject:From:Date:From;
	b=ggBgBe3GSolSc0oDC1HTtSsYysvhVYGtBe26h1H7y8OlRE81hNX7SRutsIY5wrvme
	 xsrb65k4erf1Ffabe8rfYAuwyKc+HoN1sqrf/z0nBtMwPEqI+jcjlRORjlJoCYdM9g
	 CY590xMUAUb7oM0A15Rgd2ySnbav9Pa/TzC31dbbK2QC+s64OAdSBjY26QDkyKJZMK
	 XT/uNtiu4II5Bj9OtSknHBXHTLlQf0FKYQKTMjMl0aEVbLGXIH7UgcBYqPRrwKLKHR
	 AFmeR12pcEB0b9hVNdEMszovWH8d6VVPq3L8zxQveHwXp/DdQYG3MfPMfEeSGNgE53
	 4qzeuCH+6vpGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE63CCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176087459358.25059.16056251304639003219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bc7a31d3c909e02ca2caf0d179f372e93297e045e194b21bec7e5894d92ad3f
Date: Sun, 19 Oct 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760874593
