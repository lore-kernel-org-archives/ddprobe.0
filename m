Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A78A4CE13
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727006154; cv=none; b=URU4AZNN3YR4penGzvDAzNrOs1y8jlHyOgHaHP3M21EDq2mdus3FybrUF0N5uzlItYPVU8oHyc7Poe4S8WjZ7E+pXiOWMepxL+Q/9njzes9b55cuQF6PAwJTtiYYNvYTlbUCQv80x4Md6pRFYVWDW1670N06Adr6VF7t07Bj3XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727006154; c=relaxed/simple;
	bh=bcPnmvl0NUN3U3U1sXa4mIzFfMPdX4m/EgDZWk0wJBo=;
	h=To:Subject:From:Message-Id:Date; b=BcYzbe/o38ydzzuED9E2ueqzkD0qRGT8NBLAXCh802NrvhbHzLTZDdP6V/2nEhif2QuKFKFtmFs/nMRNK9HjhGGVD3jnPMzXt1EYq6ZpNWVmZBEX0/3O+loXoA9fCZeyidbaOLEFfsa4YK7ZugkbHjJafmD2o4x9UPUqcsutpiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q0eZOP6M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q0eZOP6M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9197C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727006153;
	bh=bcPnmvl0NUN3U3U1sXa4mIzFfMPdX4m/EgDZWk0wJBo=;
	h=To:Subject:From:Date:From;
	b=q0eZOP6MV4hRSR3OiA+Uz7+NTQN0WHYdqQUIuRRIUrICg+pdFE7exNhLh7CicUIin
	 mbgNLnMx5fpkuqERknmmkn5FaWqvSJY2zj5utSNiFIxZWbONcFqKkQi+KI+5PJ6McN
	 lYhyZH85vTSYzYl/oozi2bRqYvJJcf4SE/1xhZfedDkkOkPZ5vvc4vKLey+7mKo/on
	 gXubMPxLURoOEPLzJqNcosbSSrt7QjHJO1KOfo5XHH96RM2kViQvmVteETUu9GYUdR
	 zdWBehqzEgqkyp5HJpK7K/Y7UlK+K02Gsxnyd5wX4Vxa/bngS919vapBzsAZdH3f7r
	 01T2yPMmQfbGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94287CF9C6C
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172700615359.7263.12707224566955028317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1c47dfcf8f7b0bf14afffceea08ef81eb4635f8e92a656d3542ea51fc81d0cc
Date: Sun, 22 Sep 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727006153
