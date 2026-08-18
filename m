Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407C92E62A9
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787029234; cv=none; b=SeyxY2GXYI8J1eAl9d++6g4mIwibju48FY+K/SQOk4FwdJqHehTN0Xtj73V3t+4F5Z1KldBp3cS/G6iQUcmTIl9AIGPbfhXTTBR088Au7BVC0/Ybb8lN72pGJzmAXlnHSSmRpEUW5tYNwm0TV2+oomKYVYowDKx5zm+F70/pM6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787029234; c=relaxed/simple;
	bh=8B/bz5e2Msf25Ez+D0b29z6iPvUAQ1ONRVwAjyUtzaI=;
	h=To:Subject:From:Message-Id:Date; b=mT1r4Hct9hh1L2t95S9nOjHQw0okn5eB583Onfs5kkIHfUCAJNlnX8XTJbzJC1BIN6XOq+o+UPGaC4fwnejRxXWDfSIPWXUPWN7tdM6EdfpqH8d0SBRNpyGQgNVL9xGoMneg3IzgCiveIimA1jN6nBCm5JV7pjFbn894D3J0r+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uC+P3QdF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uC+P3QdF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0D7C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787029233;
	bh=8B/bz5e2Msf25Ez+D0b29z6iPvUAQ1ONRVwAjyUtzaI=;
	h=To:Subject:From:Date:From;
	b=uC+P3QdFZZs7xbf5s7Vxfl5iaAlEa8uwZLbPjuNsIAHIBbxylBly2IKpeus2P/OHx
	 9OcuExmVgbVAe7llmauJSqXK1z6qnOGiRs9HS9PR9gBDWZMD2VeiB6nQEE2lHRsuO9
	 OH/q4/zo4RgTSAD98dcRMd2au4Ht+1j6LTsPqm3zBE7vuuu+cSXQOePC083rPZnQcl
	 wdELzqIyPpZofzkoGkzCMQhDxgUFKY9jNGCenWXwSXNtGos8oII1dGjZ7OtBHEPsqo
	 HJmetbdgjZT0qtBw2uZQ5BJG45twyrL0AVbqLXB9V2MmqhrARutlbdTVKktqHTFqsm
	 3gZtJ/BozNPPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5B3C5DF67
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178702923368.8287.2739679414070867222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efc204979bbe2c8bfb092e40d7bbbc8f9e91545fe071c111ff682371f261bc5e
Date: Tue, 18 Aug 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787029233
