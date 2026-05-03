Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8232DF6F6
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 06:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777789054; cv=none; b=AaJnpIlzEHrcGs72V7r2OUtrU7Di0bblIMwTNu3KInNoqlxWIRvt+0EoY+Di+nf+/2a44GN6DIaf+33XDXF87YElVvjN380gvk8To/JY4Ui6gYqWc/8UgotEdzDVlpdboeWBC5TfkUY0fhE3cFPHyAvZTBgM3R0cL8W6qe9tf40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777789054; c=relaxed/simple;
	bh=kVY1PAjs79uJm8u5/JZDYXXFJXLOoOeDssSw5rtwdNA=;
	h=To:Subject:From:Message-Id:Date; b=cQ/IiByX+24D2U1gsGiq81p+/aBLArVSxm0X8XQE6B/oC3c59Xdt31YXiACVErBz3+GuJHaCFXlJzDvEdHzpd8libjq7B/Wf6+lpQWOyVNYpj575YjtP1kGnyvbwaR/CAXHOFfaxLfEZ+ZiheUs3pXUtGM8XDa6YS9DPMPUHUs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQFMlqbp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQFMlqbp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC3DAC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 06:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777789053;
	bh=kVY1PAjs79uJm8u5/JZDYXXFJXLOoOeDssSw5rtwdNA=;
	h=To:Subject:From:Date:From;
	b=WQFMlqbpUOLWydTJnVW6TPUC9qA+h0O8cZZ5SxmNvN2BqosbIbzCM7VgwYfW4dWJ+
	 OrUdaOKN8WWhgwknTd4w0RSt9GNM+lO6nkTII82IFaMN9W97CUQM7uyc7pktoVupCb
	 CJlSIuB30GFdcbcpOFFus00KCvlCJjZcEVAeBhoO3twLjcn2sIERPLXXgwhn7+U05E
	 +rfW+GEnxeKTUEMVjAn7nhflCP7oiih+Mw5ibq6JM6wMo3rlymveDbObCQtGSp1L6S
	 6vFKkasA8l4gUojnuCqPw3JYF1mF0wM7mNkWFZuKYej8u3/W8J98cABIg6Zd6lhXbm
	 2VhmGWzz2dCYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96F9FF886F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 06:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177778905368.11011.1742323608793452869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af87d4b8f937a867afe1753d11b5e48b23b8d534541c8022b3e1b9c5b8141196
Date: Sun, 03 May 2026 06:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777789053
