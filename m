Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217942DEA64
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 14:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776262054; cv=none; b=m9nO/SFDHX/MM/yY+NeFGSHSHAqbVLp1bgtCNOFRYluOoYxIqfVDiwB49woSuBxA8BpbclKVKCbnY4abtO0Q1kbiZzVYcBXTAc5AgW6j7gIFZCZybWf8zDuh3eEQjtQgaHWHM1K0jeW5arENyYwQ67lwr7YVxIrFbs17w/SBsts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776262054; c=relaxed/simple;
	bh=jXuRuQjduBPD4L3Xsqx9ar0ifej87MlPWLQHNNCBTsk=;
	h=To:Subject:From:Message-Id:Date; b=C1JltX/wSpz4GC03diCNr2ms20SDgZudwae1TqFO5iv+UeSDE/ffHVO954X9HVBuexa749qFZ3pS+fCM3V1eJeImLBn8FimOkaQLzp3Es4tW8RS3Qm0mjG0mHauC9kxHOrDzrTmVtV8YzV5/GxSJb1BbUzHwkefRdliEAI9IkO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cMKV2Yeo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cMKV2Yeo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B961DC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 14:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776262053;
	bh=jXuRuQjduBPD4L3Xsqx9ar0ifej87MlPWLQHNNCBTsk=;
	h=To:Subject:From:Date:From;
	b=cMKV2YeoYPnvI+KY21kDrmjaPbF8b13AXiksS/2XmvV7I7faTfJKzV9fcxeeHvxak
	 YZEZmiL9x7syrdou8KhUVF0CzWc+03NpNGmVDrEyxocidJAYKiDvtw79xCdw2oEKLA
	 qGCx92lqnb+SOXylyR2mjb+nJ/pnDHs0RBgp3rbHDaiTUqiupTSnkxVQe8Qxg2DLKt
	 AqyEkEsb2/RSDxW6XZ9m0+XnjXOqx5ypLllViWLrXKeyPKNWIeytFJ2h/K4qzK9Rti
	 cnFFC+hdoTNeSafB7B50LXRdUG8CqHbm3JHgnUf6RLPCkdT8JyilezaVWF4AcXsmfc
	 0VZi9iLFTioDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA892F43824
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 14:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177626205368.19628.3502852486708543825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52b7cfd2e21bd942eadc126657df96ff0af1d775be39665f69c6b86bb4ddb275
Date: Wed, 15 Apr 2026 14:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776262053
