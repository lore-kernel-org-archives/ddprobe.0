Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D74A56448
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 06:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716360203; cv=none; b=B2L9AEQYHZEzja+qwmNQbnad/j769BGk/4xo8c29XVgXAaZnYvh11F4FeAvh7DCEzjuAbIPmECb8iaDbtNf5R/HW6aAb68YHx8lYBskx1NOPh4yWYAZ90LObaovVxvQpTi2/9m++B4N2ZOR1BIJXj4MO45ZRJCWYFcLXq/CJ9cI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716360203; c=relaxed/simple;
	bh=Rw2AO8RIJ0ASq3+MqLHomC9T/VTjWAmYwelqQAJTbFs=;
	h=To:Subject:From:Message-Id:Date; b=LNUkIZ3vISXTmV5qHc7GI+hGgn7iSnS8Z+g3/G8PeAbf5C/Gk9cuFnKNJ4PPjXAyWVglGNBTEaDUZN+8DSpY1HxCk/9LPrCn9z6WD6qcGRp954QhIqtuwHtOrndWpgxCv4VEUGCiwDDV3kRg7GLEs1iPw3Z1QKq2CqwODuzT1Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=trgSq6jX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trgSq6jX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2ED1C32781
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 06:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716360202;
	bh=Rw2AO8RIJ0ASq3+MqLHomC9T/VTjWAmYwelqQAJTbFs=;
	h=To:Subject:From:Date:From;
	b=trgSq6jXXLCmwYQiTl6bXz0SwkagD/gwfHk06quTLUULuHMYH+ekawenPtKAalSZE
	 NMasQ1TheLDyDWeeYkeDosWYHU+DXBkhz7PZt9oc0PLXX6nT/wtTiP7maH4RnEDRyN
	 r7xB4x9KhPvauVGU7xDU6jRjQabHhrwfonkawijHlHBqBGfnhZTQSnjTPKRCUYQ0qF
	 7xBFSxFoIGDI5uKzEluFHV1+m5jDHrGKMUx4QcIRHQXZuOnmKyydYl35ejFp6x6cQ4
	 IDCLE5Bu7kOfaMfLvFjutTFnAc0pePiC/D76z9LT3Dy/Hw5fJPdzcWtVeiWFNKlnWI
	 oI5NbRlHIgpMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA6C6C25B77
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 06:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171636020281.22719.8252666010216366326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0457610a068986ae07ebe68c9fe107d0d6c536476981ddc4e8b3fda09112f52
Date: Wed, 22 May 2024 06:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716360202
