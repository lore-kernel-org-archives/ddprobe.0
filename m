Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D15315D24
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760447994; cv=none; b=qO8NMZirSkUBeDIfh/NdsTe+lOzCvHsIdRWHmVgISKTBDcRdOT0S+w5zVkAYVgWxCtFeotZ6NV4qIW01uYwpsh0imK0yn9QpL+yZ6M+RhWXyvzCUz9CjVNxguKLoeBlHGBTajGXwCDjEGYMDic2FzRIUWkoyAe+gFpn5JuPRaME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760447994; c=relaxed/simple;
	bh=rmcOEgqoAsJ+Hb2o1z8pK+9lzbenrryg3p0sCSvzn1k=;
	h=To:Subject:From:Message-Id:Date; b=YmQfAUxBHfzGMDXdypkfnG6GrscQBllHOYMrvBnCTbBE3nd2VE8+5wreBltlg8CwpUhCBUOoqx9SWgojMtmrD9h3SF5y6sb7OPFD6BR2ZucYk0dwSSE65eKg80MJOg4/pStbaBFG+AX+UhTfCOSOc4OEouf/1rv7qufUeda97HE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXP0drCo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXP0drCo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FF5C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760447993;
	bh=rmcOEgqoAsJ+Hb2o1z8pK+9lzbenrryg3p0sCSvzn1k=;
	h=To:Subject:From:Date:From;
	b=aXP0drCo4Xq1iUGrTLkApsptfgCIJXDvkyjfQGKT46WGy0MHlXDzw0yHT+Kp5dSVI
	 15n36sikaCcEZ8XAbGGX5SXh9TWEnb2TQ8fthOgptQ+iucTMDVzPj8uUfmmQj6tYiB
	 yjgVx+vl6BaPXGmugG8R6OQkOwqAHtAvdo9uL2u6Rd7/OF4uwe3PQu2zaPrJMM9zQ3
	 tafLh0WstL1UT3sW5pIK9VoAxmCIedVZvD0reknQP184d/gKc+G39iJ1z0yvlEdTOe
	 Oe/pjMCra0VqI+5Kte4oEHI9KbhJM3LGNmK/7tw0qzCap5tHwvwK6+kFyTIg6EXt1Y
	 pGbAHPMiyUTxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ED0CCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176044799359.28537.18226949555077664145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1f537ea6b609a190a11e1c81608ef24603e4e8ca1d78575a53965f1e167d75c
Date: Tue, 14 Oct 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760447993
