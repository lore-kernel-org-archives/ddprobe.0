Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDC819644B
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762351194; cv=none; b=dEyY/ENaQcQsD6YDwuSdYoBWRWoM8aKSwqMI6ynM5HIZLPnMcVpCgHaADLDLgw1yaZuLp1qP8ZWWN0IyS0f8MuiouRp5/uyvg/Fhnz0i8dfd0hu3wmPFbY46d+FGOPpdNbXqRH4DdX1BUt+CK9KveCKot26HyWLu5pIYttcMAJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762351194; c=relaxed/simple;
	bh=Kf1T8Qln1YB6DJTKD+35DYad/M1NVDiVEHAz5IE1x0U=;
	h=To:Subject:From:Message-Id:Date; b=j75JUTPSEHtb/Jl0L8lXe8b2zGmT4NgGIoqkQTaFgoJmZd5IAB8yAIaj9QKKvezbtIfBa92ee1U0Leu/KreJDlCCCSC6oopsW00cVFIhF44EkKTSMYE9E/9OItIlfyePUfnEnBi13g4MbmQCqWmXwn+Iyf2ZV2zsE8RDeDHCbZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8XM7jj7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8XM7jj7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4431C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762351193;
	bh=Kf1T8Qln1YB6DJTKD+35DYad/M1NVDiVEHAz5IE1x0U=;
	h=To:Subject:From:Date:From;
	b=G8XM7jj7OlmTDOZd8wuMidN8dribP4+HAyNtjsruBOgrrx6wFP6zkOdkkfE46hWwy
	 2DoXGqU5oHqKDMBwgjqo2UW50iL1MEhAOIhh6Rvmt9jgDCHnEf452kS8FqVCYuFUUx
	 op8N7fvq0guUjgs+ASHL/UDhGYqR05zBX+0ABhr+Uy8Kz8oTOcY4eedIYTE0VyKM82
	 GqwvwvsYa9w64SIT2D1ALrxax8vAXdHDy0uEZpa7rbd+hNb84zfZEN3agRpoLSQsPp
	 nDyHvEuMUWyzyws03aDyU8ES2JzI19LjAjjAKC3gXP9AvU7wo5ab5RkG+OnQkOKsbp
	 5b1XxKbPnJ3lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EC6CCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176235119358.23122.5348231112011491288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4dbb8641d4b816bc22ce560739cb8b5d74e20087f09c4a12678f89b585cf2ed
Date: Wed, 05 Nov 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762351193
