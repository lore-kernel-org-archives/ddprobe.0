Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294E12D7D42
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768973634; cv=none; b=Tac7+p6YlM1RHalPCQaEZKtPBbONXWRj2qULpaMMfGEA2SHhA1LYgPibml8D2y/iG9qeOcyvuR2WdAuNhztJw0FOyo/Kg0cWFcnrHsVuJBLRnFw99AYtuMhNuNSEMH5TpyWuUI28bOhTxsh38HeaJjEgyNEylSrvbhZOB8C5+ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768973634; c=relaxed/simple;
	bh=0onX9kkbpTQq6mqyCX4bOFChPkHxH/dOnK7VdgvDt6Y=;
	h=To:Subject:From:Message-Id:Date; b=cFjbva5j+ZSwQWpm50lv8iBkiMuWoTfHd5kPITFHQtuYXtI+v0b3cai3qU3LGfuCXTRZRZgQysf4ns+RaSI43dGkFIaen7WIQvc0VHgzSSXWOFBtK90wE1cs7bU49sg0vg9vnlC0ijVyCIzluVrYZ5QFI4dhsfKwbNP7SiV4+zQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HwblmiXy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HwblmiXy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C9AC116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768973633;
	bh=0onX9kkbpTQq6mqyCX4bOFChPkHxH/dOnK7VdgvDt6Y=;
	h=To:Subject:From:Date:From;
	b=HwblmiXyL72hcQWHOlPm2rHVIVR6PnoHjpUZZyJIjxyl8hjeeqVcLzjy05z9VLMWh
	 sRk837zgmcIQpJriR2w2gVK129deicTkOFUYnpjND/4IqV+OXYmx+7pUF5RFCmEKew
	 y57eajAshSRPot1mkllAfEU3Vj9182+6XUwb0G7tDQF1zEuwfVKhZxwE1OzqS0Gm8X
	 gLKFm+SBUmOElWAJGbcCebwsJdya6p2RAc9229EvNhxdOlvc2aWGgQlEDTA5Rbif9a
	 0wpOhDo+fv7/iBpva85jMy7pDa2VSR+xVlBYjpsC/EQSd1ZuE2dR7a64ldUdjsIyCq
	 0CYpNKvDV79KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B32D262B0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176897363358.31607.9200687719379324375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 179ccbcb4047b570b7a1cbbfbccf82238020762cd12a104528997d2acb11d015
Date: Wed, 21 Jan 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768973633
