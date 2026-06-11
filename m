Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A0983988E1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 11:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781178394; cv=none; b=tb9VHlvLQAIR0rF1ykLK5YxET4KaohWHZmad+38BeADcpf8J06d4CCdiAS7RJvP2aSg3RbmKm/jGyBWyk4zhLZC0j5uaflkA+3PBgd7f3HrQou95L/7pJiqVSuxfjCnqgPu9hR6Cnpu4YIKvCktyHGFFY9JZj51oH0c7/iI5qAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781178394; c=relaxed/simple;
	bh=gqrpO3GjLV55aH2Y/QnnRQ3ktPkMSt2q1NsksB1FWEI=;
	h=To:Subject:From:Message-Id:Date; b=FL93/01PhAC+IRmODoZllbmAgZrdqbpW7TgAeCZ9nTZok2lkIOGUw7dKFOvN79mdnYnvNnKX/mJ2ReNpb9qQjN5V4onIFbqsvNd9YAdpa8JH98giRGqhDHu/sVDZ1RENK5oVuCsvgit6T/ZGTadMU3exN+HVs0m5VpTtF5DxHHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mAIWZGj8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mAIWZGj8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED72EC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 11:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781178394;
	bh=gqrpO3GjLV55aH2Y/QnnRQ3ktPkMSt2q1NsksB1FWEI=;
	h=To:Subject:From:Date:From;
	b=mAIWZGj88MgRLucJC0sNBAzgMXo2iUMwsjlNgyDYkuxvVX7at0hovjPhtuO0SbjVx
	 DVB5/8bX2H+ayJR+foN4tkg6rpMHPuFx1ca04lxW9tcdKtdzynecdPBAYrJvD2ZVDP
	 NlPfdEPF6AhrxNGOckwpWUXGmW+quXfWbtoLV2eP7ILX/30yST7tDGjdCI5Uz5FNBQ
	 /DB3skeVMeR9y4epRfzzzbWE8GEzrojik6o/jieKM2fpJplgLeAuHrWNch2r7kAVa/
	 i58XJtK1bxLrsvVdOmmsVk12omV35daE4FDK6a+prDrKst8KM3yt1Q0OMsRbRJTHle
	 3KQBSe3Gt8rYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEE59CD98CC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 11:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178117839378.22598.15698784468588824719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32d1836a47726808c361774c0cad264cdc65c94c79a5dba7b9d1ab1111439afc
Date: Thu, 11 Jun 2026 11:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781178393
