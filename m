Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C66342517
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 19:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783712914; cv=none; b=sjEGRt+lWRhJN8Gz0NHIKeA7QacCXAXrjljMm3IVKPQzsWhMpXvkazt9ulbdeW6zbycfjhSLGa34AdUPk7BNMrg1Bygt+XR15FpaSIHJGmVyBns5Y/nanNcg+oMf1nae9R5BMX93YRp4QTfHtsBIYhkMFIfdWze5efJuC0RSxhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783712914; c=relaxed/simple;
	bh=3SaBJJJSTuSGhKfCyOcRwnSMNHdB8udClxq1g1qpOLk=;
	h=To:Subject:From:Message-Id:Date; b=VxhugOi78zfUrdvkO1CvKQv9WokW43ERgN5iEtfe4R61/jW1SpVLgdhVb0Omf7CKbWt93ZBopKHhb5HtO5gzlX6Vr/bj9GUJnS+/Wn7py6NYnkMO5+71Jw0nZ6/257SZpX30FZabkgXd9iiRdVwEL9dYrQM8X1H5TJOfxkqwrwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pQ5ZD4HS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pQ5ZD4HS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAF8C2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 19:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783712913;
	bh=3SaBJJJSTuSGhKfCyOcRwnSMNHdB8udClxq1g1qpOLk=;
	h=To:Subject:From:Date:From;
	b=pQ5ZD4HS5F/iL+BHXjAC4N0C9udtghyb3+roXOwp//ZgcN8rXnNmnwfJLjWM8M3rV
	 Iu4c/sHM2KggDdcdSD7HyFRo+guogtw5aoFaWobfhCcuFush4AOb0g5qVINee9YkGW
	 gmIjMGFwF5MFjiWo0tLdrkptPikD/Z6QKOeUqmHObzWBo1Y5OWXbO7DZxsuY4wnMlv
	 I8GSA9+HuLxu/dkjQ1Ca5srFreuT7M7xhw6uYaa5IUrxOJOpq/48YeXX9xcno8k/XJ
	 Jt0PioGz/RRknP3YjEUbjrYr46BExyRUIes8p8VQWKCTZHNdKQqT9IDoFwyyvszr4j
	 L6GP+mvs7TL0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0D6C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 19:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178371291368.1683.6660454983385592974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9dfb7b31a9f5077b2c35aa04fba73744f10c583c346c0f9ab0381c5ddbd8b86
Date: Fri, 10 Jul 2026 19:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783712913
