Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC75175BF
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728751554; cv=none; b=qJ1sNCmpmwv+qJj+kBUf65yyUF8T+YDCFy516VeMucyd8sBAykovHWVwO8l4AjA5HwAAQhR2JmYPqi9pXxJQd8HWtgRejHDM08jRSc9FSeUxunJdVkN7nrhnUh52qy7rFkrAfiKlW4sgh2PFSQ+skh4vnbNtErYiCAdHqLrTgPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728751554; c=relaxed/simple;
	bh=3OKqLug+F1iuoKiv4Y1hc135woQPHuRIFI+6XaWOGc4=;
	h=To:Subject:From:Message-Id:Date; b=VIFz/fUDMw+wjyXdELj7ukLg6GpAYBqEBsf9QiNQivbZK403fjXIXocyrRk7M45aRdGcgCtRjAjyRyhKj/bQ4bMcdqKdjp7vQwvRzjod5TbKCfs54lQtFQQplB1KjrdbSqAzQgbYcRaulSEr60yWWgJP0L9IxLrpQ8IRD2nU7Vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sUHeyNMW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUHeyNMW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4F0C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728751553;
	bh=3OKqLug+F1iuoKiv4Y1hc135woQPHuRIFI+6XaWOGc4=;
	h=To:Subject:From:Date:From;
	b=sUHeyNMWaq849b2VEaspMp0L2+mcTQAWNx7FdoRSafv8V3oZleaRJfGh8OyGNjFZU
	 2JUoMtLFxtT9lZ5mzEF4Ye7XaB64OuuEPo04Nv+a2wA8mD9vvGXqJVJrxrdS67mw7v
	 euvYCoQK0/chWUwEHHEe5NgHZy9m0NhCjEvnCPV6JxngbqnXhDEhzan090W3AeKNpk
	 DCKChXra3SYsBoB6zE+Ha1W8AKJV16qWpejGM5mTUfFtXNVQwx8A5oM2iMeNyYDRF8
	 qmOqGR87zM5MC4vccysx83lLSyIBMqJ5nrv76tdWKoUVton/xkYSLqmDCzJ/fXxjzt
	 o/7j7JguAINrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9572DCF256E
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172875155359.29179.4206159377186565191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32b6dea832ced33ee204d8af9e3ac51139401180eca0f0eb3485070789d51033
Date: Sat, 12 Oct 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728751553
