Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACAC402B8C
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788500434; cv=none; b=ZhmsamMfCXdEeWwhnCkYuYwkrYe6D6nn4G9VcZm3B11E+7S1wy/7dFSBwO+geqsbeI2YxxE1+4iLoouhAB08VsMdz0dNf7hV0amf/4cx8oLMvgoBi04+h4Vhx35R1DrlINV7iknFgDz7YR8rA2DcZbdvug5pFVARCH7RiIjYQg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788500434; c=relaxed/simple;
	bh=tIhJ5+HHE6eb2NHiaGMK7iTfKPpE1kzaYgF8RHGIO1Q=;
	h=To:Subject:From:Message-Id:Date; b=nC0WUbmfvF36WVjFT/BMsDfuLNUJ/UR8mtH4ecRTkVOkWFFs1Ac3cnnAcWN7YwS++EVQEX0LPTVMlyvIYeZXvMBc9cbIGOI+TRU4YDwT5FclRPD9IH9VBmi0SckrJYtgNhy6EaEzzr1blDRi9Lgy+8WYOgSvjOsexampR9jrujM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o7bbWfZS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7bbWfZS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2451C2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788500433;
	bh=tIhJ5+HHE6eb2NHiaGMK7iTfKPpE1kzaYgF8RHGIO1Q=;
	h=To:Subject:From:Date:From;
	b=o7bbWfZS5g7n0dU79SpP28aTE8kRVFzNoru3S++0S+UYaIhSLvTSu73breqm3FgHz
	 zGNy92mXr5/+tZZaPNeb5i3q4VfnJBpv6BpC0o6BjN4XJ9RJcfZsYZwENcg+xTZ7S7
	 ygH6VJf93fPqCEWRiJNn0yjISJQIGZ2rfsPrdsecotmDxfFlfS/YzwXKhbUwecJn7k
	 PiHm94k7WLXBf6PM1IlbUOTXZC8p3rPzZ+GskQBgnD8dTEnVa4EMfCj2wheCg2g4Dc
	 dlYIHbVGKhkaSoKreoP/6RjZXKCmPuFkisaI0vy5KQOmV5gmBIiisI/IXMJK479jL4
	 gikRcf6GLgZJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF58CC61DD3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178850043369.20314.15846707336704697994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1add21877ab2ebf0be3baba9f4fa76caeafe91de19e4946e078ac8c029cb27b
Date: Fri, 04 Sep 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788500433
