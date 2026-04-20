Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C64538239C
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 06:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776667654; cv=none; b=HAqvHFHMqhJ68epLiNc/gQmDYejk7BXstvio0YcUmgbEUv8upEHOeV1utfNE3s20HDWC6VfaT+HeRP5ar5hZKB27cXw5BaB/WHBurN8Si97RmbpMiaJuADDSD01vZtgqSaNvMAmJ+alWTbtj/6RZZSXyugPG2GhZ2cQzPg9S0hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776667654; c=relaxed/simple;
	bh=eh2hXbGuejuKmvGhuFv8r0RSFwiMTt/YcNJa9CuNUGI=;
	h=To:Subject:From:Message-Id:Date; b=ci9KKc4hKUEFZ+fXAOl+4kn9D8NvRSCT9T0WpYokQmWOcJS1Wl2lmVe0RlXY1ygYM2TidoyLOKlZlguGCBZSfzq5IBwZCP4t5hGy0sCa9guzcrR0eZYDKaFDKUg7oCUg7QM9wmpc7BsCGcmPpICIj5zCXT6Jxkp9sCXTo7JPqUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HQd/Lp0T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HQd/Lp0T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB407C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 06:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776667653;
	bh=eh2hXbGuejuKmvGhuFv8r0RSFwiMTt/YcNJa9CuNUGI=;
	h=To:Subject:From:Date:From;
	b=HQd/Lp0T1YJe941IJN9MeEltrf4kRPREHYegwGDc8EphFd/JuR5P1hmg3ExAhFxiw
	 j1uxdXr4MTQRXBF84gAjpvrqkq+D4P29LjEBoizBLvMQq6/wFnl6osnMUimX3wClYE
	 qD1nBUfFLGxalGbWbMWAAo3cjDedF30r23d98uQwWlnc7HMnPsZP2s3jaaFFwwWUj3
	 NhCEViPKrm4T8GdnggbCEPSjnvk7FmsRLI5+icMzxlNeqcgTjtYubybMy7KKk2iQWt
	 BVGc5rxCRwfxBLNRYv+ds2nvAXXW0N2VFOqx9FybmI9nuREFBGuTL50YGv08eFdkQ2
	 AZLAYv7/Za2AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBBD1F36C2A
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 06:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177666765375.1086.1028606001795677856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a5165d43ac78737ef920649c32c5eab7e4b9b5d6691c9acf9fafb1d6663cf6a
Date: Mon, 20 Apr 2026 06:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776667653
