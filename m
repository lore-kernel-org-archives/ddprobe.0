Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7541EA84
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 12:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780489474; cv=none; b=gOU9H3L2qfvUvjw4//OUi9l6ZpG7fF+owB+4bl64Qt6so9OmyOXrTPACDL/0It7z3QO9+6KhrpsRz3hGClHTXzRp/kdmrF9FJ4PIiEr9x5Zo80nPqj6eK6QO3ZNMy3bjLp6Tq2Ws4B3Pcyrwb7c2Vlbhh1RX6Olck8gju5sMh24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780489474; c=relaxed/simple;
	bh=CxoEiRlOIMO93iNHQbW0j4ZMQfLvAWok4H5xD5EXdxM=;
	h=To:Subject:From:Message-Id:Date; b=sJpg1vVgBVVxGyoR4kGXBCyhtJ1va+8kTwpenJj+qXZ/yw5ktFI/c7RcqTF8F8GX8jXNWDQzNxwvGBJ7NaUqq+PplOEAi+Ebqg3XBD0jfK/k3/uRmEQ+LgaBYzqHDIz5Wr6rQM/xsi4wZQahQ1BADIlRC++Tx1ass2YNtktmNrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JxLbcozp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JxLbcozp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5288C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 12:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780489473;
	bh=CxoEiRlOIMO93iNHQbW0j4ZMQfLvAWok4H5xD5EXdxM=;
	h=To:Subject:From:Date:From;
	b=JxLbcozpDf80v5S/ulWPk+NE3aNY/gKGNmOE9re1g0ZCwAELhsy/g7kKKK75G7Uca
	 69L+89fQ5zU9+9w+uZD9wMH6ymdbcPhPQFIzwzsUiCWc/T7I4qWoT7n5d+Qp/ETq59
	 v5ja6EokvKCz2DJ8m0xfCEVmL8c9HGfA9YatrODo5E0YUTEF7xlF+WuG1Eqz1lGMMi
	 k98NYCYWrxliRIe2xwGbZLDO2N6lfveR9M749P6100WLmdb5eHhevLyI+mBrFE0tTD
	 77fn75j/hT3GruD6wEsAxJZrHBmcnHK+ItS+rS+CNl37UXBAu28GYpYbykD41U9xeR
	 dck4MxMOT0D3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8ECDCD6E60
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 12:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178048947368.16258.2844998249475620552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35f831ae4d30261225a477bcac5394fe149cad36de5e2dfbb8e7f46c99461d3b
Date: Wed, 03 Jun 2026 12:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780489473
