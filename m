Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5546652F61
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 08:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715416343; cv=none; b=oz9VTubVv+F/lGwxthwcRY1O6kb1CK/7QM/BARKrK9SWG3XBVZ9ZlGlq9pDYNeFTAGoiMASUheqHarvY1rpo48dXosH6cSCIEqTFs8dDuI14aYVXZv37uNauLtckkMBX7vVgCaTW2KT0uz/jVivP7bZt1ebJW/qUpSymfZlGN9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715416343; c=relaxed/simple;
	bh=EE6ikcL2nsY9gY1WZp1krzBCy1Yrc1MhfQOqvEE8uPI=;
	h=To:Subject:From:Message-Id:Date; b=fOVZ0Yk/AxEK5McS7vaeu1vwREPygIcoXlXviIoqYw+yaN/u11ej3eFM625j1Qw8n2GNXXkZEWcdT5dzfjW2V0F8NruHWfh9CNAk6XffKIslVpyf4FAMd3dPWftyUCTMaRGcT5hhbTEhCkceHDvU3XZzOy16vX6+uJNxjhgBuIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gXG0m+PE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gXG0m+PE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7095C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 08:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715416342;
	bh=EE6ikcL2nsY9gY1WZp1krzBCy1Yrc1MhfQOqvEE8uPI=;
	h=To:Subject:From:Date:From;
	b=gXG0m+PEsKHg9amTME0v3Ox1omYIzT3+YlZ9IWWxyXBWd5cE/VYScf+5PQuaOnzRP
	 mxXV/4D5GDb2wxz8Pk8CbxtgZPSydqW41nTEZ8H/tkSqnznL0qE08rEvdHvTsbeZhQ
	 et3OCFmjvVHvCa2WitXQ9nUcI88La0MVaehve0ZgZopSWNjT0jSdcLr9F5Kg0E12f9
	 Fvp86tQnBd+V9IkeB4rT053Z9wjbBQvE1YiCxx0FRoJ4N3TJU61tEHeLM9QkU5dv+b
	 ibAx9f9V3f1xC695I0dAG0t7WMLCB09AkeBBUY4d9GUZlxlWMuWlZpA9mSGRvw5hkT
	 ekLPvm0qkoOKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C47E7C25B5F
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 08:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171541634278.2464.15046901911871498827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0518c7177f1216535478ecffb293621ec8db588985ef54b6069948f30ae7954b
Date: Sat, 11 May 2024 08:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715416342
