Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D482EAB78
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761292194; cv=none; b=ZPqkn9LyeDm6/mhmf+wjyhdADQ/+FGamieOUG8E6A5HzH9zAbWcyBY/PJYFi38zEb6MMtI7/ItwnyGerP75Ygc6Alcn41eFWgUZKWjlhblwXRzGCUcGZ6KE34CJuYT43vYbsLYmJH3MmZI/EGNHNodqrKYZrSmp41En78JqW+Mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761292194; c=relaxed/simple;
	bh=vAbpx+3Px0jMB7BJodiDf/oXeZ7KtZB903nBYsn5jQ0=;
	h=To:Subject:From:Message-Id:Date; b=Tn8hgyz2IaGm2ul5FFNbEaCIzrN07uamW/DNYNO7WHfgbh51UqBKInN+ergmk9S5IBDSmZTvPAhHU/mpk7GCFaSoVSf9+aoC7XQ5YSAcO7e8oBLfEbi/OBa0Db2AWhn/xEwEy94LjolCRRT2etYoXzsmhBIS9facRZQi20a+4Nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bt+8TRBf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bt+8TRBf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A762EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761292193;
	bh=vAbpx+3Px0jMB7BJodiDf/oXeZ7KtZB903nBYsn5jQ0=;
	h=To:Subject:From:Date:From;
	b=Bt+8TRBfXlHZEbT8xABdF7OvkRBwbDkpe+sMizxHNfSLP3Udx7iK/Sq4XGPlWLj1z
	 jU2TjCHjuiMqByvUQ2CqrIFE/JTXhLd6GUrEZm9gazzmT6r/goJavOPTbvcJkZQ6Xl
	 VCfnU6IazD/QgubDnNMGbcS50SUW7Fuxpv6eyszErkra2Nt/JMQa4Acb+qePfyGe7K
	 YadTr/mlV9tra9YKmDlgwha7p05WKRIYE/95ubdxMx/NYhhmW+r1SRahMnFsY9O4yM
	 bbdl6NsLUDxC8bMmBpVF6QUa0/nodrm5kCWDi7yxmZepcgpU8JxD2dHyBsOBnw0qWx
	 m5LA62G9L39EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AF0CCD1A5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176129219358.17409.1647565294426413682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 982e644056d5bb88e5b78cc0c8469446bfac36dae4cfb6c017581c9f7c5eafcd
Date: Fri, 24 Oct 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761292193
