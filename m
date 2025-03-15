Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5548F13AA2D
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742060394; cv=none; b=cx1cuOr4UnjxuUAqP1ishVKKk3FIgPEEKb0Z10SNIhywyuOU5b8Z1/AAGm6o83oKdIr/HvvlelJ0jXNrkYl7367RenM1Y7okxHBztmo5TNMeeE21ajkl52GB6l5wbgvfD57r4oifbV/ZPLG/LpccqKN9XjyypmJ7lkYFvSQGN3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742060394; c=relaxed/simple;
	bh=8p/fiunTy+8r6G8j2mhjs3MeBX5yZvRZc1sWPApb2yg=;
	h=To:Subject:From:Message-Id:Date; b=YnhGQp9BIBrsDTTuDPjh9h9ZNqxuD6MvuZ+ErxC18hm77/D4AJNMiFuS4a7R7tvBtLLZsl2nQZnhMTNID0GPRUE9dIwb9vhoPaXwtg/DQX2IoA+I/IA3Lx6k/zw49htv5+x5QFP7WJ5wm14S4akARAHZc7+APDz+7UPpKHLoACE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=esgXFV4R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="esgXFV4R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0149C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742060393;
	bh=8p/fiunTy+8r6G8j2mhjs3MeBX5yZvRZc1sWPApb2yg=;
	h=To:Subject:From:Date:From;
	b=esgXFV4RpguoqqRSS8HeHY/W8Zahq0XPUw/67dR6DtAsnWeNlfw2mLs/VFLRNQvwR
	 w4Wj2vtvTX5Hdjjc6IYokNhanFijH0Ua14doLKOjRY4rtjxpDch2es9m4SE3WmXekS
	 zcQV5N5Cq6ANzK0P2BKvcCnMhrrDKKO4oBKKTDUwfhHgDvVgJzWQ6Rz0CBya3CwTZo
	 bLD999W4LBYRi3H3K7e0ZUJdtigtagUjYq/QvFu3F05My6eWJukPcM79FPB+PHqvW3
	 v2Eu5HBDzScaQQCrQqDTkZyqFl6MxiMMqbedBbz4rcJ/N8gYTAp65z+2O+jGOvnB9s
	 3FcFAUhbogFpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A20D3C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174206039361.22092.16374718395122832748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17603151b44b3094fd82ec905291f94a31f807c56a11166320d75058a6b7b68d
Date: Sat, 15 Mar 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742060393
