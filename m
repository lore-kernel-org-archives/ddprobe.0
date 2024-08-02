Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8EB39FEF
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722573954; cv=none; b=fspiFfYck1hGprHhwRpvG2ZTvmlNgRT7v/OUtR+yrXDedC30jNHt0zQCwy/54lZxASUHHojce8BRfHU54P9W5tAcvycMioq9FDtQd8jOA7gle1GEiewRu3CHkiQ1HxVZp8Kny8e4HE23UeaIYaoLQXHI8RMtLb5TXdt3lMkGd34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722573954; c=relaxed/simple;
	bh=GwzYWxMaCzSrdIiT7T36VFtTCaZAYiHfZJxc45hX4Yw=;
	h=To:Subject:From:Message-Id:Date; b=arSy7X3leLtr28lzuN5AgHeFnjwE6QpTKGXd1njIMulxTdp0ru5x1PdaZFwsyi/nngvBs3pUDW5Mwmen0qCKONuwHapMact7OcRQvI5ZnPk5hvlxYpYLJrYK8OVIChF/BLh3J1fgcTQ9VDiTw6ECjSVS6u51XI2cEXLr4uuEDiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H75aGaaG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H75aGaaG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E71C4AF09
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722573953;
	bh=GwzYWxMaCzSrdIiT7T36VFtTCaZAYiHfZJxc45hX4Yw=;
	h=To:Subject:From:Date:From;
	b=H75aGaaGMA2Xu94cqk0H0gJ7HXNe+1Tn1MHR6yCTtAkY//9vq+m4ImRgZCiT/wts9
	 n3fOqt6V6JrgRzCL06XqOGDLM5u5LCx7ZfVwNMx6p9usufdAi6S3sScsj2vcvHjphZ
	 sMvNW9FGcXoghR+p5mASxcN+CoPqAWpKcqEWy5ow20yY8l+2wIpyw4faC4YX4Ou/TD
	 CQIx9MwYoSge3uIwqELPBNkQlcdmSTOCC6KLyJ/PiuMDK8VlfH2Ydrq0h+Ofhxr9fd
	 Ayutd68GPKCUSIVftVQvpcfl9D7WmFznT+ExrRrbFiAsWj+Poe75bhgOFC5hhApYSF
	 NeIusCtcObumg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8B9C52D70
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172257395359.29814.7898625273642832506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa2c81c8e6dc80eea71a73def7f5a8519ee3f0103534fd76e7557eeb57ce884b
Date: Fri, 02 Aug 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722573953
