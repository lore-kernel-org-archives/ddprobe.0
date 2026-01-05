Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5704F288C13
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 08:33:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767602035; cv=none; b=dEp7pV+oGiJSHt7v4bKPQci0E8HUOfpLtcmpxQZ7/XMw5M7mzaCVKBM3NwTfFQwtr/ab6kjdJXA+6qvFDnBOLbRZn5rE5sLrBQo4aT3O7ZPtZji+YpucPpg0jtixy31VCAauvODggyqwi7oXGAYOmbF3HVFk96a6t7evgpIVcfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767602035; c=relaxed/simple;
	bh=E1Jpm9Czsih7efUbj8ZSR8yaMpLxEdNx/63uLNzVXU4=;
	h=To:Subject:From:Message-Id:Date; b=WofnNgpfK4pqTEASNQVbk6DhidjkPdKfZofEhLp3SjAgrtf8vpyt615ZU42fOqsqHZFRC7S7fpFAVtxdMFwmUuFCcEYoKsFqBfMnS0kB6fpnZvnhBLcMsjEJzebEd/z86mcaPTmoLI5rXWRo3gh+I+YhRx25CONUVxFdanSiEHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q43ZMO2G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q43ZMO2G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25E9C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767602033;
	bh=E1Jpm9Czsih7efUbj8ZSR8yaMpLxEdNx/63uLNzVXU4=;
	h=To:Subject:From:Date:From;
	b=Q43ZMO2GMP7W9p08fTI62BqPS8NG226mWL4aNGB+226K/vnxsCeGjs1E9nh6HGijG
	 vXanRRbhIw2WjFed1sPcEUi0z3jbpjoZT0WXVbgWkKkyVEsjc45aw1EyZrAozaGADj
	 DGZRqmCvke0yr/9yJwkerb99rEFg58GlPiI4Xv+MNuhR5xRoj37Q+WiFvTe47Xnnd8
	 y6TpNxgajfVJnmHvcOVdsXqPQISdzY5lkOZD9qdphdN2AUcd/09Yad4M0F/MgU0Yj5
	 ZfHA0mNB+aFmj8X4r3wxeQIsu9TdrJz004B0Yu13zdYVc6AgxdMKzC3H9lpayPhxHY
	 qJXkNa5UOiJsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9381DC2A072
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176760203359.30845.11654183474293800995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85be630b3896c4feb3427764a0be7dec19e3ee989d8de6a58ab73afd91d7b6e0
Date: Mon, 05 Jan 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767602033
