Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD92412BE84
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709817496; cv=none; b=Th7Yfdxx4gB5K1Mauy3KyOvp55OWnFuUm4adEjruvDoy37xXbUVy9HIjeQ9DK6SDwdQz4rxXMxYdYA7e1J+419bM8l9gY3PMUutBkNrODtCYjV/yDzPRegvMFtc8oI3FVZMwBNIw1ldDEd2j6P+ul1xm6v/C6GiWY7NBS0arbF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709817496; c=relaxed/simple;
	bh=9YuoRcOQd7EBcT2aFEaDHgN8Yx80eR6ZQw9GNyY+FZU=;
	h=To:Subject:From:Message-Id:Date; b=lDNYOmiRiyM3+NefPEQzI8+UqrUFCFwctQcKlw2en4qsx7QU2KU2o0FG0Y5O5ZAQFyreezNbrtS8EpWPgnX/SkhHgw0zSSJ00EjWXQYDx/9ejk1GtfflecJCqzsD+gzEJgnJmDR7PGx3eua70Luu+7cBX51mBeGJDz+iPghM8js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nvBHTY64; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nvBHTY64"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75D25C433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709817496;
	bh=9YuoRcOQd7EBcT2aFEaDHgN8Yx80eR6ZQw9GNyY+FZU=;
	h=To:Subject:From:Date:From;
	b=nvBHTY64utTXbX/NbxCSOpO1nossEGmicUL/tawjbzzcUrEckkb/MQe+CtE90Kl4D
	 PL5o2s7iaT72bP5RrfgG5rcQQKYbAzB+rp1dIT0XzJWIzGpFg7b0eGbYLUTdF/49W8
	 sTzYiGMvd+k2M3rBq/OukKsQtNvv/z6LXnuObz+fQuatOlf2K963GDoHWeTCvNywmp
	 7H76TasJgc1WvjA2NT+wO6vVFB46O5Ct5DK50D2FkOUjkKoReIytew1v3btWkJc/ub
	 Mydtg3XbFQ6BmTBj9syLjtxaTzjP97PVVz00+oHke1nek3zxK8gSnOFa8K5nx+i78a
	 xqgxUfbJqEbow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C8DAC54798
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170981749637.31226.6347685808700620603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beae77fe8fdc8ff4c4c4b6f0f5f7cf571e50c7a130d757859674bb532643e03c
Date: Thu, 07 Mar 2024 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709817496
