Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323B12192EE
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769855634; cv=none; b=B8Hx7phsuAT3C6XTlB+4XTC1iI3zyYqvaBo87kyPPDOeeoC1viSGh3b4kHoTKEjAUPPo3U8zMAPSGbx1mfy6kByzn169UNcLRhknpyDnzFAPlmqKR2O3HsAwNA7r7rTLy0ZiaU3menli0SO1It9ZUGDowBeDWPWKyhamwJK5asQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769855634; c=relaxed/simple;
	bh=uNj4sIlRBd44naxfkrWs7UWt2ie8GVSmbcR3HEER5QQ=;
	h=To:Subject:From:Message-Id:Date; b=N8YjHxqj+BMW5Kf33kv/A38E6WghfyBKfo5uA+Z+ntgXJT1kZ0rZvBfJEwIuhJZJlfndnbGxZ10VAcWluMimV8oiIbvei+jQm2IyUwYWCnopTVkxla/18/AQl5BxvWd9GsZIvxC4DFQiDHAjAdLJdPYWtxFOgDdchMVrGymkJWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kbfm1mRL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kbfm1mRL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6563C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769855633;
	bh=uNj4sIlRBd44naxfkrWs7UWt2ie8GVSmbcR3HEER5QQ=;
	h=To:Subject:From:Date:From;
	b=Kbfm1mRLmQr0DwqIuLsL6xeX+3OqrHrMTjLSPYoNHgb2ffH4+ECRzS340gneM7792
	 OeiUkDpdngm8LLrEAzhlFYhAi7vy9q23Ibk0XqNGb7rh9KVC63Lem5EXeCZZVuH89r
	 A5ZuLbvuOOWX9ME5th7eYSNw0WQYPLPADLLCg9PkUdOGBf7dOasSyvsDiwSqLGoPu7
	 WaSunwtLa7vgkTalbXOhKQWKhPoj1VCR8bU5/lE6IIff/yg9eRx4WYxCz/Qhbic6Up
	 ZMSD3/y+MiTb7FK8TXsEo7AB88/CxFpXSRLrySSZLjxIyHCzfnZpeN6RGhwge2wOnA
	 HsOQynzN/2+6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914A0D79767
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176985563357.24695.552991375793188097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da680a32f8221e976312659cb52a80416ae73f8bb2bc4aad552c7e166ab5d63c
Date: Sat, 31 Jan 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769855633
