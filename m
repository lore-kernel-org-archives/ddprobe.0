Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7F5192B6B
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723201554; cv=none; b=j/xZqPk83cGVGJAsvLf+Tofr2sIufXp0zNEx1oarQjwblCWaA7OKCX7Yu07QsLXMjEOiup8+EKc7eD0gbwBmnQqYB13Bl6V24JnsU6oLfKEinMLuDkO1V8VhSTLjYSC7tnR4KGIxt4mPldjEp//Pw8W1oqdftsU2xrXx9yD9TT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723201554; c=relaxed/simple;
	bh=8216RVoGwC5sZwBgUsPGCGUmPZx3pI5UT0X60JuKkiE=;
	h=To:Subject:From:Message-Id:Date; b=M5J0K8W3khgsY5YA5NKK0Iv+76LTFBumz3k8qnvdXHOc8DiaNCkXYohhzWcXq8LptyE+vx1/SCOxAJOFTrY7HRBzh74iEoy6fXtbLZ11QNM71DYOkL+7sY8qpHAQ6kIUw1RFLl99nX+pfPfeTIXNnNuwUUZ4n58ivaY3qzQZWaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OK2Zy4HV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OK2Zy4HV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D9EC32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723201553;
	bh=8216RVoGwC5sZwBgUsPGCGUmPZx3pI5UT0X60JuKkiE=;
	h=To:Subject:From:Date:From;
	b=OK2Zy4HVrvJ278yVrVGJ+TJSVjfVBcTfz8bOeCsVzC4YkLwh6YyOI4+jJXUWudTDd
	 gZ3hesWMb//N8RugWVOMUl93gZzmsRS9RR9sw72u/V3Nffau0BSMO13ArvYwlkyTJG
	 8vdYo2kzqJX5ynwPouDKpHwCd32aGdCZUhV3liEXWH5qfiHBltIXnltn48QbcRQLyp
	 6p1yPbMXlZIE8GWG63BYrybE3tRNfODrCjtJgmc4wH+dELMiXE6Qf4ErqOFkpjgiPu
	 4N809vrYSjET7Yn+JGcwKk1r1nb47hxPa/Qaq8NFs+yOD3W5dHVFgZmGiyieQk4N0y
	 Yan5TGxTfWOjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9341EC3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172320155359.26502.3192971669535524540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b8e6540c5f1bde310024364dfd4d995d3a21d895937e48c56bf3e8de915640e
Date: Fri, 09 Aug 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723201553
