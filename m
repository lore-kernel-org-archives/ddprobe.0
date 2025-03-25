Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE7813D8A0
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742872794; cv=none; b=kytMRutE4m8PgSTkrHNfEM6pzubz5D97lalXbMimiRqEHIqL8tIQrCP44NC9jvzB3/89k6TKEtilLw0oIzxWv/WPtCFIzmeyl09j0u0FBgJW/4voqzhywyE8mOoHdJZQkXZx3k2RvvhLx2bdFCRzpZ6e70axim7Hrhhj8pQmlPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742872794; c=relaxed/simple;
	bh=0USj1amEe995qQx8+oexw6mXoHLueVkwtyRtjX42Y84=;
	h=To:Subject:From:Message-Id:Date; b=RuypuIaNoNO1cEtfRzhXjqllFNoRF/DtBzedjT1szGWdhsyaPFg4DCxFO6aE36Yg/KlCSwm8nOH6SNFSxfIv4Fia8NEGnskd4vl3rP0RrTCOVzC6+yeHEviJ3VenDuVuRGevfr7vsDk/3hQFtbwXsVuXz5D/RsJwxiSRg7myP/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePn7z1ve; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePn7z1ve"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3A4CC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742872793;
	bh=0USj1amEe995qQx8+oexw6mXoHLueVkwtyRtjX42Y84=;
	h=To:Subject:From:Date:From;
	b=ePn7z1vexm1GcbBEkAqtWms7GNRLQtNmvzR6Ow6aRp1di3fpbkQBHtosjxQ9VH8A4
	 ad+sdpKv0NKMBxy1FafmIc0VtFeIVlePipIWzLMa8JGoUsz5daajdORddSzlFzkPh9
	 KWDfpfAxbrr3/IR+Bpjt7xysacDz4L9dHpyDiyL0qYaLSnSUnteScZpkSeKNcgjfGD
	 gKBzmYBwvlfmX0+HzCn6XnnMC/k6g5vq2v7YT47nW5oixAPHGHPv5g1gKaJ58dHJ3i
	 aoeT+Qm46ANcJv7UQvAgrh3xuSGdT+NKOEOMXZp0+4O+lxUfIt9Yw3DHEbkoMx9ld3
	 0iIDDjCJpG0GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AFC4C36002
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174287279362.22260.6102102977357476023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: facc713da8ae8674cf5a43198ed680953fc47ce06d6c0d9c215b96f6b02514e6
Date: Tue, 25 Mar 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742872793
