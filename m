Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE6D18411B
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 20:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721246723; cv=none; b=nwOx9sm5nrPLg9KzBmSiHdxKVjUt5UyF+HzZQ+VxChCjofI0gUBbMDG9fM7ENTbAIQ6FU849VB1xZBiYa5kEgdScR0TpiaJBF5utUpZBHqqo0cvRAdbZ3A5ls3GToi69Vyn+21y34cTrFgb8ubdlE3JMj5Y6Pb9Bscj4wk8i72s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721246723; c=relaxed/simple;
	bh=08ane+oGr2+vvizN1G9ZSYVCdhjHrYHy8UHjh11QyKs=;
	h=To:Subject:From:Message-Id:Date; b=hAa1VIPQWgPIvZ2A7QecOIG7g0m++yLSoseijCZridxjHuOzJu8tazU8dv8oUAH2dnfu9iIcH00KIDTUhFPP5hqygxtYkkP9TX19oGXusabIxMR5qVlKLRkBzn63iveoEFjkLcTQyrv+oj1Bd/iomHdGDvuHHYVl93o4OIPPGq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d/2W4Oki; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d/2W4Oki"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE786C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 20:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721246722;
	bh=08ane+oGr2+vvizN1G9ZSYVCdhjHrYHy8UHjh11QyKs=;
	h=To:Subject:From:Date:From;
	b=d/2W4OkiCVB3y1WMWcHfRsjrG7fRFRUIP4DM6duRVk9VwKAVw/vAOhwFS0HIp8c+N
	 5tephCtIrptYlN2V7DM5V6IPdMRicJJW5hC+IFMq7IK9koHzP8LVkMxHPy0ILL1/IX
	 avJsKKS2kPIxU/SJBuFaunZ7gfPjuItiBga65Gh0396hae6LBXsF4aObxFMjf4B3BK
	 zm1BlPospkgn9tAlPDXP6qQnPlzmwirCURKPebaM47LH6Lz/o1ANAVWfAZsSfZXock
	 QrfGVFNmgsWIxFM0mNFOHkIziOjwd7VqgXA6ppw3I0vvIdiaAgi5I7ONdUc3otokws
	 cYSceqKe63D0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9FE3C3DA60
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 20:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172124672281.6194.16068749988412815475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23fb20d279ab6c6bf66c38207ecae0787e92902c47930e49db0379dc8e31633a
Date: Wed, 17 Jul 2024 20:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721246722
