Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181F237A49C
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771884294; cv=none; b=akXIDXnmu7y9JrZhAyhjch3XUKssirOOF00WxxIB3ne3E5j4wT6boTqbUc+SlvG3woRJ+fI32RfYA/XbS0GSJTVMLf3LF9Grs0Xv/q5YOpWwQ4CzJ626o1JWNes1oquNtGz1EMP3+jqe5LbX3Eskk1hj54tqSNnBWzELPSL6uS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771884294; c=relaxed/simple;
	bh=vabLncryT8hUkg0qZSH0MGcGHLGTOWXvGsbkg4LDJcs=;
	h=To:Subject:From:Message-Id:Date; b=XzCfU4fPlHLsVhvLjker2FgfgeHM/BupKUjapMFcWFYXGDdY73NXbUHCwFeJHkeVTe/pLLDUqWuEHj6yOrg+qn5DBZdFcEOBxHwIUNQEwLUrxiMYBvsjhnVMY+/m3IWygdXhv8I8TPszA5moAValNS7kFIURkDCzG5tOd1FCyFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vRA9O3TZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vRA9O3TZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08D9C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771884293;
	bh=vabLncryT8hUkg0qZSH0MGcGHLGTOWXvGsbkg4LDJcs=;
	h=To:Subject:From:Date:From;
	b=vRA9O3TZeA7aysPP+3IlTY5Yw3LegwjOh7M5r9q76dVRIwizpCmViCdUW/gsbg4OM
	 QfES1WtnQjqdrWsYhUkrY2ye3oGgYZlyd2IFJwnFBz17dBjnFgz44lDz8oSLiN3Oah
	 7HUs3brLsbHdzPzh3IkjfA2BrJqRAiVmTE8dNFGjFyO34/wEtLSCBLPl9td3b9PfVw
	 Zyuu81hVhfT7U358HsUS4JUhTVSSXygGsCdLGo4kM91qiQ1X6RtYoT+U3y8TnrWxv1
	 jznTqRFJTIol2tomA+v728KndGsLaWDYoia90XYaL40Dk0qbKYmtdQqWsJPErhKFEF
	 iyUp9aZFKFGNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D334EEC28C
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177188429363.6423.493551815262297149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 085e845af99343d565180b11a1a416f2ce518cf771ad6eb316b3c5417bb8f84b
Date: Mon, 23 Feb 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771884293
