Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDB15813F
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709927297; cv=none; b=Uxev6GbCDEi+SD8RTio70KTSqbSoBHZ2CkGfqPeFrDisrkDC9WeaIlWZdG1DcVbbAZ807bTRneRCcVcnJshTSEH+RiY2nhB/SZwpZmZbB1vtOyrshF+0drBVRtSUQrA90GPDHVx3YcAHhlYX0iJ6obmN4TIYiCGUKavPhfpeRVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709927297; c=relaxed/simple;
	bh=RR0wEt3jtvOrwDGOlYZFvkFythrugGmF24ejYLzdTBo=;
	h=To:Subject:From:Message-Id:Date; b=NDvy21aRP+o9bYLdaFO56m9y3jEQvtLuZtG5YDe7+mVwNHgBJ1qPgQx80dm4hFyinJ81SQ5/RJtlFOiZgV25KT/5MSdQJFuGoIfJ8M2/7CZTji32AO4riY83IY8g3y0B3w+UCbzXGn3HYkI21xwqB7l6G3I77YPJGWZae9iVfnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CP3dTaOv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CP3dTaOv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92254C433C7
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709927296;
	bh=RR0wEt3jtvOrwDGOlYZFvkFythrugGmF24ejYLzdTBo=;
	h=To:Subject:From:Date:From;
	b=CP3dTaOv546Kb+AGgHaCB+TiYEReknx7oYmm6BWN5Aq3LcRykY2bsj7P60UFvpuGa
	 GRL7bEdG99o8XTonMfTvdriaZDUJtJLBfTPJB5YmlEfp/zMFfyBzolU9moEdJql7f0
	 ++4Yd2AJDZ06K8eHjisLQ5vBN3mg0O9xlZwaOQXJ59+Ef0q8sGkBGU5hZMOyCxfY2c
	 p3glK1bhOvbZwk7vtXEtm//bp4R0/DzYDKLHTz77ws9WXRXmwtkWE3fIa32QluJIYK
	 US3EsyfnpXOGXHRBoGkDQ/2OtSSqYEDC+LXpgQgAB+7n3mReUPAA4Luyi5wSoNV9Ug
	 osN/maC1f2xAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 744D8C54E41
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170992729646.21698.3643939309206021015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b49df015c8e563e307d082712429930cbfa931c138199a10f5d79bd1b209807
Date: Fri, 08 Mar 2024 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709927296
