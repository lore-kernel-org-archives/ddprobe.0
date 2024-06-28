Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E9961F95E
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 04:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719549263; cv=none; b=WcujxyeZEgUHlqsuZCkA7S3adWqzoVIfQ+8BqIHTwY0gNZ0XKL4idkUKkZtkMAzC9bv0rhYKHLbZoxUU/Z+Sjljs9yt7OMPiUJWFIq3+ZbQ3zS3E1Fga81Z6STw2/X3jtEPaxUPNl5F4Rq7uzeGePVQ2SWycCwby1LZYat+BMDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719549263; c=relaxed/simple;
	bh=ro+EG6FQ4jezKOUOk/aLQklYukUMK1GN1q5gOEzI19M=;
	h=To:Subject:From:Message-Id:Date; b=I2qANcWivCvd8Tzs6wP2ad6TQp16EEL7xaaMqfjOrHkKARXE0UvRjPy6szSnugUx0tBjZFZ4kP8lxbVwtjUgDcxoxwhjpSqovoSznRIWaz1VvD3eon5LGiYvXHIDW1hreLFByadjBFPmpgHDC5A9Tzzp+Xo0yseDBMdKGu6bSkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kogk4Elo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kogk4Elo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5749C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 04:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719549262;
	bh=ro+EG6FQ4jezKOUOk/aLQklYukUMK1GN1q5gOEzI19M=;
	h=To:Subject:From:Date:From;
	b=kogk4Elo6bw5F4TwIWmkBalk3U7dPMpEHyD8/wkhn9VdbrXzInlKzb2WcIKik4KKR
	 6QlbbY/rbSlX8d1ZhyXtk1gWqVQA9hbJYzml59z6r4gByIYohOPT+kJXP9YB3xmp/l
	 Y0YAd3kewRkMmVuiVKUpOuRuEKntUXqKgFzFDcpWmOEThj7XJu0N7dfZyKWpKtu6F0
	 ndTdsKu4W63b3Rj9dZ7/Lk6HuSPN+h/Bbfj9/huV2dJ3+nmVmHpNfupRu9qgiaWZEy
	 btLIz2o96Y6ElnK7e3zxoa7YZ3jyUQq4qDIdrYlprTaZ7tKlvyCNDIfrA38OP6LbQv
	 L77PtA52JqmIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C96FDC2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 04:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171954926280.30259.10709787406772454263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 203a8a0c6c05e2c204150c456de1c06767b3799cad87527d00bffd3b3036c8ba
Date: Fri, 28 Jun 2024 04:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719549262
