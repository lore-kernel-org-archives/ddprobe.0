Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B3AC3C73ED
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 08:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775033734; cv=none; b=izkQ/ueJdA0lA8JbDx8mtAz+YCxEcb5y0ZONpcsgyQI/0daPD+k/Kpm1bhULSwD1Fk3XRF7EHAhy/CGlNqw4REya4LVNCS89PuyLk72IYCs467Y2gzL5Vk44bah870w81H/9ydkWQMCwdEZEEJUfVriCiA2dFDvhgPEteLTa+Mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775033734; c=relaxed/simple;
	bh=xYX1HSa0nIUEBgnq03l1EVER9aX2BWW0Q7NFxlp7wuA=;
	h=To:Subject:From:Message-Id:Date; b=Pscmstmgva7mgPkYg2k8Yn0745QvnW3vJoRse3ovIwWHcYXhC9rvy0bHUBeVzJJozmHtouaWrSsEOjTKJ2q4IcANst4JokTMZkj+1p96DcelTkmeAxwKQO4fFBEDfl6k9pafEn32q3WKfYMtWqV+ME3eFEv7IP7Tl6rT2W4lTpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+a++ypM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+a++ypM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1085C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 08:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775033733;
	bh=xYX1HSa0nIUEBgnq03l1EVER9aX2BWW0Q7NFxlp7wuA=;
	h=To:Subject:From:Date:From;
	b=C+a++ypMTogxDd7DbJRq40O/YXwj3lN+DGFW4f0b9jNtZpBJ8thcuo8RpMoCtiLUo
	 1P+/Y8FKEMmOdhvw6uZEBlC+F5Aq1v3OF8FwYl5lZZsde24bKfCaG5V2Y6EjgQoN+2
	 uxYYyFx5SbY4t/CKm+lxPoBu+9zxvZW0ouXR2l6016WZnMGwABs9TOp0WWP7hZC/nf
	 UKsDDunmAmvyLa50/vweqL/rmq1GKaYqv+IHVKRmbSq6MnN7H9yPDuxrAKRRn2wc+S
	 bZmjiwbjAqkbDVX4YwP6uPVFUMkm5HzSTOXh5USlpAmwGtIvdQfnJdydXmIqw+KCPz
	 w9GsuQSDjyBzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE14D3515E
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 08:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177503373369.21659.12708682446311335746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75c88aae1c12662ff28c3aada700c22c272cf6b053c365011f2a2e66c9a464b8
Date: Wed, 01 Apr 2026 08:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775033733
