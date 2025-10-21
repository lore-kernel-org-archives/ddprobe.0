Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5EA2F49EE
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761053394; cv=none; b=lIbIq8YxPEWNpPatUCFHx7tVrneZF5vyGVWoIvtNolfgjT3JdJ3/EnihkjhBj1zTpWmfhiJt8Nn+uLuxWzarr8BZA4FOZtI68bmCox1Yz4D/JU9xV8iqSl/uq49UFT9QAE36Hua8Pyj0YmHHT7CjMeZoRxAnGaKVS78I+9zpk4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761053394; c=relaxed/simple;
	bh=cJHdP5UsAimKMTMyqqUSkl/rY5G9JvOE6twaI3r7gu4=;
	h=To:Subject:From:Message-Id:Date; b=bPF/VAupDeXc+G9IkcP+U0o0sdOHdElSSAr1n5PHsMBgElXQeOcCjbiZDYE3hWr6ykyR5ACbeFuGxHVdcsKiTTJEDGr0FJ2hY2MLmsDZt9aUYgxtJoAFchG2OfxLdGP2aYeAAKWh5penW9p9f1B8UFgK7ckWmPdTzkRCzS9ABhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RoUNygUA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RoUNygUA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5ECEC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761053393;
	bh=cJHdP5UsAimKMTMyqqUSkl/rY5G9JvOE6twaI3r7gu4=;
	h=To:Subject:From:Date:From;
	b=RoUNygUACRWwlWU6fMc7fxDowGBS5QwMO28PSwjzL0SrTHVzr1QzqbLgxsdiIjuOc
	 TvZilODTG0q8FJWPfIWMREe6p2iGXoYsIcI6K0An1Equ2ofOMLyPiFXb+AnrjpIgTx
	 T9hy7tIQirQaWMSj1z/XDlPGEmgm0oLkZC+hUn3l1OynUPaOHZtyzWYJFB+mwpF9Kk
	 jAFsE5FtELgKTm4ZviuzBfumJ4n4PBJlRrEK/MtZ07ADEF9Dan1Z7iHB5kg4Bu64LB
	 Q1Y2eq5E6rCf03MzIwph5ebTn/IkkblQlOkSHzVpJSxg6f38bCjguIFxUrGL40MQik
	 izjkSc1A+2YnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9450BCCD184
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176105339359.17364.15329536096687788590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce8e2d09162cb30f9741dc0b397a639f9e036e4672104a61a4ec032971a4b8f9
Date: Tue, 21 Oct 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761053393
