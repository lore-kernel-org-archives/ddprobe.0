Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A9A2D8DDF
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 03:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784171914; cv=none; b=ClRNJiXbHHa42o42bu0nGvgrAaUXnta2sWOimBd5I8AIK/YEc2oOvh7vmjPKx06f3QTrTUIyyx10k+uIwhf268WY/hokOCC5kQxEV1+/JStV0EAsgwTFtsrQe4v2HXYe+fp2ob+DpTyVZZ9RaMOziK7nsZPQxuRohweehdn/7m8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784171914; c=relaxed/simple;
	bh=E1PczcyrPMxBtKh+KBcXk8Sc02Z4AzXTQjLDWu8/0gQ=;
	h=To:Subject:From:Message-Id:Date; b=pcrLDdwPUQxh6pQA9z7QxiN7Ohc59bVIdzfDFz+K4uLhTefhlTzyjKNz3375lGMk2yoa795dl5MO6lRO7f7muavGeDSMMa8fz+0+SdLAAE8DZUIwK4SUK4kCm4y4ydfx16whx7k5y8KZOOyU2Y3s1L7dFM5d5zNxAKWk3KWdrFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yus8fmJQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yus8fmJQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBE9C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 03:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784171913;
	bh=E1PczcyrPMxBtKh+KBcXk8Sc02Z4AzXTQjLDWu8/0gQ=;
	h=To:Subject:From:Date:From;
	b=Yus8fmJQrzbascL6nfM48SelLNVZFqayYGlbmD4esVx3mRHq0tflDd4O0Gf45fzXp
	 VKom2nJ8KlFw2bg5Jcj2Sp7iduJb+H0AuaS34+g7H38Emoz4QLypBMhy0XYvkxlJ4p
	 Ojhn8Zfv9zW4vHu0CO50bjCH8Ntx0HYpcIux/DVy9EwweYhUCQAYVrCuKfSvYdRR9c
	 eaTiOvoLCwPVAn7x+gOjC6qCkrFbQw0vUfexjWP1rMcCCz3+WkiFGi4/E6RQiwM4l8
	 oQQvXK1Du0MccrrHbgg/FqpV9LUFMDpjhoi2VrF13fUWelHDcFSanD4TBCr2qIJj+j
	 bLs3dEc+WIoGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADF1C44507
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 03:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178417191368.1868.1594016000884235698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a9ab3effd5b3c9f83a13be23808fce32934fe334aa11e16f871d0e485149072
Date: Thu, 16 Jul 2026 03:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784171913
