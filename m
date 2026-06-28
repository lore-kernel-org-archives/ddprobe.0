Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3147C270545
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 17:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782669514; cv=none; b=AAuPerfwEbGhTTYvxwfk+DW5K9esHZCAgLgWWYtfTGCNdpcFYXgWIcGsthKWd7SojRkXVlO3NFVttgMB3Q1PwrwprtyOMXoqCH1T8yVzXbEBfvlOSjGGKK3EQTcFzKUvP/mnU+REaYg5HOkLRZvXKQg3Gsgp9jcLOo5ZR4M/DkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782669514; c=relaxed/simple;
	bh=zHnKeRWWnJUfR3wXLmDpv+Ct/sUdZUzx2nOy0c4McEY=;
	h=To:Subject:From:Message-Id:Date; b=b+V/BCqgdR4hgMFsDO9AMoeWlAqfjwDVgLpZg6+u4Bx9ktBuqsyVRLlSxytcwi7s59isbH43SOVa+HqfH+KbuiALgklThLwAb1ncGkIMH3HsE2up4netRGVQWneaFBtKk1YwF9sIjJ9P7vIcP+w2nfQ1k4NXyWR5sSHDZcg1PjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=seabCUcd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="seabCUcd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF3B9C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 17:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782669513;
	bh=zHnKeRWWnJUfR3wXLmDpv+Ct/sUdZUzx2nOy0c4McEY=;
	h=To:Subject:From:Date:From;
	b=seabCUcd1sAjnY4Usg9g8ER4IscML+V8DvMCCa0/a5nP0alrC5qu+x7tJlBbfEGkT
	 XMH9/vpoSXEwoLfJyz1Gsw0h9pU/v6niqJ4J/z9mrLEyeRuKG2Z8fnUR9n7WfbEd3Y
	 qUH4MfcpcXncN4LMc0Idiym4atKkbKiyzwd1Byo8tspMhlb/qVLdUmgUR3yHZhulzu
	 /hM9pPoTRJUxfBhokDi7A317TA3UskfmsLE0zCRMbl1BcvzoaM/V9DZoNh9gvwq3UT
	 XSql4X1rgdWEj3ksKD5D4ubvCVWwddH3yzPmMpFyhvtRHVdgsQvL32xw7+u7+thb0i
	 TE1uvhmNixhJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE32C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 17:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178266951368.30609.1566905001982506301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5a1aab70acaf2cb45403a70a09f2d53b48ac689674d9d53d4839a62b9d8cf8a
Date: Sun, 28 Jun 2026 17:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782669513
