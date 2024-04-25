Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3E97EF
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 00:41:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714005683; cv=none; b=AdKgy9xoxKVbuwZT5NKodTSVBaWMRzsXkpD5zyraWOB5ET9at0WYk1JWdww2LOBFDDg1lria8CaeI9l+BBKmd4dIt/h5qwbcVaMagoMzNPD5SQHbqdDdZxK3ysFY7cRJMibQj0E3WXkj7932pZ2HoKK9QV/yJwP/wVFnsP6hCvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714005683; c=relaxed/simple;
	bh=WqsxnA6OBN746gCsbBpNEPegRke7j8pnbkhuUUIewNs=;
	h=To:Subject:From:Message-Id:Date; b=k3+JFUhCJu1V1J96b4jxOqHpJNo1sHNQlTIguvFIwBSct+U/G7zJpevK7iTgg0JmxL62cpliVFdWnLRDyU60T1etCBhoO7QftLlc0UOUU3M9BmLohqX8dIRTr3HtcoqAJ7KTaQTdYXuyV/8hQXwrIsUnsUQkk62jwjNBxiJklbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFD26Ycs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFD26Ycs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0BCC113CD
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 00:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714005682;
	bh=WqsxnA6OBN746gCsbBpNEPegRke7j8pnbkhuUUIewNs=;
	h=To:Subject:From:Date:From;
	b=VFD26YcsjlrgF/f/KdBtB7//eDcRwbiesu26CsOSnTpgzhfmwH+FT/f7l5ev2PJ2u
	 K5KWObHkglYsOeU6aFnV1dtE7664PtFFEGz1y9aIWjaGWXaC1WbjA6tMqmjKTbBy7f
	 cvszclgGAyTVFK4PAqg3YFJNc+gmIFg8O2fiJ2/5hGaUkSjwmQIkYWDVb7srz6R++T
	 oooxU+jS6MXZgR/E41IphD5vcoZ/tlzT/SgIq9CtvwbOu1dhUzL4qOwD8UnNlCxkWm
	 OhQpXAH0PyVsuy04erujTV2ve1gSZg7ThvxLyGNzWbcyRWsFI/GJhkV2cj7auwBInR
	 1sxIC1DyOCk8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD0B6C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 00:41:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171400568276.18340.9161495977799585197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a82e278f4393cae33d2ae60e2bafe6db1e5fee82455b35e36a715bad106899e3
Date: Thu, 25 Apr 2024 00:41:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714005682
