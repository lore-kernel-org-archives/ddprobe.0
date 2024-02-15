Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05A6B15D1
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707965297; cv=none; b=ryu4qtqyquc1TddQXUt1Q1gC6YzMkxv3YM4rAd1RMI/FWMs63W241YJVtNB188ZQAfNdopMrXYe+1aG1jvKoSFw6ba07UZXtmY5fvMfsXohDdcL/RYMMw+jVJJq1loy7DZSQQMnU/dDTSeo9DgCvaQTBx0qfi/0BNXfhLdRbmGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707965297; c=relaxed/simple;
	bh=nf4K+kTj73hhGPz22hjkIDkfvJm4VzmKCJz85EoBzjo=;
	h=To:Subject:From:Message-Id:Date; b=GAuBLljBy29uelvCMoeYkfV4fdJUk7lcVNlDGteardlacP+V7/9szsgpjQWZEHFo3CZnlBkzovJqZS6V5vHmEksxnCFkcs8/1qkyYGlz5Y1lkXroagfZujfyUmUkurFEwJguvKdC83SD8dF+hceyRuY5tdswqsrAeiXSOM6fyfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZBBNAEnm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZBBNAEnm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89D6CC433C7
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 02:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707965296;
	bh=nf4K+kTj73hhGPz22hjkIDkfvJm4VzmKCJz85EoBzjo=;
	h=To:Subject:From:Date:From;
	b=ZBBNAEnm6rjWVJ7fBNZfIMM1qu+6tPnro5KxvhIw1KOm6tO8QxZZaT25jOyiJYS4E
	 pyJhXw9lKDM6/nvi6rHzy8VN6XsWwORjPARYJvt1tbJBaJCip/Az9HJvzCr5SU1gQz
	 39Eqh2DsDSxEI29SKBzQze/uJkfVs3MPsTDVvOto4LvBTqHOKqU64qDFCesX89oeU3
	 sdpARQ3UhQf63kDz+5DAHQNd70m4lRK5Sj4Dnjj4RPfZYkt0FZ7Gtdd8tGm+UA+Was
	 +0kiIsm07Wot3SavnHXpMJV03OBAZo6mBBxHXgb9QKUkZ80/vfcGJvRyF+MJfBaH46
	 7OWxS4HU09mvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FDA4C48BC4
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 02:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170796529642.8238.7232733512142800068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3b308926e9c92f8ae85794bb766a50dee4a48d181a5dd4b6f1dfa295e1c0841
Date: Thu, 15 Feb 2024 02:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707965296
