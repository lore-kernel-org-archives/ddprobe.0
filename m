Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE67136663
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 04:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719288803; cv=none; b=tmEha4+I1vYpFEdSl4k7uFsutz5rK+JpdcsMRe9MeN4jwCGHfVTHyG4yF/xsHrfWVfGFAYbr/QX7BVf2wZCxWhjGkaE553f89Wep4g/4wiWeHyBHyhI0K921/tYojJyY482G0/HiFrbYeUrxbaJkhGWreUCQFV+Rg0iXOKpFF1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719288803; c=relaxed/simple;
	bh=cqyAq/CxSeA7VwYQazD573GlYxrfxNC3dMPYBrrKvOo=;
	h=To:Subject:From:Message-Id:Date; b=a1E4cxi7Nt3Tgsi2EYpThYjIfrMwbXsQvKAIGCejMHO7yXhBtglHnszGipBqyxWMUcYByQxzsPSZzIzhXI/FMcyx1PYc+0ZrG7CzNKG2Kpr7H2S1iXkD8noTJuTWIodQbXnsqeUsW594wjL0fGIDJ9QKlJ7pR9VSaZ5UC4a46nU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cMepczPJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cMepczPJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D394DC32782
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 04:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719288802;
	bh=cqyAq/CxSeA7VwYQazD573GlYxrfxNC3dMPYBrrKvOo=;
	h=To:Subject:From:Date:From;
	b=cMepczPJtwlrOLKIwfO5f1T2b18B6DGUw8kaLRByfvben5pts0bDkf/8mvQWq8JYK
	 V4UpAkl2DvfRSYVRS0tLwrxzswLzw+TTm1FR9gZMM2Py5pkP8kz5bnkiV0syMjDZe+
	 nOmGsLBzlYMFCseUWcbG26dI5P4vAbxoo8Qktef1ARgN7i7iLkwLYhJyCM0THvIQOU
	 94+pR//xkRZK7Fv5QzqA+s0ueZz6fYgjOeaff9Nbsi3W5TRU2huOCaMfdVF2fes9vm
	 WqAjdN+6TxtwQdK1rCfUov3UnNMEduU+HLLV9yD/xNGvSqeljSFJddkJFl5lFa92ne
	 Zdo38YdgIF4hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C062DC2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 04:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171928880275.18822.11017001095291883431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8657d899c323bd00fb0cbea16fa9b89110d42c7c98154803d4ad93a4de2cdf8
Date: Tue, 25 Jun 2024 04:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719288802
