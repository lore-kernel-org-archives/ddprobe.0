Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F9A239E8C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750408194; cv=none; b=JtTXOIhHzBSM6jgnqWqsN6sP5TdILF3VtRMM6r/qIM25xZwCoPHgGsIJSSojT2aG8UtHNV0wtJutWYGB903XiBBqLKqLtHcH64x10LkzNPTDkhRe/HAuT4kH5DhMGY9HPck/Z6Np7bq5AmIGWjPjpJczjRF/QuKmjGk+3ASdQGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750408194; c=relaxed/simple;
	bh=6qtruBx2VoUdInN1y2GPwgs7fCuuBFRMDY+gwvc3yUY=;
	h=To:Subject:From:Message-Id:Date; b=Q6elcQ10dNyHbmnfaBFYSWh5E/oOG1ncsl+fT4qyU3H9v/5G2lnK0nS3wTnEZ0Q3/VWz5AnNvhF9n70+9TsDhrgX00FQ1jAwep77X8xOSNQKJcG81Z3Q9YmP6VSFvraK5CVQ1AsJEnItdbdWOfH8+fGnc6mWewyf8hbr1KNZ6w8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FNRnmgMe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FNRnmgMe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FD7C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750408193;
	bh=6qtruBx2VoUdInN1y2GPwgs7fCuuBFRMDY+gwvc3yUY=;
	h=To:Subject:From:Date:From;
	b=FNRnmgMelN8ls2MrxhACM79Ba8UjUTxUOhb5ClAe2NlSqQCVaCdYOiadtpvgPgBaT
	 drWE+2BPlBAy5zP2wYxyHTFO3bms2cnXgf/yg7a8RgLHXWs6dFPjA72KlJbO/PQWCD
	 +aiRXIlXvLbdWD+75587nHGJFyoaBdGPpKeskU/+jCKGWcEJgokeV18y+9vk3c9VaH
	 6AdXRm0dbPR7YEQUiC4RbyBqdMo8ZpleQVOAKDJS7HF7CujPhqrRq62LosZb1v6pSt
	 DDDHcVc2/nAnlsQQbDNISf6ZfyO0Qrj0WGiQjPiqs1c9D4m30Bq4zuD8ZUbUsY1+S0
	 nRxz0j94iL01g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DF9C71155
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175040819358.29613.14952755496432474146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f97f979709bbc386808c133b40175e7c5451a79b2d0b92f743ee7ffe1f4660a4
Date: Fri, 20 Jun 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750408193
