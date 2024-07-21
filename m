Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475C78F70
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721559354; cv=none; b=fpKGNT9KoAzv2is1GseI9ZbcAew0ByKb43Px8Xewh7CuJ89VFO+oZR1vfuWqXjXFMFY8BEiXuZalt49TtN7B5yBQbgjLil2n3Ul8fM/0ZULpok+hLA613mps2BKRMrrh4OZhLmlDwttdLlO/WluOQUGQ/uJaTmetGhuWFVGsfro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721559354; c=relaxed/simple;
	bh=fO/HMCklCEhcV4rExcTfSaeDr7athJM/rAG5jc0p9fQ=;
	h=To:Subject:From:Message-Id:Date; b=HiAgInenggwWnWokFmVTEyOqHlYUe3u0h6hqBlguQA7OX/fY45csf9VDEcXW0xI7TUq7j9z7sH9rIUJEGLGVd3ENHepf+ke5jxVEdS7IrMrgM1uAzbdw+Z4Et4SHZh+ceyr/y7W8c7wic/kvHFk6P6mQQ3vxOntyZRwTc8nOazM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eW7k3/rA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eW7k3/rA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B28F1C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721559353;
	bh=fO/HMCklCEhcV4rExcTfSaeDr7athJM/rAG5jc0p9fQ=;
	h=To:Subject:From:Date:From;
	b=eW7k3/rA1lMSgE46WKAQw2/ENIDBJZKNzXzrZr6uHyPF1itKZlR6Iculs7e4WWlm3
	 5wKfuZdrPKvJudCVPSyzDictXzF2q7xBq9TwDDl5YilGBOT6QG5nST0u7DJeks7SF3
	 ojfBK4FFFEVKO8FJHKlWriiZOCS91a6KTQmTKhZWsV25cpbX8V6Aix36l10uX3b2UY
	 k2xBsEL4xyu6NmldYn99yvjIBQivJfyp23LbDs1h5pcviEoOyzhiGNIiQbwtE2HyAW
	 C7tb+CKCQzoMXUn4EbmNQU54auebrCcZj23DLwVCB7rpLAdNFWw+xvxX3AGVucS519
	 1xCdK20KPeTgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BF4C3DA5D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172155935358.15509.11285764069305562903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3e393388114ccc6bff538c99537eb2f02188b60b28d168b90072334632ecbc9
Date: Sun, 21 Jul 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721559353
