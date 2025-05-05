Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E53E61F7580
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746437394; cv=none; b=RAIlOk88I/8wrSJs2xqAfoQURWoqmhyPhyIAKROjusnPYwfS4yEZxKCBVKfuSPkXPx9+cMXA1TI44PgbrPn/O4IQcWEt7ymshPbTgIiFiPgGb+UKqcQXVPBljrhTE2Tn1IXzZUJG4Tq0NyCzsfQVCyo0bi6AwZqV0X3ps10+VfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746437394; c=relaxed/simple;
	bh=lDmlDd2vNDNhdMGauyj0Jy9+fIFeYs6kO3ufZLczm2M=;
	h=To:Subject:From:Message-Id:Date; b=ttTkWHR20AJaT/enRis+H7bRdNudTm6l7nnkSv85iaOgc0GA3CytgKEHvQf4qIkGV2LCyDKj1b/WWlNcVaJLXpWFtli/YIc8iHmQ0wrqyJFDiX1LRmclzlC5waSU8bjn3oBDwWAksA9LmY2DGyR1l9ZXh5bO5m24ZVeykevVMLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IdHxEvPZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IdHxEvPZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F394C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746437393;
	bh=lDmlDd2vNDNhdMGauyj0Jy9+fIFeYs6kO3ufZLczm2M=;
	h=To:Subject:From:Date:From;
	b=IdHxEvPZuCvP1Y4OSXKOGpmbh1BsmdD69A4ezQXwdNPJCUr3AnbexGcOo11qQ4/mo
	 QgThEGadjQhv1zB7Bkp7WzFAhgdqKOjMunbX5NHs8etJzatWHdt7rc29xoiNnJRnsM
	 ds1ut/FgVSn/K6vGgGAY2fiSejWjUCpa//Auv1WGbAS18Lz5lLvWaymg4hnTUVPI4N
	 +EvNuFeuo5Hz/iWR6dQbUpCx0f4g/JPurb0sbfKbDylo9WpnbpzKGf44ssoak7DUxu
	 21PZccUiYpJrPWWdAlPMxFDU7drvqppJwyoLSt1iJcrO/cKdIYFkMP+9+fenJhzqPq
	 MQw8l/fonJjuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5B9C3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174643739357.27017.4156771481127539278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6315e53c6a90effb5b103614b8ae563998bbfae72dbf98efbf8f6b5152c2fa57
Date: Mon, 05 May 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746437393
