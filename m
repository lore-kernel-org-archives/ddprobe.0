Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A23E225D6
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749172795; cv=none; b=cSnZvpMp2IecD7biOG0dvn7foPh8IfnlCyHGwcGX67ssMwcBx9uSykoeUq+qJz04Me8knmdkXyAXfNkCC6LhH7MQIq4vuYGUiZ7SeDikucuobLn5P+UQJC3SQ9hKLGURrvmxUvn7xfaD5guuObjES8DEh7SoNxeWYRThtkw+Cjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749172795; c=relaxed/simple;
	bh=2v28JWMKRegj/aTGP/9sZ9snY0H3x/e/1CTk2rXt+O0=;
	h=To:Subject:From:Message-Id:Date; b=Pi7cuwtXO1PxOKIJfWTuLPTgMoBV30KoumTi530JNQ1E2XCE0xHpTNxqH3LSnCca6OwE+rMGH8h3YHJ62d6aSk9ePWgPD1O7PjIcsiQgULUh8VJvXSz/ZacoqdIGjUciRViQg/DHkOFH5yjL8u1/alA7L6zQybOKN7vq+MW/Ppk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mLji7HeT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mLji7HeT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1793C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749172793;
	bh=2v28JWMKRegj/aTGP/9sZ9snY0H3x/e/1CTk2rXt+O0=;
	h=To:Subject:From:Date:From;
	b=mLji7HeTIfWnWCscCJRzU7FnLkpAOi0Wd0b4uN0RTCOD97UQWcfnBiq7fb7RrI2uC
	 3fqSBlwJfBEAXaB/uRyOImxpBjBlxZnm+hnmsSnwEuz9C6eeYRKRO1c9Zw9HfoR27i
	 Swk9MY0+RKeGadf1ebJbDo2etBFNp/0n+uITJGm/6z1kAaQlgI7IFv+yJXqMusS/61
	 zqxI9weGquea3C5tDi2BMh2vZzx3Ls+hzT9TNZb1I9Suy7zQZHhnwhjymx1Yvp+7UX
	 KGgjLx/YZA+Qu2iqevwoyuIpaYYArLqkmmkcgo0XA/1aRAsj+0OweTKysrnuva05mg
	 4+csQaxzl99hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF39C5B552
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174917279357.17828.14209173719916578957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3e8d6acad51b181475ad5733967b859a32599d70878ea0a51e6e2f5f9cbad43
Date: Fri, 06 Jun 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749172793
