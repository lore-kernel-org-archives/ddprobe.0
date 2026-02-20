Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC43342524
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771590894; cv=none; b=WxQAr6UE1Yp2QajDpJQGJ9REGpGWgfI683QksRMbqK+vqk3Z/0bZ0kZRGUYCTH+NUNoq7r29G+Tx2K2Mcq+EXHXeeMlyMzzojG/5Jw8Di49Wpsjkok6l+AomC/Gdpyq8hpMkwYkO43U7r9m7MdQlHsW82U62Yqlmuk41qVYTE8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771590894; c=relaxed/simple;
	bh=7k0SZqeLbdtMaBAvFEGEIE04xn5/vmZr8sVmFMLeJTY=;
	h=To:Subject:From:Message-Id:Date; b=lfcHsRJws63LYlovOim/++rJeJgzHxYHJI+B7l2DzwZkg3lhdZgJAPauOHxih86gldH97hzpmCB6WGYnqahMz/5B7LNLfru8ZD6H8N1C160/WUQZVqPp5t/dyJKI3+KUfsIDv8jTUqR4+EwyfASaaK07Ee+ECOYtRa7qh5MOxMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gWtHgeZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gWtHgeZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A525FC116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771590893;
	bh=7k0SZqeLbdtMaBAvFEGEIE04xn5/vmZr8sVmFMLeJTY=;
	h=To:Subject:From:Date:From;
	b=gWtHgeZJQKcqwY9PTTb/qlVF1q6yx/ZzdD0D4oy7xs57I4OPdasLKThaZeYZvaHPE
	 MMj/d7PmbQme88T5OJWCUJiDZOhpc38YoY6U4xijcrSk61vjyRdN05HprTwsT2Hwyx
	 +HD5oqiKS0mFdB28IRa+WZJTBHN9+eug4dUBfWoAJKqAXeR27J+zPyDM+aClCssDcV
	 zndEWhyye2ig6xEruzRi6objmmvItw+U0YaNAEyg7myKj8cs1cRDcf6xhO1YIAQqBK
	 U/sIz84BRkk5bQTrnEjkHH/zfOiX8CgqG2QRrTf1ygrjfb/2ypV5S7JVEMdb9HOXsh
	 ZSX57e2ySza0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DF8C55ABC
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177159089358.26801.5837576263121633992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3ada7ee61ef002ae91a8ddf8f1be45c7def34373c45822d1e91869e83a5629f
Date: Fri, 20 Feb 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771590893
