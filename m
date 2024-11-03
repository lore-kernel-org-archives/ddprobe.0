Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DBF33FE
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730606154; cv=none; b=pKDUaX1m4skHFkmydu4blgLDlJ6tFcWDWfLLqy7bShc7aKSEqETCYjx0Ov2SRbb2+6+ezoaOjK4UxGpfYO67Ctu5YlYdjLMlX1QFWMYjbwc0ScDd5DuEEkq3vT5eHU5RZqdZSWolHuSHVnO4Rt2tUqXOGwc+19OBfK66dnhtS8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730606154; c=relaxed/simple;
	bh=AkjcARQdmiTjvzwCc9DVpzGF2rsOjMmOeB6nbI+9dvs=;
	h=To:Subject:From:Message-Id:Date; b=Tqv76qxu6GsFJfsS6qrRlN8Vqat/6ONpHre/Bhc/8/oBzn6rxIdO4Qxi8Ol1kCjfY3Xfoj0+j1dB3n+flDXLwPZqUKnpW+Fe79dEkH50b+lZqgIFV9Uybbpc0ve4hLpnGM5MyUStXNeIfwvrYSpYNuml2Uykd8cpUk7Zr/+SFXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gOhEdvyL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gOhEdvyL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D6CC4CECF
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730606153;
	bh=AkjcARQdmiTjvzwCc9DVpzGF2rsOjMmOeB6nbI+9dvs=;
	h=To:Subject:From:Date:From;
	b=gOhEdvyLIeUyiyMantZ9QbHLJskyHEWIsRMGi3izhX2OQoq+DeLBtpOkxFBDnvSxy
	 GMKXiV5nj3K4vPegktvWkMMwHHqLl5Ufj6aKTk6p5vcKt1gy1Mc8nRG61JqLt0cYko
	 QvAyLP2axEl1oCyVyGynjbaDdKg5xG112ExzqH0psRi8gV2kNertVLuoUIEu6H78co
	 ub2BLKRNCOdE0nzo8APZ4nBjlBiIZNMjaWrXriPf7Hj4Vz7DKh2m6I4cYnWvDf/IkC
	 XHP0KsC5nblPZEhZiLLawhkO6EHzgYRlwiFdy0+27BFn5Ro2onASGrsIsaA4PrCKxC
	 gxNERyLjpRspA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F59D10C0D
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173060615360.23628.17504169269634619047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be82e15d1d3de5c09a0c029c8c9f2501a3e5d9d852eff6db20a6cedf781a88be
Date: Sun, 03 Nov 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730606153
