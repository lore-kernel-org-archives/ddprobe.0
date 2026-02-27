Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08948368964
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772192694; cv=none; b=P5nBBsg/jEnlIov4yWQNnliRI27D5ZDKgddOJrAHdLVxW8mhPm6PZZWtGSvKLTjUVRIt3zTCje79hrpDZuDyhazAdDCm4l0qCAi90C0aHI4F0EORa2fJKRCks5B/Denv0iTEX+np631okdjantW9AiUiv+N1aMeh/p4IQiUSaj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772192694; c=relaxed/simple;
	bh=X2zmBQCdloiY2WjusubbQguK0YOc1YOZRFrbcGbfxbg=;
	h=To:Subject:From:Message-Id:Date; b=Wogx7K6pOpxzZE/j6hzQf2LyuTMG5Skz8yUTZw059PyoJf53qEh8pRkbVdnVtWgZfH/ovHijMc+NBNchsvVjRZWtA9wwuDIfdEP/1UNbfoUsKP0eeYy2MPOvj1WqHixmTDmCh3/gsKK6jl7x1MF98Zl9cG0tvWyQqm58vftsPow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EuWegDGx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EuWegDGx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E511C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772192693;
	bh=X2zmBQCdloiY2WjusubbQguK0YOc1YOZRFrbcGbfxbg=;
	h=To:Subject:From:Date:From;
	b=EuWegDGx3CMka76hNVFRcAYHyaTnzq6ICfUTAjm7D13TfxmSleFbsuD429PGQdSdc
	 hEc9yZPA/+hlXTLe4Pn/gi9AFj00IM0603E+VnqhNuhxlq3dIrqbgIOwD7pywXo6SU
	 syJNYUf1stop8tgGSnmobeNN3AeX8i+5MTX69yBffqy84B1yal5r9QlxOFqoevgvHF
	 /yQKZ/PhR0Kmmydml8Z8JCo+u7EgE9YgtCUfhAIrVXkyfN88cESGa4TPxt4wzN9BV0
	 NXdm0Kfl+2hrm3dVz7WlGSLjLStJtOpnTLl5NPIgHeZhPyi3vUqXAtYaY5ykvZ8m+q
	 tSu6TchN8ruVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F092FD7F97
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177219269357.533.11713420942254141707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2af43823816f7d8708592541bb8241aac924152479168a0305d2fd84ca094917
Date: Fri, 27 Feb 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772192693
