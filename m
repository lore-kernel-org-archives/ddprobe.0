Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC9C3BB4C
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708502297; cv=none; b=CSzCm83DTcdUkMrysYGGM8VuGNwz08v8RoiMrzgNGPubVUwejBfUq0UzBCM9Vu+AkqoC43Wiv9OCpEjr7gOemiRy0zPOTQtu+FtMl0CAh660YSa3IM2+fGLJVMj9s3Ph9+MiAagooRYPu3+kFd9gKbQdVpmSkpqraG5DIyEbK1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708502297; c=relaxed/simple;
	bh=1ReOy0lw+l+jFdkbdrjsRQDYu2CI4TvnFNUzp/XiorY=;
	h=To:Subject:From:Message-Id:Date; b=ANe+zFD1AOV+BXtNNUnuJpzkLP9+q2gGI6AXQDS+Jk07aRqUR8s8edt52BYDJSt+iK2oIuCQSdFeP7754jdEMavPntfgZuZeSsi/Tle+xQg8q2vKh8H1fMwpMVlYYu1ygWLFcN7lFOGlGsxWT2EgwXGYdLMYxxob5dnWw7NvP3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6msw0Wy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6msw0Wy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B666C43390
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708502296;
	bh=1ReOy0lw+l+jFdkbdrjsRQDYu2CI4TvnFNUzp/XiorY=;
	h=To:Subject:From:Date:From;
	b=L6msw0Wyo2IDMO7CprzEGGZbdvS3rGkbquE1OnfKEwpWBZtGXMmDzp6wcHa1sCvuW
	 Ru+Wcog2c5S/lhoB8yBv0mixLDg5821PiGLaupB5cYVGqKfF/UeZMqOK2pUY02eLjs
	 WbShAQ5lXI5zfr8wPvCkP+I0y2M0Tco5WiURvAugGpTmTbbbiCRAqbo1P2QzBP16/+
	 m9eAuxaTVAOuW6wCktTLRgwbmeNua/Fezo+E+3h6ywFa9I80jNtj9aUUBc8f7Dnbcc
	 4M/NQsV5+5FahNnQsVaYiJHrTD+AG7pirP7bt8ci8m1oCwnoNCd7jK+rVIrFcyRO1V
	 I+BlEQY94KtuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 612BEC48BC3
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170850229638.16206.14218723654945391342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b07c8ba01f923c0d984c7b4fed6089cc4fafaefa33d0bd6754a67bb3fbbc326
Date: Wed, 21 Feb 2024 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708502296
