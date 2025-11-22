Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9AE24DD17
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 09:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763805114; cv=none; b=U0WlJbjhfiT8ci4AGObNjwrZzcHoEWA/JOl6z4Mk6qyQmq3+F1e2qMwOaZC+3iWJr0i6wxrOUYLcWerD1q5pqtJPxccZs3EfqcLIvOaEfD4sX9Ra5XePcAriSYARRfSl/oBacafSgrrj6zuR+0een7S33BOKvBtp/3NvhAsRNME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763805114; c=relaxed/simple;
	bh=CpfeRH4FcAd8RIFvJWwFcf87pPZ6W06GZISJT8XtU/8=;
	h=To:Subject:From:Message-Id:Date; b=cKsx4f0+dKLeQ3/5SG8/ASsxrpuLUmYenY9abdjK+Hg+ToiwjLWLYJakGEvSaCjQamA4ANCak2B5FIv2iemkqseinagqQ9jUwZ/BdiPU/H5YzVuTH0AUM+4Bsu/v+Qlc4OzQtFIlFkwsy7DrIHlRG9A5mFJ2akAJkoLmuOiPRxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PnU8VRVm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PnU8VRVm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFF4C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 09:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763805113;
	bh=CpfeRH4FcAd8RIFvJWwFcf87pPZ6W06GZISJT8XtU/8=;
	h=To:Subject:From:Date:From;
	b=PnU8VRVmwfODkphyRv4p7RaM/fy7N+KIWo0Eq6e9F3hlhyKuFK9wOvSP+R3KCkFDv
	 IKqs6IeV96pvAivDIGfrfwq0KYIcdvuggpm0sKw7tyf7bo7IjZs/pxqV+GGZSFuCx4
	 rhphyrtXQiZaORBXJdjFQdEeLLSxOizMyxprtK8feZ5JT8q3rOn3ex/6wV9pmqqMjh
	 OA3uVuFgK1JyIHXu4goOsO8/JkwK8W/7i3Fp8pcQ+sHup1K5KzU9JZfYiyQFhAZOi9
	 5uC3TNNDeq1gyk4pW3c471y+SXHUqU8SbH0/31OJDd5fj+/llO7+53TJJz3MIM2Tlm
	 3Vq+qePlzPPxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A707CFC51E
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 09:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176380511359.3539.5375821790893244321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f41bec38c3b872244ff5f4e8ec2458bd524377e26250fab6ab9601ef3bd5353
Date: Sat, 22 Nov 2025 09:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763805113
