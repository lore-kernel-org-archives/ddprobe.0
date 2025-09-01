Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26173134AC
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756692595; cv=none; b=Sk148vWAyUtSgFMxf04DpSK4dO4cWjAywko/JLbMi6Q7XAu9ldmiy/UFi02oI+PDwa6zl8lqit5Di83p5X+Rvt0LRVZ3SUGlZoZ5GafJLcFHZlvVRJhBCi3CD0Q4KTq5j/7xUJe+BlXbvnSo8sL/4ZDpdrbbYVqkm1X/PH9D8xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756692595; c=relaxed/simple;
	bh=ahIj0y08i6p2xLuJgUWoC1sydNATR3oIbWEJrEHRkjA=;
	h=To:Subject:From:Message-Id:Date; b=qtZAPUnHgaek0KwdKAjk1X+5UPW9tL+4PbyrJqcX35zfTWvp5rYGzsaJl5zUHiXszLVZjIDPR/Zafq2i5VvWLhygT0L9dbi0IcXmhk5bhe9Uw6pobN052OBh7IBBob5L95/LYrKyw6vlYPhol3SFGoB9UE77OBjOUcFnmO/dJC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O9yOnBar; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O9yOnBar"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67F7C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756692593;
	bh=ahIj0y08i6p2xLuJgUWoC1sydNATR3oIbWEJrEHRkjA=;
	h=To:Subject:From:Date:From;
	b=O9yOnBar/ALaNQ0ql/bknJJiOBGh7G3aRkp7Ix+d+BrmrkMqkF3kkD0ZT5SQmnSWV
	 BIZpF+jlKhp/5VnmZXyL70b5yOPM+hsZhqRFYj+kS6s8QFtPPWAGInU5mw1Axhvbgn
	 BiiB8AxBfjnyWQEr/Hruc65Qm0yoAE/5W9B6AV+1x7f9rhEHu9gfxeJzNqMckMT+NO
	 f6ovvbBSaog4bsDarsYKmAeb74EI0ZH3GdWDcvJps84gedWbVf3/utDhN3Lx4kBOgH
	 qmspPwM9Tty92dmKMw1bbafmaCzIdT1jqajSDOJeIQC23eY7oMJoqZ+uZfByH3kRXv
	 O+1O3qJZNQ3dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9154DCA0FE8
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175669259358.4801.15768521908918018138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 868e77294e7da1a824bdc9e1cdca88fffc641cd61023dd3f4de1e582a091ee69
Date: Mon, 01 Sep 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756692593
