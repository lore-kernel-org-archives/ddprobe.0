Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B98030D3E5
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 04:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781755594; cv=none; b=PzhApD4WygVx1nz2IOyP9ZtMbDpn4uGlexooT7BVVNRzzFMR9kC3c25Eg6aq92x77JT8mmhXp/6xfdJjNAU4lXc0pKG+9LQaY9wJXwlsM8sU6jHzAld4XzxeP/doXhsaT66hdEdVG0CPm7nVoZ3U0M/zijs/d9il57ok53DLaFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781755594; c=relaxed/simple;
	bh=gg6lDEUC/fGrw7ZrrAglAsUEleyQVWCxQ9/hgxbSC+Q=;
	h=To:Subject:From:Message-Id:Date; b=kOrVHmRe0S92jtYi/XUOfDZ90IRniGbsNaAL/LjMNBt2MZ0mHGuBIUlBMqeVSI+BZj5KRv/1ZW2rnDWK3RR0mdocwp5VCPAm9ztH/pe95x5jHiWnAj9G9XymbjM4AScCBzLmHaBAJ3CxeUJnzzXTyKm8IYnJ1ZnUX71HNotXvVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQ8W1x4p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQ8W1x4p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DECCDC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 04:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781755593;
	bh=gg6lDEUC/fGrw7ZrrAglAsUEleyQVWCxQ9/hgxbSC+Q=;
	h=To:Subject:From:Date:From;
	b=OQ8W1x4pravRm0FGcH4NfOvVl0Gm8/e0ymmyceeHTm3+cBpFs0ee6mLIejcf+c5b4
	 dCbzow7TgKekbnSgp9pphAK8VPFTGD/W1xq7QqMNwp8Gz6h3hkTPYLcccDk1z4I/C1
	 HX63wb1eruvZ2ad+t6SXcg6oOnPSDwv6LgqqXLNN+owMGE8FJshHop9NPYZXiYn5T0
	 Hl+iaomtIc4xzeZryjL6P9xeWD9SgE8ctF8x+5digxVXPqxJxzZMBska06kZZVLA0f
	 zbxKL1uOpNZ+9Atrs6o7F8aMTBKU88USc1DLLcw58/kJDQAQ1oUkGDGcfkNF+eCUGp
	 wmQHEMOH7Ggkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6798CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 04:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178175559373.2846.1338307682431675659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eca34a2936e50b8dc127f2012d7326b4ebb82a0fdc12178922ddaa31589c25b
Date: Thu, 18 Jun 2026 04:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781755593
