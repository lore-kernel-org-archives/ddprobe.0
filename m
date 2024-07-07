Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 768A08814
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 21:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720389383; cv=none; b=XFwCdBCe6KGOc6SoX1/V60bJXq35QsJczitAmF0BdxknES+n8vz9mggioPRLUegcbRQ7hNVl77U4nrTjEf+VOrMBQ9/L3QW4Nqz+g6VXhfs1siN4EUYMSHF1DG5eCNux+K7Y2K9KbNLDoN7DCgwoO6V8dIqVN8OUxjA8ZUdN4x8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720389383; c=relaxed/simple;
	bh=yljM5NexoWgdKPN2l3+Gl351KBxAwpcLG8PuTsZfLgk=;
	h=To:Subject:From:Message-Id:Date; b=PVzT+gBRz6istAgGByYL4z4aX5+P9pzkH0lm0zSId+QzmBsx9Yvmj9FAfFciGkwgHR1zeK8WG4CcrrvFN7og/5t2CF8wkujJKoMKwbRsIQ3Y669ym8fTX4FlRwBabAHQaHuwiAllPnsePdOE7cI0gdbGAOr4OV6ITWgPoHDxTh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FP/eLptq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FP/eLptq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F240CC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 21:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720389383;
	bh=yljM5NexoWgdKPN2l3+Gl351KBxAwpcLG8PuTsZfLgk=;
	h=To:Subject:From:Date:From;
	b=FP/eLptq1E565zmuK8dHHWurjkfFbuhJwnIQV9QEBSMJlsIb25HylPwLvNo4t1HBu
	 w9C3AJuUpis1JoExNKnqK8At7F/uJfZrFXeVGXCwgp/dFW2ZYmwX/oDS3ZB7yS2Okp
	 /YnxjsXxGtNeyvNNW205T5kJjG5rT6gikOqFGXoGSyq39SJlCYXq1zzhl+x5UuB3Es
	 0YL10Mf6Nj9Qdq06kSbhWm5cH1KxEjaMg5vamqSIKTSWjWkO/DK6X6RiwUZSq7aZEf
	 WCQ7mwmcTmfBYluIcx4ATQSwyHohviwJ5bg4Jc/vSGHVOmdX7nAO9rvOb792+qWmCn
	 103xh84CDD6AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D92B6C38150
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 21:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172038938282.16448.16798488219501435078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d062c52581e4416dc8a5919780cb3ea1e2ed781040b66c28cd161d8bbfd29a05
Date: Sun, 07 Jul 2024 21:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720389382
