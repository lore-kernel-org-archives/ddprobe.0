Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2997331AAB8
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 10:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776508054; cv=none; b=VBjBLYVl3bGBlcvEoalIRymbXwu3F7tbe58wqHglC3gXXRiYD8NxVvROIRV229v3rRqoy/8nEncewbcXPFtsWONlU2oY5h12NPhzL9y/5CQRwAAI3XEYtdDtbS+sHv0oCZrVkBqIzFKZxYSMDLeWaEE9DzOtxR/tyTtUEyK94A8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776508054; c=relaxed/simple;
	bh=wds/GnnwvdOeFQD9xL9EUmOOF0dD1eJexnBeTeeENYY=;
	h=To:Subject:From:Message-Id:Date; b=WsGDWIre3im6I1f7uK84+2ZCkbHOsy93rwJkQF4IrgYTJn4Jq+O/gh83b92h9SDKsW4a4r+AEo267t47djo1PYEc+lgQ6nORUy7xrlw8sYkJ16R+3GMcaJYDCmoFMynQZBp5ildJ/YgqzSOB2taJHrxKTCA6F0niOwJZrFLEt6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C8yLvie5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C8yLvie5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF1DC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 10:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776508053;
	bh=wds/GnnwvdOeFQD9xL9EUmOOF0dD1eJexnBeTeeENYY=;
	h=To:Subject:From:Date:From;
	b=C8yLvie5ad/KKmbfCeftm3cTa5SNxNMTCC+Jd+3GrIqqz/wf6Lks6ob+CcNKXO1DH
	 Ys736cNwO74Ap4EaBpdYmyYLYiT3oKjY4wZXa+Xr81MJQlWt0J3q8o52ykpzGzb6Iz
	 sqgrV3vshYItzlsafOX1fSrACjWwPqW8OOFmyQ81IXzxkA4ljNBJrn6dbM6suhXI37
	 KM+RF47jXDjFby4BCACFnRVXbjWK8IkirMYX/+gGGXgbF7Xmf4xsngzv/5CArlAS0w
	 SIxJfXj9xwRsuhdyDMEHpTFYkNezA4JwQUuNNwvDvBBBZbKgSkrxCiwWrmVpIZeSBO
	 m1K6MUhAhjFkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A958AF99C7D
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 10:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177650805368.26965.6591322012229213876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0150ce8c08669612a5d770f7362eff47a190faf2dd1f0f08be63995efcc760d6
Date: Sat, 18 Apr 2026 10:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776508053
