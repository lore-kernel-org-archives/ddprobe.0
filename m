Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B88232395
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 04:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783831714; cv=none; b=BRbOVi+he908YwQ25pjOiLG4StjXQ6MXJ6Kbgyvxpj3v6xeJiNyBnlu8lOAWlDZqWfqiDf2brJY2vuU8JE4K2JtBv5v5QjGYXiEzVeYeVzTdU0a4v+DuIg9rTjELzcCjOmkD6WlCTl1zO5A08DdsSL17TK0lUA0mhGiIgrkdqwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783831714; c=relaxed/simple;
	bh=yvY1dMN7JngpVF35lL67b02isNKvY4z4C7nGr280HhQ=;
	h=To:Subject:From:Message-Id:Date; b=i9FylkcsDvVoMGpWXjqwhUwzedqmezzVV/nowsPtTPoCRrHJH46XWNi5Ck4l/6kNPa7Q66wPzWmUECi1996+1OmykK3SH1yptKdA2T75yUK17dh5cqbaKoiCdXfIrPr1v9cmTFl/3BAcwKvsljJen6+dB+4Ks96LmTsFDF5eCzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CpBZs+Q9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CpBZs+Q9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9ACC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 04:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783831713;
	bh=yvY1dMN7JngpVF35lL67b02isNKvY4z4C7nGr280HhQ=;
	h=To:Subject:From:Date:From;
	b=CpBZs+Q92cyZr3DQwE2wqN210L/Fv5DAKFGuMFngDwlsHzZqSa+yjJNLpPfQolBE6
	 v+7yY009UbPqyJXXmKqoERPHNFeAGnOfrgpNh35YZqtyd0OFr+S7peWV3dMuounjh/
	 x5JmTE+I0O8lX+u26ixOtaRPbaQ4HSYZtQF+OsSZl5unTc8dUJ6s8FDsZgQ8Z4bmje
	 CUQ/sT4yQyhwKufPOu1063vCMRYqOjpY2liR7qOhoFY4aFi3NeWRGKbwUQGKKLas9/
	 dikpzSDinvlYEhoaQaJddZpf7zjvJ2Ju3Txx2RY+coSK7qxY68Rntg1nM30K46H2zM
	 G/lJbcwbaoteA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAFEC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 04:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178383171368.8874.87226153097496552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27674a5919736c28eac57980ae5b1d990eb4499a9773cd7b15352e644d1907cd
Date: Sun, 12 Jul 2026 04:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783831713
