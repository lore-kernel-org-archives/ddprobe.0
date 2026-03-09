Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00E9E3783CC
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773053094; cv=none; b=DFun7/wKrBZmLgs5ocyipaDZtHTAvEgxSGuDZd5r2kuJwY1t3A6JSiQtUjEI/APepeupgoxRHgB/CtMzFp5DY2xNiRvZNvuXDf7LBj+1uieJ9ucZ7HzV/jgkQZqyLrfy8WteG22H+prP3dKPMECHmWRYNP0pxKwE8gUKK7DTY7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773053094; c=relaxed/simple;
	bh=VHMwBkUAcoPf1kkw7E9qVbrEmnI8Si3e3fZcMxN2klc=;
	h=To:Subject:From:Message-Id:Date; b=UFv0GDJ52f/ing5/JIkKHaSNWoYAVHIT1xl9N2gs5nqvxhvKAc19Fh1ZuwjUc1MM8GsLFYhA9r0rxKwOMQElbpUSoKZDSYZ+JqAs/BSedL0iRp2zAzxh4dWoDb2Oz+WvTa/2Gd1GK+yfJLIGdDRA/ZfQbVH51MFWi9VuYn4WiBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+Eivq/X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+Eivq/X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A486EC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773053093;
	bh=VHMwBkUAcoPf1kkw7E9qVbrEmnI8Si3e3fZcMxN2klc=;
	h=To:Subject:From:Date:From;
	b=P+Eivq/XSt7sCqEx90ZujnHtVEFqacn81iACvnZtXjgODYNVCLylVQs1BkXtD0dYt
	 kPo2BOQcfSn3q+VhD8L89cjxMBlMVVghstjju67fmGAQDqj8Kmdzf54ZZ9PWIfeTqe
	 S/m1XQDrXhIgQN/q9QXaQfFRLyCNfTSxpBd3cwz+fPANOKjLmi3LjswEbUsiimSBqy
	 Q8fEKzS7M676K2RfBl2ka2VBY0lO30RCBPmgD5K2E9ccpz1hXTE/nitAU6xNtTjqdI
	 sPQ6y3+K0UoxVzUpSxPJmYgGVeolZKFyddRo22FjB9yKd+qilgL5nWkiZ0m4rc8UZF
	 ehsb6MSWJGLTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9181CEFCD93
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177305309358.3740.3341466518788745385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 113c365bb5fabfb47f184a4f148c9ad5e947ff4f3e88b227518f0bec14762f56
Date: Mon, 09 Mar 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773053093
