Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F263FE4
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754623194; cv=none; b=O4l1jGsEmf/qlRh/ksAQ5oDeGa5459XmTC8+U2Ca27fzGageQ1pVfz/zKnIJiBmQfIOUIeID4g/ujPThxNNn+TuVMigbfjdale4JbsTUvH0P05l7VTyi76rcZX9pvBOrPKhXhIj+Sqk3uzuVxukWXAn4fmrEASYCzX2lG8fyQOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754623194; c=relaxed/simple;
	bh=vl5wuRo/JWDHEgdWvPqXx48k/jtXaU7EgEbhGKq0ypA=;
	h=To:Subject:From:Message-Id:Date; b=m8LB8JD1w5Fgyok+wV+svLH4x2Nc5hJQT3cVXXRovdoV6HM7A3vXm5iSxgBCVre6MOAGqvOmLUEjSfmXMa1DSvuygyY2/eReNBIBoXm36LDOW2Vq7jo97Fek9U7wF6Mb7AbwcGzHueHPvfzef66G3a6cXiHy2WkhFcPmsQycDqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FtjFua6E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FtjFua6E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3772C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754623193;
	bh=vl5wuRo/JWDHEgdWvPqXx48k/jtXaU7EgEbhGKq0ypA=;
	h=To:Subject:From:Date:From;
	b=FtjFua6E0LTYVLdUG3a+TmKlZOXEvOrv7nFRFZ9A1b2B0QCfpx/EKrF+KykVH2iSo
	 eETAdiIo1JvsNYkUxx7RGTjRCakh0m69lrORphTOneK3HH1K7lRiWJw4EVYaBbGiEP
	 wNb16/eB3F4GHuNeI8gBnycz0cMNESTN2GqDf9CvgB7vuDl9/qDBa9thAuOi8RUlid
	 kKcsp9jIunwwhrkbCb761InVyRGmyGJZIpYa3KMhdlD66HYOSyxXKp5ZZeQ/QYLeE6
	 On+rnAS8SS3JYlhAVP5hzjV58fOYmv+7NyfXYVWMLz5KmPZetOmeh218NIdeqUscny
	 9ehaLSX1IPm2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D21C87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175462319357.19734.4757824532367369785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42411303ac918954dce6d2394817ca8d4546d5cd21fc1636f178f6271254773e
Date: Fri, 08 Aug 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754623193
