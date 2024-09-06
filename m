Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3F71CB14D
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725619554; cv=none; b=FDDagwOw100ADTYrz5TsZGRcgZyRtzgdp8UjmNa4dMSLOLKybcNo6jTncF1aUvIkp7DdKTxRQ0SHRONkya0W69gQYfgzAedn3Xw4CNsKseznjugQYKnkvdN8y1T1L9igwOp1MsPhdQMUs4oa18PJp+naAjYKBGwxR1U8tFsdn/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725619554; c=relaxed/simple;
	bh=vS6i1a/UtPigEgFBs6SwHhlMWfacw/hjhVeaGrsKdiQ=;
	h=To:Subject:From:Message-Id:Date; b=tsDRGXOZcAJJ82tKbVkHoG46X94DllhbiTWLhC/SvR5ZujpYERnT4eq24RQkQwcpQCuNv3uExwarKWdIm1ORnzJOXgR/dRtl6IC7cpK6JJ9fJ0neDtWqkZtvozP8JXCLMMteidAbffddSswOvZPbc43aKKDCR7ukJoy6ldf87HY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oye6Aj6I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oye6Aj6I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC11C4CEC5
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725619553;
	bh=vS6i1a/UtPigEgFBs6SwHhlMWfacw/hjhVeaGrsKdiQ=;
	h=To:Subject:From:Date:From;
	b=Oye6Aj6I4RKJWqfEortcj+/aA/EGb7JpjdPzTqA9SiRbWfRHXBSa5xoMLyuAFzuAK
	 HVYTEN5mieqGkIiECCUHcLsxs3JxVPPQbzfEhuY8NwScYxsuRsqvTc3BGoXF1lZ4jM
	 8uJGl4UCkVTRJH/wA2X+O0Sj5rVyxd8QRXTgzUphim3rZR8mGNDWUtFVt/o6b3oBfm
	 b+Tcfi9Bdn2tyuKJ61uQ90kBR2llm/g+bcpEuQZ2XiIGk6BGi5e5Kk0pZSQZ2zYhFt
	 25ObuaAUEUNPjR1oUOkYVbWOzfWTBzuee8zPXkwEamt4NiECdNplXwe9g0NV2t9Xnt
	 1ZKUvJSgeD5Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B671CE7AFE
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172561955362.3411.16149149128693206757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 072981b054211c920a94873670a5f9a13642376e76323e1b29969ff7e8b26029
Date: Fri, 06 Sep 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725619553
