Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A12B3E1696
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791242434; cv=none; b=h5CfER+44j7dF5ULATnQjQ2PQ7LccNneRQEsC4iKgC/coFTmrzMoDkzfT9S87xA+pfzqpzU4cl3q2tjWv/xp/Wc7ISLus8CoiV69wnIL21Dqj4txJKPgXaI9+Vy3LH3lnPNdwqz1KdSxB0967Uyvxs8T4ZE+EP7Sc5eKW619i7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791242434; c=relaxed/simple;
	bh=Jv25aj+Me9R0XO3/ZKZnf/6iWnFCEuG/6juSzLfFLd4=;
	h=To:Subject:From:Message-Id:Date; b=KoZGvMP/uE+vcBI/e57Vd2b08qcY7rwMQ/kMO/QqlIcCovmJ8TQUMUwbHHGcsUq8EzAVPoLueAeVTARNrQKuFtq6oGK+iw6BrSuqh1HHaA6R04Nb7IiYC+LuM4CgN5g+Myx9WwudUwESfQDlTVUokKS2FSFVYKg9LogtoBpi5EY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vkr/cXHb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vkr/cXHb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA777C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791242433;
	bh=Jv25aj+Me9R0XO3/ZKZnf/6iWnFCEuG/6juSzLfFLd4=;
	h=To:Subject:From:Date:From;
	b=Vkr/cXHbWxGOQHCR/46UEh6jqZfjl+vZ2XxTIYIiUAlbI2eShDw1Mmv+gfkncIMbu
	 xMF73RKyrinM5pJSgFwaFj0gG9NAX69o63bJ5ADFZn8OtdEM7ljves6teF2HTs/UoR
	 mSiiwTg0LbDMXPvv/s0IVWFT+hrNc5WJtEp3ipVSp0TnJKQYBQRq/P7JiZvXd5q8jg
	 1IirtW4ty/O/fttSpcw24hoVAEFBHsvgchHCq6JLGkHIZAA7ACnDJVR2MIr4Ucl+YF
	 rXsEzOhE60XvtjrXv/woUdPthY07ZHOBqGiseBdQMofBDlx/0IHJqNdKu6RX+aP/AR
	 gvJOZg//NWNeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B44D2CA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179124243370.4185.3457133204324545795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 889a4f766c31b62327b302339c6025a03b805c18d3cfdc82de03a3cdf78de232
Date: Mon, 05 Oct 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791242433
