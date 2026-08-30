Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3CD2AE68
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788053434; cv=none; b=neoMT34a1NRB/OM9XtxSm7HyJbelJwVobuBVsgtv+6si7K8egmNoNkF9nSAZsd+R9S/GljyxxklH0muJTyilUHySPsAw6Tn+VwnCaA4hPe3c4L8YwitRsyZhdpi1TelxxKE7g4uAdilsnodA08xQU1JjMOiRaVlx4iHe/wBEWvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788053434; c=relaxed/simple;
	bh=MKUC6r7ZKMnQ4vEBeeE/txS2WDFnPlIjqpTMWXWsSWo=;
	h=To:Subject:From:Message-Id:Date; b=uBFsaG6k9gNnwKqBPXRVY1CORqWJgESIYtfdD4W++h5AbYnelo1tUfYL+hOCUg+dh2teXI9ZoKyhZm8yQca846iTPHubAIj4PAQNtCka0qG8PiwqB4DmW6UgeGULj7S271IupSgrr8lOHGwEej4c0nDX7Cnn8WwOkGPCtylj76o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HKf/RZxg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HKf/RZxg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AC0C2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788053433;
	bh=MKUC6r7ZKMnQ4vEBeeE/txS2WDFnPlIjqpTMWXWsSWo=;
	h=To:Subject:From:Date:From;
	b=HKf/RZxgl4OU5VqWGlF781gu/Js7nWiieNXOBaIE9bjcrwj/ce17Yt2q/t491dXZv
	 7lG5ImuPBFRo8lTbjgorlQyx6YsuBJ+9IbqjFvJ05zqpWhqQZW60CbrN5GWH9VvtZ1
	 3krt4JSaPXtlVpboT/ZiBvDcZpi3IsorC3awkSFmP9j2Ax2nkMAkEVBhyGy9LqHC0o
	 +ctGoXDLjSIgKVoCjBIQxKKuMX/sRmBEUxFlS8G5Axkb5FCoVN0ntywWL1xuKUT8SU
	 BO7T9yBhdeC3K048bDS482ASahk0UjwXWeaY4mPHzOZ2G7SWlxF2H7H1BAwwgEsICR
	 Py0JrejODIhww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC714C61DDE
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178805343369.31742.4986411327271070857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a61b32b916be9c45747e4d9ea73d9e8c8e12ecb4cbae75939b8a325f1c5542f9
Date: Sun, 30 Aug 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788053433
