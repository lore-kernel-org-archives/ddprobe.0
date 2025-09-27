Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F78165F16
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758958194; cv=none; b=uwp01tRj/jrCJy0ccek41HwWc7KNqJMQ1k9/ff/7p4YOidgkF1CnjqL7unHLwT++rZDkFTKrc2CRt/rvyXvcOBRaTVnsrFI7VKWeToMJGJQZoZjCs9SGJj3PJWrExiLhHYzoyzhudLWFBEFMLx8RKftyCIkMeW3ei86O+E+YtjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758958194; c=relaxed/simple;
	bh=/CkqIs5rCEJyjPN4PVfcU9qxTxupJvRDG3yA+cfKICQ=;
	h=To:Subject:From:Message-Id:Date; b=Ujxnux66e2GvHoR39LXlbz2gecPNoAiM011aPP9029ZfF+/us1pdWDUz+72hqhXwkIz0dX2M74ExGwTHz0ITcShOkmE3CBt3bhjRROCe6Gws0GTvbnBSCIz8dKyspddvjCnnU1aMUp7T+mysRKWZ6pM6a8LYfGYz3QdqPV4Gwbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VdFySoeN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VdFySoeN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD75C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758958193;
	bh=/CkqIs5rCEJyjPN4PVfcU9qxTxupJvRDG3yA+cfKICQ=;
	h=To:Subject:From:Date:From;
	b=VdFySoeNsW9VdT9hes4ROEYNWJrxaBtudZqIRzI7iEQ2UF3BQqJy8KboTg0qw9Lm4
	 mPTITWhovB/K8iHjioATYQxQL8mfT3bI/HiteOtPRvRXu23GIelrl/dHQckVXmXudj
	 mohfYcOgDGKEqNdHXLZFc+44AXGSZy8L60Wyr5beXRSFurwD7XRqB5jUXJICLsZBKh
	 tcVaiyA4izq2yKfZAyRZNLXw8zNhFPpdDFnStLVVEzs3EJXQic+9Ju/bmaut5b+xVG
	 v14Z9BFV7ldLU1eHH64qMMwUKjFu8X9jDrtn0Rmic11b5EPIbme5YYgKT4hr8KZnzW
	 jq8FtJXJ/M+Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FAACAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175895819359.27841.14471211682797595175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15ce8c21e82f24e713065988e7d706d0cf9ac1c881b7e00676373895a3a6a590
Date: Sat, 27 Sep 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758958193
