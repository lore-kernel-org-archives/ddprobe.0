Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6534B1CAA6
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 08:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717316723; cv=none; b=DjCfdIqk4qqjNVfqOhfNeGa6x9l96j0RktoDZZatLjIu/Cp35v91uxnpbvi4lmQO3kC0MDBhMCobkJ7u0NpUa0HuEV3/NGv3qcMZ+izr9CUJ8X3QCfkqgrC1cWX2hJMy82vAhuB+12eGoWKjmooUmMspA/LjuvXo2WH1UI7iGHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717316723; c=relaxed/simple;
	bh=rxnBBkxUV+S8gm/6kQzqI/XhM1Y/tpD6cx/oRgAJJ+I=;
	h=To:Subject:From:Message-Id:Date; b=WEqjd8TCKplm7T3UxDj//Z8a8vKRUBnHrrEuQ+p0HM86wDjdbJaCiKMxoUxpKTVmwrrSLv1I15F5IciHxDFj2OTvoD918JBHz69ZcgyUbeXHkdKNsMqmVVen4yu3z5noCqNkzehtIFHHrc4GZslVcZfe5xLQHUBL65n6MGlhSt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fRQihBMy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fRQihBMy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27A2C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 08:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717316722;
	bh=rxnBBkxUV+S8gm/6kQzqI/XhM1Y/tpD6cx/oRgAJJ+I=;
	h=To:Subject:From:Date:From;
	b=fRQihBMyer6RWguNw6h+FWsKSQNick8CGDqKjcrRgxx6pu7pKOpZS0gKkM6echFh6
	 6YjzqJU6coAx4EKKVbpxtXd5TA5cbNMgxPxh2fFoELKKVLWm0uQgCBzL/hm+uK2Kvn
	 0Ah6T+dJstiG6ZBYHrYdbtOFzgWNiMrDhLowDc9YC3hHWhhQIuEakZwd9JQyWt9Wmg
	 TOV82sx020pVBroxZc9q/JtIXFhNMLT+KtnE5by+tg4fduYvFwMp/6pxVYxVSolHVx
	 ezLAVejaHHHF7TsKYsoVSab0We9sT72rxV9Pr6PWnBDr7cXIoEe0hirb1/1k/wlTux
	 h4sujho429ITg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBC6EC25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 08:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171731672276.5617.9510848239812277546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e53a87913faff7c0096596c1e9453432835c7c6280a71ea309ffe420df3c9486
Date: Sun, 02 Jun 2024 08:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717316722
