Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A832A1D7
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735633554; cv=none; b=WV6lyOcKqevw6HFI0SOvcb+2v2DAcEB92Du+YiWYaoVtp7/3bzD0sESRgtZMjK39dH6WC5WTup4sKEIVTbJ3mHWBcAn5cz5QnFnJArL0eFpjrPZTx3ZiD6UIjBdCIqnVPaO916190tKhs1ybBVuonVjaCu7rTXBZ2buWnJSQdmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735633554; c=relaxed/simple;
	bh=KFOGGji2dm/u033sNp789iiCfO7KrsceYMe+LSkAUcw=;
	h=To:Subject:From:Message-Id:Date; b=lvx6dPQNki6Pg/ZHujAzAWxqHFtmE6zEsbyLOo84/l3lWieUo6mEwNUt3CiMHIDT65maWi6KJs0ldEjKztLmVcxifkobffHVyYCHBEUZcg4xuDSXrh8G8xqqbrd+ynRMQO0eEnr0vWrtOPqFK1s8wqXoNh6usDSBzFLw34Ahbks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oeK+E5TH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oeK+E5TH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F98C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735633553;
	bh=KFOGGji2dm/u033sNp789iiCfO7KrsceYMe+LSkAUcw=;
	h=To:Subject:From:Date:From;
	b=oeK+E5THjkU81Xnb0c4zjWtKOjx0m8drCs9TUXidaoYBi8ixsY/cWYprKx4fPvM7V
	 FRAoeP+XNwXIQBL9NNlf6QqA+MXaDxW0WUOorpDKcAAhFz0tFj34KkqaHZ7roNRTc+
	 ndnSKu80jGrYfnMWALDA8hUUH2fsaGsq/aKZKKTJKwU8ckTl5733a5Zt93ILXo1HjO
	 zUVYVbj1A3WmJDDm//69ObqtbxqdxzOYjuOchv6M7PPxN5q8QXIPoBUaDCBzdXc725
	 OteYO3IbEGnPcPyf435tFFY7xBoLBEHZTU5DBgRnmFdgcflKwiA90XH/EtpEMT3I5l
	 epn9vwBBdx9og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93051E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173563355359.23515.11370953561290022770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cce76a2baa85b0c16855922927c0fa790e1d34efedd930700a1c6c7eb8f634b7
Date: Tue, 31 Dec 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735633553
