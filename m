Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1F9849C
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759628995; cv=none; b=GX8ULqx5/f7fIVLwOwznTJyNkk5xuUB6Ea8ZhlMUHt1fe4zNuNJJLd5Og+8oVLahWDMzwShuewEQdYRES2Oe8T8MB9wzz8MU66hCK2Ob2v5Rl21yoCrvG9Np9qqaEbF+/xyRNdQG9ur/A+6OFhmiaJa+VS8LuD6paSiGrXbHInc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759628995; c=relaxed/simple;
	bh=SPfbi6Uwl6/LCLKJheHs7co3ezjIWP84mm1iz0bqjco=;
	h=To:Subject:From:Message-Id:Date; b=sZFi8yDgWb3STPEZYRrR0XGyBA0v2MJoJJinx89JwHgUX9LX6iy1mT1trk/EUoG0G86nn+vVfwvlTOEIMQLi1kze9+sED/Uh5NFhDoVi6Eu/phbaI4736oGe2XSNWhbt4sQjYjfZCTBdcRpOnPymRLx7taU3y1iPHrWcm9ktptk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OjWSumQl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OjWSumQl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F507C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759628993;
	bh=SPfbi6Uwl6/LCLKJheHs7co3ezjIWP84mm1iz0bqjco=;
	h=To:Subject:From:Date:From;
	b=OjWSumQlJ2cGTi/VXlspcodXH9HB23o1Qh1UDs0s3zB5VPZ6TpW2KHm2wO6NymPap
	 LCnqy0bEV8bMupu7PesAgUp/Oy7saQj7P7EUKHHC8LIQegMX9di/byY1GzQCe0AuMX
	 rTzJei/jhWoIf55xwtLKb2ZCwk7HwCxxf0S0K5yhnhG4SntvGfb7gkU2Tf/WDsqIch
	 gT2+l/fGIuSMIrFiRRLcBKMiYikcwnYuKdljCTnv1+CucJT/QiYxN6DtSpsguJ0LY8
	 C3y7+sj70RfD1S9Nl2UMJZTGWD4iY8JfHLK66spgKCLmuknZnkPG/HysM/oUAqYt7a
	 3xCSSO63J610g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE0ACAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175962899358.16298.9511118143129897392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aac49a90977511b7c6d39c9b2079108d9dd66a341b1978fde62d91c3379445b1
Date: Sun, 05 Oct 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759628993
