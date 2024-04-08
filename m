Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0C151851
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 00:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712535497; cv=none; b=cCEYRF8gu1ngyaKdQAh3cBu2SXQZeza3lOjmRBVWa1QeW1lHbfww0VstSAkiY43jkcUJbgU/3CHfPsqUmJJVGZCYty4f++Tr2kko6zizs/gRGFUzTQuWXxYXFXNa4VPjO9rUgDzjYue7unr/i8hwS9QwzMXxEkYTwJboCpezMzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712535497; c=relaxed/simple;
	bh=Jga7BFR85pvcXd8MLveaIS0wdFVqhXiX1G3f+A8fz7I=;
	h=To:Subject:From:Message-Id:Date; b=fp8yPHpzdOwxJKnXvIoXvaDZFN6aR4vOShyk9Oz9kQdEYRh9GYuLT6jrrTQa0VN4t4K81EZ+fLx3fG0efiN36BoY0yLd5+Rt4Pm6xsIk6Bq+mzGHTimC3tzR3KdByFoBqgTtJCKaK0w2aNwNc88vgUDv//3KpSUZAmn5EPaz4L0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mzCONvZr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mzCONvZr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85A21C433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 00:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712535496;
	bh=Jga7BFR85pvcXd8MLveaIS0wdFVqhXiX1G3f+A8fz7I=;
	h=To:Subject:From:Date:From;
	b=mzCONvZrblDK7b1bNnP8cKrABbidgNUy9lEkuIeF4FJvcOeTNKNKmVFise7XFl1Kn
	 Lwf1e8BFDRlDC/5tdiOdoOx5oJin3p2gNkdhNE7wNnVZeGENH0hzkvB/JXkCbrASH1
	 UTW/iS+IwPAdYHVlVrdfxLTt69vT3CVvhkFmbD1ci4YbdorJKhAERpOcUtHL+xs+OT
	 YOn7rQ/S7wYI7R9Usi/CF0vKbPdR9kCeZpjborEa7c8/aFQ0wWJh/NXWyxYf2oVcws
	 9RbBaEveC+r8DuWIAUBEV4NK8zE+cJGUrnMVFLJgpvPZQWPBlOTHJ4xvagH8XlDmc1
	 czdRTFkV55DEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68D1ECD128A
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 00:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171253549639.5103.13101000054691696164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9214e76d73c88ed6f0eb632ced80b0dc3691dae4623e75fab55fc2bd3bc38018
Date: Mon, 08 Apr 2024 00:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712535496
