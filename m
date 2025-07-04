Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5092E3713
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751648994; cv=none; b=IwoeGIWvPxyugVKMf/BhLOo6GPgAkyuK8jXdttYGi6C+9tlNXO7S8GleSXcyvKhHeXRpS3iAJWDGf17h5x0MpwEnhzRgyy3MUUVgyPZ6qXOeZIpquua5V0Ppcy/r9rk6M71l29ajPnW9svWfCGlCnahbAHBRhxVYTt99wV2TAlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751648994; c=relaxed/simple;
	bh=VM7YMYmZIGpPdSmRubkgEpO9aMMM8FJPE6t+sTvZkuA=;
	h=To:Subject:From:Message-Id:Date; b=Q9twEiPz8NMZo2R4EG8dWpzhfmjzAMCmLq89mqDmU42t70ZKM43CCr0gsKAs2Qqhv8iV8WwMi/DjRHiip+pjhNfB3LUevHHL4XeRPGGxylR+2lo6jTRBSX9hYL1LH4jAj/c4Ju8ZxS0xoNhCjdesUeCVFEr3OKWB7BWcliDQh6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O87zaPr5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O87zaPr5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5575C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751648993;
	bh=VM7YMYmZIGpPdSmRubkgEpO9aMMM8FJPE6t+sTvZkuA=;
	h=To:Subject:From:Date:From;
	b=O87zaPr54zA+gtcwpIKSANS6E8a41QO88Ug1DmFeMAq+qnGxceIaOyLVEkQXmYw6V
	 tmqGmrT5eWWOa6El9kF/Vk7LD0m8O2JsoUw++dSXBz385965+DDGeyBMqqAx4XcJMA
	 iWYxMwwF4oAiqaZJTi7fpGGuaqiuBLhBbSE+0i54k+0CWYeb5LpJWk6TJ7e4o7CPDt
	 FovZd2OHtvsvG11n88kefca4QvMFABqSHl+hHUAVP8BYMZZ+O9lfV6kkdaAHzDWyP9
	 lp8zVyRfQka5Tkpr7Ys34fVnWDZcZafWH1Uv0Mb0AzLXqKWgmZ2GIcBzfeelpyEFTj
	 ks2XSfPw7D5Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CB3C8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175164899357.18780.8798722624570385810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55d542937e324dd573f6f081387a90f5339c206d0d46479762efa9f88a5382b8
Date: Fri, 04 Jul 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751648993
