Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6982C375A
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760539195; cv=none; b=JeVLr8d+epRLGslsuv+DlzlQCHoQfXi7m2dg4hjNybu8jW4M8oOrIgChg546pe6tRcrHeBE2iyebOrHQVWH451K0P9JkauELvj+giV8jovMRhBPhjqABOHIUFNwThC/KkFxmmV5s6M75sEshegUSSjPvLI6mto0ZPtb13A6rx2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760539195; c=relaxed/simple;
	bh=2gX92KvEDkPqZMT+jgxNmfLKwIPAbSxD67eHkj19PnA=;
	h=To:Subject:From:Message-Id:Date; b=mNhwvQPw3Whu/DPB53kJ1dFumyMOrWr/szV+O7D5TaUl989r1D5zxIgZdqA1Ijd449vWbXOaJjh+AARRHSe8XMRLaRGyoVoE3Uf9mclWRJJlnOJgF53qUoWhiq0PGy8XyCYCl8AgxKwT0CKllWX2QrO9zfJrPoGYXH9m+gLUJrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVVtQW6M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVVtQW6M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18EBC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760539193;
	bh=2gX92KvEDkPqZMT+jgxNmfLKwIPAbSxD67eHkj19PnA=;
	h=To:Subject:From:Date:From;
	b=LVVtQW6MyBnqjw5j3ZKx1Fy4wztmR5qa0DnLBoP3WfnGPwvf50MRRHYAsIP9Jl3V3
	 KAUlJ30gC2TkQv6C+fKgnfew8Ig+V1Q+V9L9ycqMi5S9jagwUjSVxqSAaIm7QjqKev
	 7+IrpqjbHy5V8k1hA5egI02Fs3T79nlJufkSqpjPaxGxPlF/CLEl8cOB1s4ZPVdBIX
	 dDT6KsOqZsXea4vsAZ2DeCcCpQaq62qKATI6+hppOnYmBvGgWZNC5e0xmNVZCQCBiB
	 JsXsVofa0h7PfOXjrJLNYpsat3ykWi8WmVSK4e8C8QvMIqV8lsuSJovzlzl3B05tZg
	 4CD0Z3cm2abVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92418CCD196
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176053919358.8070.6660975363473185978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48936c6b731b7a6ddee6cb8da5d29d2a329b52e73b36870ac9bdc79443f1b8b9
Date: Wed, 15 Oct 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760539193
