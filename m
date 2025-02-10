Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DD831C5D52
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 09:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739181354; cv=none; b=GZdjeF0RP7d+OiMq6lvC/XNsYcF7PS3ABId7/Xzd0ckapJ1bBqKcu9NmKpuAO5qBZ4TwmsV+3TUhKENcyX9ZLKEvbhJGXb4TWNPagUPghBWqfOP1u/KRerCQKHeoFuXODaScKuoiHhIVT2S9IwC2aQsNyCKVFdP5B6S4yIlHtTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739181354; c=relaxed/simple;
	bh=w5G9lqlakhtxeoUIV4FitdiBG8NL/D+7Afg8dpnSeXg=;
	h=To:Subject:From:Message-Id:Date; b=eyqT+YjwYLEZW1h2lPdLbc95Dcv0eQfLbXCcd+pRLbuYGyadIMR15No5wt+6b8LXqG2y0q8HPQhwB9aFa4Hmvfr4QjVEcMPk59dNweheGN9bnu5kIfcC+MQx4DVZilXqKelm2QB7QoXJtYx5VQsN4odeT4LIxHhtpwZ5JNHPf3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hnIYC9Bh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hnIYC9Bh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1EB6DC4CED1
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 09:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739181354;
	bh=w5G9lqlakhtxeoUIV4FitdiBG8NL/D+7Afg8dpnSeXg=;
	h=To:Subject:From:Date:From;
	b=hnIYC9Bh5xTQeFDFBhdBrxyXS89oqrSe0PIf96UFW1lMZqMJsLcJa84S1anGKd8aj
	 QCY1Bu1R+SkfurGqcDOCOrXWuNmwCIZnRZ2LoooZ7tStbLdFTgUsdQq2/CoClXaRI9
	 jordN6U2mdd32OoEdsBHAC6Etpy68RF76xC0msu51x3ZcLFurzat3sQSqa0fumI2+g
	 /NQQ+Be7e1+1JDK7P3drC83SdIE5r6dwm4qxihdk+voDXrS6FFVI3UkS6Nl7orTE7k
	 yPMzx0BRIZ2LdBWEXFZp0FFt6vv4xnBiJ0Fd9dd/aybq2A8OsNCshAJfZv/5hi4hIn
	 CnoGjkdEEsDrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB161C02198
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173918135386.31244.4195902083266104671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acaf39ebac24fbb596cc102c6088393247726dec240d2f5e8178fbad7eeae8e0
Date: Mon, 10 Feb 2025 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739181353
