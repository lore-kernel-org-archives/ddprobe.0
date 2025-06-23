Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273061C862B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750657795; cv=none; b=NRGDF56ki7zpRDZ/9QPUVRGJaWkcbNwYrSEIIOU40tfVc9LY+eZeZUqVh0esuRA2MZycsLpJUBkkGkKC+8hT5G9ZWmgW46iOo85AN5VAss8yyJOBoxoOHTC9CHw84NgnVYKpACwiSSgdS3A1tnM3cghnaBNNjK89koLcZM2iZS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750657795; c=relaxed/simple;
	bh=A89VTIud1bk/eoVfQq2BvqZNpn0Xcl+9IRf27T0G5ZU=;
	h=To:Subject:From:Message-Id:Date; b=lXmHMt7V6vKAKKRUXeT7skJt7ffobRJjzQQCIlHp7arzUtpZ2xFk7W77zcCIJLenTXyPOfAiRo4j91S+UVW1Mq9rBCAKqvZFfGDPMTlcWFD0hG9tjY3sxA05DTSqcE7kI64f9rX5v4+05W/8BZgGzxPBE6GPGZRnDgjnXH8DBU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iKiMeuIW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iKiMeuIW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BC7C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750657793;
	bh=A89VTIud1bk/eoVfQq2BvqZNpn0Xcl+9IRf27T0G5ZU=;
	h=To:Subject:From:Date:From;
	b=iKiMeuIWxHlb2OmMlAr4h1dpLwI7aF/WOiXfcz0c+ucBViDc4qgyVQ77ky3lWpXQb
	 5szTIL1AnRzspqvN7Pyrq6pcSmINHCXr7P0QtPBW6taBs0lI057qwc//+QHdsnJ9Z7
	 8Ei6hwjoInvleLF8M2X5n2AtHOvR7Xw+5EvuP2KphOAGS1IqG5Qimsj7fmd5VUZUCD
	 xE0k4DQXw4L7O2arX/dn/AFiFlNuWnvXGkYLtqZuTM0ghg3Em16ASufj6d+qrH5ZjX
	 vMPxGDiVi9YPJQ5kTEjeIG7ipgDagfDCpAvGqXLXqoTIU3W2Ed1/gPJ8I6f1hXVuAp
	 WBkhMG71YdKEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E955C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175065779357.4457.17745083882842654350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92fb8ef58777a8bb82469fbe62838a1d777f886c22ec7c159f17cd3f0d20a99d
Date: Mon, 23 Jun 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750657793
