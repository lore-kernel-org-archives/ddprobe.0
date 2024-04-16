Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D60283A1D
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 09:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713261563; cv=none; b=nYh6YCFSuIYSC//UhQf9UI4RpUSk/T+oGOgjcf8pl9CSGlPrXsA/ew/8Eb2DHLzbU+owHDRAP5g+GtAxKJ5n8z9Wp51vdNS/naETeSi97QzBaQwQXdCgsMWEP4Cyl7XVL9L+KtZ9ZSUE+Q15HwncI+ohMK+cZYC13nD9SvcBrYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713261563; c=relaxed/simple;
	bh=J053lmdT1kWev9FWVwFaQ0iUe6HwJt1cb9l4QFiXNQE=;
	h=To:Subject:From:Message-Id:Date; b=D/9WkczJ7pXlg1ns7AfWiRhrwIo9WpwgPZ/tXTNWrnttwPKOcpn7+hMw6VWlJNGLa97oalu1HVWOZvl3WtEfmb2rndHtD3pDSTJBohvV/VLR+GPIw6jNoUdflsIXf/VHrYKKi3jZ0fcb7qnW17osugwp2elRF70FyTVORrVMyTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UW44fibk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UW44fibk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D85FCC113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 09:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713261562;
	bh=J053lmdT1kWev9FWVwFaQ0iUe6HwJt1cb9l4QFiXNQE=;
	h=To:Subject:From:Date:From;
	b=UW44fibkN4wzHnz0+eOBbDTvCcZO6h/RIG8dsxvYL+j937Gyv/llVMvfP+gGqiAY9
	 7+2zgdVbP8slZFUF+pqEHPzUfyHTYmUM0bWFryWCO6/ry4fOoKlKtoX1pc1LjM1zHg
	 OyPKnjFjpmHMpqBuv2Eg1xaeCkyOOQCMfQKdUyD+b6dswy3W7FSvkDbaF7+0PMMfnh
	 ygiSwrBNY5Ey95k649H03Q6TYYhTOUHJq6+B8Slml+jd1D/chdu4oJKlbO8b22IlGk
	 o/nwybhVtWkvGbR+uu9xo33yzUlWf6RfN/ojq5XsvdcxPa/p036fHMvydsZS63MlJU
	 NhZQXU3HrfDCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4F13C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 09:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171326156277.2373.9779992455874466863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b19e56b737827696be0c9b596a9fb63d54fbe4a73c78e096022603b524518112
Date: Tue, 16 Apr 2024 09:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713261562
