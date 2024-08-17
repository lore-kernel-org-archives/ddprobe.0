Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE9D312A14C
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723880754; cv=none; b=sVwQXLYmeqvHmg1YEdQr5XglJ9NMlJmcB2VVbeAMQGa+/51WAvrzJj+KXgu7HM1Czkjpg62H7iFCBhXVJzhoaDJ846dUxj2TWFGP9NLzojI4ZcRukJ6QFh0nVORe1VbV02TYYAxkG+p34CC2YRoFqL9vNRHrbugDGA8BqLu0b0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723880754; c=relaxed/simple;
	bh=tjTz5cTVlb/utHkuiYTH+hRJrqIq7nebJOXA2Sxv56o=;
	h=To:Subject:From:Message-Id:Date; b=DeX+xxSH+n44Yl9JOdfpK4oLw6DL+LneJgfEE9XWqbDJXwIIleYwxggjraIjIGrYEdsVwGw4vYDlGfHP9FXLs2CtPLkc1sGD7MAYcRsE9fNzqneso1Fk14X3IhpO29urQZpQ511UBE0tmIA1nVdyajoVmzcsdrOTtjA+4nvEu9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r17B7ihe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r17B7ihe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2878C116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723880753;
	bh=tjTz5cTVlb/utHkuiYTH+hRJrqIq7nebJOXA2Sxv56o=;
	h=To:Subject:From:Date:From;
	b=r17B7iheuBBzO03FWikfMeK8ZcJAbAwEQEsmOtQLqGjv9buI0frXyJoh4EGXU2v2k
	 NjBsxv88ykBJqftf6CA7AdLL0pG73/aBJF87KrzWB3cFnB2O9XXgDRWQFnoY0qJsaE
	 8Js5DpApIArBfxvlyYm/Gom6IGIBobnfyAhqGZulE6P59YHo4QGTchE8jv6TIqpJaw
	 +nMRduCI3+6V3QUtDlpja1tCnr1wYgBlWUCPdw0aGvAYlOGyQW6D6f/noW/Ob4OChz
	 4hdceU4LgI7+yY59u+tBbkcZ538YseLU24AvtR+u9JRFbVP+dkZbmYLAq4UxOQ4Lu7
	 AYaEmveMFsnJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A71BC52D7F
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172388075360.20868.3441135726754719621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69749df91340e0e4aa3be205a4acff37b068b7e294e1e44ab1ace09e7ae79e89
Date: Sat, 17 Aug 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723880753
