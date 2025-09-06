Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45BB313D539
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757202594; cv=none; b=bd9TpUanHFtsJZgK64K+9f+bp/+MwKmYRdcxs98Nj34yQMPtDI7v6n9672X/te4G67fMfUHXqZlOllW8KB4CYEIzxE+jo/+QDY4gqDtAVYfXyj0FgNEooZ8r10dZrIvChnHTOBseuG2UULX8ZoOSriW22KLfrr7100CoMCU+RC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757202594; c=relaxed/simple;
	bh=9s8PjlobWj2hAbbOFGvo1YjbPEUjAX3K02HTDA5SON4=;
	h=To:Subject:From:Message-Id:Date; b=SuD007ceCrZ4Ul2Xu1Yglxezj6K3kzH+vBqtR5d52VTy9FB3vv8vrTC9dZlb+csz25nTSgFsR+FPuPv5vsPHptmNnJ+wNlDsIxdLcI1NgfMF7/BHzICpqwv0WGWimiCHZPsY/J/UJx7oSxrRR18iZO/VD/AzHkoCv1P2If0/tBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJP4t6K5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJP4t6K5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0488C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757202593;
	bh=9s8PjlobWj2hAbbOFGvo1YjbPEUjAX3K02HTDA5SON4=;
	h=To:Subject:From:Date:From;
	b=NJP4t6K5sgtugbbUXFyI1en5ynYgp03vQ7oKdni+hTvItd2lFt81mBdAI8glra70d
	 egXvklq8fZmvGcQSWqsg7GzROXs+XNz1dH6N9TxUoGpzBwxivBXePc6pEvUEplhUkC
	 ug8oy6hO1N4bc4GDpm7wkiXxxwTIS0VCooJVdzM6pbU5zY2uQpYjPQnFkfBLo/7Xml
	 wVYoanmlipvOFUFK2RlkM3BEoeWM+e1qh2wrQORqlBPqrNT8ta6YtHuzu69xC+R7Cp
	 lcQN31YnvToxXRO4/OtijFoWwwPDc2e9u3+Igaxg/7PHwQ5BrVSc0t/I+PJzRz+AM5
	 Y7mnDFIAQBukw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E18ACA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175720259357.21098.5835685405370651865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c46bfdc8f8abde536c126bd78a9b76a0612a3943ebf564251894d682e560a377
Date: Sat, 06 Sep 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757202593
