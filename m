Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2B52328638
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769786034; cv=none; b=TJAjuqqNQK+oMVvbdT1ZDVNpamGq490+24CywVhksUWWl8VHA0R7gVG34oitUVuPYmmZZ6JQX2su2aLYQ23UCo1p8YskC9/J6NvyeJxHzUIQ3wBRTmSGa64oz8xJvt2AIUy4Xex5b/0rGuKNl6o6l3a8uhtluvG9dt64CF1OSjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769786034; c=relaxed/simple;
	bh=dn0MPSOvs6VC7guAHJGe41eEx4XaVAZIAhN/O+C5ZRQ=;
	h=To:Subject:From:Message-Id:Date; b=tgdKedGnpyQWXCUy+FTbqdQc/alHi4PmLm3GQiKK6MsLP4XotsTUPcvxA65GT7pSvbrSIp9uFdkBkAxbvALeRxV89ZRVl9Sm1dzVsmdbX/jY544DCZkGcYrRlBKJ/Lkmhd+lfeUoGGnO6yuxQZwfY+RwZJ+FWxjaVL13FkPZPJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kKvAbrdp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kKvAbrdp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0203C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769786033;
	bh=dn0MPSOvs6VC7guAHJGe41eEx4XaVAZIAhN/O+C5ZRQ=;
	h=To:Subject:From:Date:From;
	b=kKvAbrdp8fMddqXZ2b+jjHTHFa/ZLMrvS+ng/xcQe0K2tvN0ljWsIHk3EvEO0ntl1
	 /9q+5T2lMCs76re6qx4CJej7SiR1haki9acIxO8LSI/Xw/OG1KLfcqQjThUZ8WJDTP
	 uqddqFss2TbH2UElPQMwAGJPlEojiZsDFTbzfQPpx3a6iDfzbooZ+/HnDeoNb6U3pY
	 IuCig+008D1nT4sKkH8uaP3FTMamwS2PHCZcH0Ar3MdzX0upp7N7QJrmtD6VDM0QLY
	 KTbqmLWA1ZJSoByFlxmcCfykURTvNTEYJuGnRjcY/ByJstEGVkQd925Q6gs6ivNkTm
	 B75ob6h/4sHCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F748E6BF1D
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176978603358.13566.4918372813670442014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c86b8bdde94bc9e6d68d80350dfa87185d3fc91dcc5d13b9441df032572b93fe
Date: Fri, 30 Jan 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769786033
