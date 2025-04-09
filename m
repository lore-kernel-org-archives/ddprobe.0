Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC621CEEB2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744214995; cv=none; b=kp15jAQUtAb7EYQ0UfKCbG8E6d2oceYzSiBzl4xJuURFGmok9nhVcmig3zcdPcB7f/V4aKsO9k+wulrxdXNnNQ3mo/qB/oDdPEB0JuVWRAq9IvrozcgBCHBqB/Z8fp1xq+LUHjaFjMIE4WLiIHjx5csx50gxp0IPxCJq8QOve/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744214995; c=relaxed/simple;
	bh=eJEmO1xLvq9UvYJPCWQBquRD7DrRweN/rR9sHFXa/fU=;
	h=To:Subject:From:Message-Id:Date; b=ibTquUyN9rneiTn8Beyb/XLkAcnrsdHBgoj0JeakY51cvvPqn2CJX0UBLyxlIopsSBnZhw3rS5CEQchKg7PcqlQU2xTfNS2KyeEQtcs3PBM8pRzh8/RWetpdcDevMCr/xGCWb826pGYgjDjgNZfehy+pYBda5BlvkIrx+uUIFzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S2J1gQeo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S2J1gQeo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3A91C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744214993;
	bh=eJEmO1xLvq9UvYJPCWQBquRD7DrRweN/rR9sHFXa/fU=;
	h=To:Subject:From:Date:From;
	b=S2J1gQeothD5HEh9rWh03KMjtSsrcdwdtMLNtJfr867k22gjA5xaMctt4pCHFqfek
	 xU+UMmj8xHacbA315PVl9wqqxn8fwMnD+5Drqj9MSYv6Ilu9T1bJviEVlyVyuHuHad
	 SGhpNlICk6xKrsQ41Mxs2I/bchqyWfGmrvGSbXkCOIMX9UYaDaakEokCsh5sDQCArd
	 45Izd3XgUg6fkGvg0XkQDNtp7S5eo71LlF+3MQKjEyjggr4bUkjxpA5uDiP/jLwL70
	 lYJTArJYn4Nwh85rRV05mmmrh523j6kNn9jOmQt0VqnBIeL4tRLATDI52dlBk6/TRA
	 Gphog+IZ80pCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A78A6C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174421499366.2130.11435301550304194350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b795208d0c3ea17b710cbe7b940c7cd524e793eeb7b07d7542d41c038ba5162
Date: Wed, 09 Apr 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744214993
