Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7C018E743
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738263955; cv=none; b=VexI+xTkbvZsX3ih0XyapNKDXost7urWUy1RQM+4LVkPcVuAMdFaOIn1NnzM7jPjk4qurwewcFc9knPM1F3Yr0BpUqRoi0XTNwKm9d1pXcO2SokvZM5JMup2mBYEM8fQFhJeC36/C8DY7rA/1lWnwBOodEdiMetzRP95QE6c1ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738263955; c=relaxed/simple;
	bh=hvTYkkH6ky0j46KeG5p96NnrUI9KuZ4NcEy0jcQo4cI=;
	h=To:Subject:From:Message-Id:Date; b=Iyd7EnnHOK5xfQZjCw/Hyagko4DuVbvGjTrV3lLNSTmMxtyBJtOh234V7hsP0eYGzSey83hgO5OyvBbEkeBTqieLGHjJQHs3FN28LA2KRPLnAAFwhC6PDe0ZDZDU8t4YHYuMYlPJzuR+3zQoWOBKoNiNhp5ZUodE/35SH0/Cozc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SxSOeI+L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SxSOeI+L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44D9C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738263953;
	bh=hvTYkkH6ky0j46KeG5p96NnrUI9KuZ4NcEy0jcQo4cI=;
	h=To:Subject:From:Date:From;
	b=SxSOeI+LMd64PRO7T8+Ww85/lFn+nroMSHQjPh+n/s2lirreq16Q3mYJCRzqyvtc5
	 Oj/ArUrWEvEgczucRLeohFT2qGHVZTJc9lCjgzAxqkbGb/cyueWdiEv2VscgaJJcPt
	 ybWx0xvT1l3BrS5gPsD1EFfjJsIXgG9eXo/PuGDM0l+7IAJmxMKkNGmqrMP+CWJMM8
	 3hjwKX5Q0d6ZG+wGj3UFoPa65RM1r70f4/n2X5y2+GnIYF16kr9zlxjWrczzyfnQLr
	 Zvq6tLKwsq3DHC+tdgkHsn3WHVct8mgiqdRBZ8ak5dIpuDddzoZ/y0iquPEHnGpRu3
	 9bc9izrgQDsgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91864C0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173826395358.18530.9499668912747612712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc0fadcac892356ce80c156ec65b99aff8ec885753b93d7cbe20c317be3c39a2
Date: Thu, 30 Jan 2025 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738263953
