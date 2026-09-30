Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ABBD397E89
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790757034; cv=none; b=nqC3n2Oz7AMQV0vYs3YHe2+qGJeM7cviicrueCxOr50G1LwyfJUrA1rpsFYH4PhAo8g2hc8SG8a59wr/NX2vppRY1TITh3/StTM+eAZjwnOhfIQ+3oji1GbFsCGs9a1LDpcnGhrW8ecOOkU73dsIdr+Dt8jdnrsKC0PTwZ8tL0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790757034; c=relaxed/simple;
	bh=zAnczyRRk8ZpJtPSEJtLuxh4blWd2/lzEPF5d/rZ0vw=;
	h=To:Subject:From:Message-Id:Date; b=W93uML4Ou8EMpPfsbLpMtX76XxqPxRt4SHHM2QyrSibkiuzNtaERjVjg80gIfIGmbO/+SaBSdhzN2DM6LEVdK2FNQl46hdOqqF6jNSnDx7XawzIZmj5vrNj9Yggn2H5V5FK7ECdYtL1p9Sa+w1/19piUFB9/wsX/I0IlthjS1ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BlBcN8ek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BlBcN8ek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF281C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790757033;
	bh=zAnczyRRk8ZpJtPSEJtLuxh4blWd2/lzEPF5d/rZ0vw=;
	h=To:Subject:From:Date:From;
	b=BlBcN8ekj6wjbuxrftJKzkoiwyCGH+aPZNQeLmnSygQMR7ThvSsIoFAPhV8V/9q9m
	 T+GsGYdHGWWXhY6vWWLh8FgyfPx8A5thT2//myfold1Nt5dZLJOOAkuuVw93b7DfN/
	 bBlqnHKEHqHIQxBLc29YkJdSQqGjTzt3YdsWsecniIuUcapUEW2Mh27PSSEEUqV6RH
	 db4P1CKrvM+xYYVPFSRefYbHsO56vIDVpZDevrF7Aoj2Ob7r/iztP+P+dhsGN+mrv1
	 wiFfkK3ap51FVdmWThV0k4f0pEuOxSrU7gr3XDRlto3BEImJnNLUaaKQsnJH5FwpfZ
	 bNOnkrKhPDJJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC1BCA5FB1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179075703369.31576.636625985146969842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5f32f91fd3be644469bf27c2e5f74b5cab3b461441bb4119d6b072a46c9c1af
Date: Wed, 30 Sep 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790757033
