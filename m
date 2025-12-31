Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2540E19DF62
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767141234; cv=none; b=uOra7JfRbfYGa91PWnGOeGSZbELKxu1vwqfvvw7Yh5MIgiRWLOyAiptPxLKk9QmlAjgkpOj3PA3aDvKtlWLGSZs59RMGA82VCYhB3vFPajEllLCwAFDWeDymHedkFtVYNZK1ko/Ex+uzT/It4wp8Qvovy01TC81u/VxTMRz5v44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767141234; c=relaxed/simple;
	bh=hxV0uJQEPpCjgbuSWeTxSuioqqYxW8Z+0UaeejFNsTw=;
	h=To:Subject:From:Message-Id:Date; b=J/l/utYeUEQAYiTXT6l1a0kIVTezfF12mzxHZ7cpkhTZRmjd6dGMI4C9x5SdmDVAJmsIMI0aEuS3QOwilyVJ3w21Ulc2EMkOliMaH0q6/VosMgcMLoCffPRdLBNxpIP2SAUt+gaCOZi6CDFNkHOK+6P9iPlLzPzShjFXUR5KWyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mesPXo57; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mesPXo57"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54C4C116C6
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767141233;
	bh=hxV0uJQEPpCjgbuSWeTxSuioqqYxW8Z+0UaeejFNsTw=;
	h=To:Subject:From:Date:From;
	b=mesPXo57be9mPb2sjOGbyLHXjlorm1QjrTatbaz6YQ+MtpAILAdu6TRvcCZ7H63ND
	 /XglI0SoZEEK4gX3t9Ie2L0Kd7VKUBBGpAPQ1tJc1KqoTyeAd6rYYkxiRroiCi/WSv
	 Vv+RBV2m6FPwD3reGE003hkLZlQ5vD+z6SnQpeN/5pqKbYBLZbRuheesFo4Ows6mgu
	 bNeZ8Wctyi2Og8AmVKkLvDm+Bk5duUtFad2drMAkbpnfqHZRzvAfuiivdqJS/l80vc
	 JyUeIt3rYNkOSoo8MK2wdFcie8tvGMsFVgwgdSDeoaHJbACsxIfbZ/6UW4pLO9P8Tb
	 Zw4rPOsC/Mitg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947A5EE57CA
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176714123357.27027.9348348059603898465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcfdde456700e29fbb7f0713b1dc9750a47a3ae1c3885fd72f359443ac14f39a
Date: Wed, 31 Dec 2025 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767141233
