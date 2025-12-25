Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CC323C8C7
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766701434; cv=none; b=I0o01Fi+7mKXxxqIutPOk5PS3fSwk5UyDF6pVs0gHa/SmA6A3hozMbFXfO+7KT0Jem453K61xLhTz3OFtio+eSJecvWXy3pB5agPrc6wHnlfG531ZyxLxN7EygWuIPJOHzSwwk2MKQIUe6cEq87UoGNlethoW4BeF2BqUPgkj1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766701434; c=relaxed/simple;
	bh=Br4r6+POIDtscjASfa2lhnYJFsqpsJjXbSC/xAG5faA=;
	h=To:Subject:From:Message-Id:Date; b=TyPoNlqRFJHp7RUjsniaCBG09Pk4m6VC8McQi4UxDxvyxlIAQxUc6OIqo7D7Qrc1NlrDtLcKt88fJhlIJavrMVxyp78aa7svR2POffEkPvL78WyBfiGEU+IAoVGFr/CspwhceqL/4ghOwfxxXsOah6jle5yOBAHJvPC+Dow7+GY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4YE6o2Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4YE6o2Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9319C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766701433;
	bh=Br4r6+POIDtscjASfa2lhnYJFsqpsJjXbSC/xAG5faA=;
	h=To:Subject:From:Date:From;
	b=Y4YE6o2YQ95v6REeEiIUYZrGk7ZYDPfRzb3gSuth3TA8jJ/WaoPy97jPBjSnDz77a
	 gvpo9cuI1l6gncfYtQ8mVVDgD/4RxhinKZk6ttUL7+IR8bsaF8jR577vEG5i1XPx7v
	 Xu92RKVq7cJQ+tcdxM7clfCjaL8F4diL4ZVvkwg0g+7JSHwTHxG6rMqGguyVZnFsC5
	 6aOIuPx2AqUdWVwl8g00opVxtRqB0YzOWLjFk9DhnmiwgmGVwyxXPRFfQCXKq4nV7y
	 lxTHEG4VKzR8mF8/Q9VTrHJc7q2F4zQjBjPPWTuyraCRphr/LJw9omM6+0gL27n1Te
	 2bmPegf9p2i+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95791E7AD71
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176670143358.22953.15691599582467086157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b729dfa36060351af6d07ac69b06897fff19b5b88f0c26adf851468602f3b2d4
Date: Thu, 25 Dec 2025 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766701433
