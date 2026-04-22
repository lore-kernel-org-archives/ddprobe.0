Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C847275870
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 01:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776820654; cv=none; b=K/oUM0ZXGPRd3SYp0E8/BDW/tC8Xv6vPtOsUXLOL1fWBjuEkjrSHICit3+gcr1pRPMZduKDYfyON5uD+kF+qRCYp58PSrT0KO0HeBgN/cx6gF/39IdoVXAXG2gvpHhrYGoJiC/HUYgn8TODmrkEtEQDItaz8TMo9RlFVvgqnWGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776820654; c=relaxed/simple;
	bh=Utpfp6T8nOeQeg0uifOFrez6DoZxvU75DKDBZtklqJc=;
	h=To:Subject:From:Message-Id:Date; b=Z9/0IGEjnLxo4dTR90H/QnZUcd5D3K4ETI72LRoYoTYFyDEwunR36ekAw+WOkuiNCHTTj0OegM7svY62zplaKeOKWByrwGnlGW4TByMyhhpgyntj4W5+UXykR3Uj23qDgWpa9ghYqYjDZFeHKyH7jEgTkMiqXzCf/Uj1oDPzsmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pyofwUKs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pyofwUKs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B71D1C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 01:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776820653;
	bh=Utpfp6T8nOeQeg0uifOFrez6DoZxvU75DKDBZtklqJc=;
	h=To:Subject:From:Date:From;
	b=pyofwUKsFV8crfJozHu3U+bLiP81EH9Amqa87Pvv3UzUeO+dPbVAtxcGKJX6NVDJm
	 usSrZlwegFI4xNXPm1S8tdA7qaFrJmXKIPXJbmEuQd17njZ0gh+8HX8182PD2U/PKX
	 MS85krOdp4J8EK5hd8ZxNvY0oomCP4pz4+Vb87QRVcZmowDb3wpAKgmpRXQe25zGzu
	 2ytzaCdy/+H3AunplkkB/N0epOfBkWjtdtpjat8cevG5NAr1NFqgM0gpaDb/cJ51LY
	 NUTScIuwTfPeOG6a1X3JGnrKqa+9RHvttvLqYJ3UbmgpIdKgjb/mW/QScEZo7l8R4c
	 4kSRNfSWWXQCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94CDF94CB7
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 01:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177682065368.6913.16128416005441378184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60c60685ee368df324d5e85e6fe495335970ef63cefbb6b0235881eb7669563e
Date: Wed, 22 Apr 2026 01:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776820653
