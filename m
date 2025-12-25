Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CACA1FC8
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766693634; cv=none; b=YmkSu1koHeWDjiXthajY/cz13/D3KgG63tScNU3dExzXWzHSMbcHPi7KZopu/D1W681usXdjV7kiZQIq22Nc34RYdl0qB8ijKgQNl9gYPVY2UCnHakoXeE4hS/RsESwBCXLaGl44r7VhzHcZ4E8P7BcHHEUJ/QYp+6umVAMQR/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766693634; c=relaxed/simple;
	bh=awh/vF+ULatrJVB/nRSOzzGm9BSzukdO/a+GsFr++UE=;
	h=To:Subject:From:Message-Id:Date; b=aRQsKDH6+HKkY1NZEYXxFPS3H8y+e+lsOGw0BXwswWtvxlEKcc4X/cvu3kSI0kKiJaJECVVfbOYtsvhJcNCRDd9PK8MTX6KqH1qIZJPj/0If/ZSv8ObQopoNlVrs+0LohwdYo+EsvgH/CExLABLY9VqaPYEkoQRP8MHADay+Qyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JfyBK/bs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JfyBK/bs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB835C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766693633;
	bh=awh/vF+ULatrJVB/nRSOzzGm9BSzukdO/a+GsFr++UE=;
	h=To:Subject:From:Date:From;
	b=JfyBK/bssnYeUOALA50fBfSc2vp8uDgHZa5tGvegyAnCUmQQcPuiHvGBnD+9l0+7f
	 laSvB64NYiTD8YX9jomkdrSxfL9pM4QWvYBsaJiP5V4Tu13W9dLsvuYlqInIh+ZzgN
	 q6HEY1yjpqNSl05i11L92FUQgfCcNM654dsyoOycwBEiyRhMvnPwIJBDrrGv8VuBus
	 99i2NNbSMU9PvZKuhX9N89DlZAwVpKKAZcuXiklIg7fw7XfeWO9LikQjgiRSKWNMCn
	 iCtHC01zMgIzxGwZ5zW2xb/n6wJ+JIxSuxev8/nogw0RybGj99/CBZdXpSMJ8n9ajb
	 6lerdN4Dn23Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ADDE7AD6C
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176669363358.26722.1802578218156417577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50e57e6d37d4904a9548719941dc3bbbbb57d5f06f3fe4aa445c595b309c4cef
Date: Thu, 25 Dec 2025 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766693633
