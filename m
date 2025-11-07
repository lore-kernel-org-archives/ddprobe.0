Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1F22E54AA
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762502994; cv=none; b=PC55qvaFNUxc8EGk2JSzWb6tUqYVQf3mIPHznTp3zZ+eh6RgoUAivdd/8Koo6vYXk111zFONNv5444gSDxMQ2Gr8uzXmU559CiI4aC0nEtd+DVjkxliF/UbHORCbc64tSEDdgCPXOnqj+yeIFZ0+teHdBgP2UIM6ARrFFajABbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762502994; c=relaxed/simple;
	bh=ZJUZpL50G70hYHQ3Z7YHC0kGSCnzuPxbeJaJnyBx1GE=;
	h=To:Subject:From:Message-Id:Date; b=ECxZMkSasXiinLDBKNgTO+O31e9Ypx+fVAH1T2+2QXgBf/+7nCj1sa50Q/1B8pVPDDRAu+U/5jerj3i88YBhKWsJVo5lUcKDa/Q4vS23p6lYl9sCZp+pM0rCi9Se9F3YE0GdGA3zqe8zTmjtbE86iAaFqHzBEwEVh3HZw1LgsIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HDhup7W1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HDhup7W1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A06EC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762502993;
	bh=ZJUZpL50G70hYHQ3Z7YHC0kGSCnzuPxbeJaJnyBx1GE=;
	h=To:Subject:From:Date:From;
	b=HDhup7W1g/Be0td7AfZmADVkq4mmF5UlXOb8cqwxurMWXV+7WSkeZrodULfbFo6/S
	 M/tNweHXDgO/qBdW22fYX2TAftHi9t811dGQfMN0s1s9fMTUIL+OebdFuOx+AvM0XJ
	 7Gow8Yle4ShwXcMlsneiDc/TM9Z42ghEVil8O9x/V/WrjzLUtVwrXYjJnEJX9NrwWk
	 vue/fihv5+OKXCMOzU3stoPHP//Wb93UieAXYtqdCX3Wb4g7maDu7anwgJf7htJpPg
	 ldpiBLU+iRJBm0HQCgdOgi7v0D+nurk1bTZ2CP9j0GolEyn6TwcN+HTQ6D/1aKcflr
	 WaVcRARaBo+jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB68CCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176250299357.24858.13948795013336848407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c484d8f9256936c6f2374ffda3a5ebf066abfe0c8c50c6677185fc23d8fd354
Date: Fri, 07 Nov 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762502993
