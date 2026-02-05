Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142E92C859
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770287634; cv=none; b=WIv3LOix9lb2jQUWtePB2c80Qs2ZySqODcXQBjlj1PurARYSbUt2swRPPRa8wbUS1VcxMbiLwM5oGcn/OXyNTzXFNKW4ZnDXsRd4yc1QmwgQsXMLg12z6DrQl+qvgihrZJGhseI3qRcIQBqIMQxz642vwhLu1NnrbOkT1UCKzIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770287634; c=relaxed/simple;
	bh=ttgmNbEFlirRVwUdqxL4L2te+/1DyizbUMyNR1F+U7c=;
	h=To:Subject:From:Message-Id:Date; b=lUOL1zvBzK5g4o278B7/f/8/CRP3gFkkKjHGNeJIZx2v9QlqMA2Tw7VfHdh7IeG/XJBCAxlkuzSZ1ZTvG162j+jPYhLn+VSolCwVI/2X3T0OkMUmY5YiA3WLgpSqvus88AKfSFlgIZ818kmoDvw17xERsm4TtasmL7FoggMBdpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RsffpxnP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RsffpxnP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3806C16AAE
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770287633;
	bh=ttgmNbEFlirRVwUdqxL4L2te+/1DyizbUMyNR1F+U7c=;
	h=To:Subject:From:Date:From;
	b=RsffpxnPNyBR0NflbRBwa8W04nvZSKob8H/u2h59qqWdDmkzjbkHm4Cu5rd9KM+qJ
	 Y1kjEXFvjE7tUPv5T/5FviZr0InAHYd3pKFJO14mm2ijW4MnClNhfmZzAGuLnS23Fi
	 4DhgU0RMqUErXnUXsv8sglNPOg5FsnbUeOBgDGolq/iSq4Bd9gAM3I3wRaIm2+yXa3
	 +LGftFCtbYjQJ5DmNNtH+MLzAFBZIy5usPdbbzYNbyP9hSPUe8g+5Cr9KzNAUJweiG
	 zHsy35ypt8cVY2lrXDL0qJ8J+AwMC/FOWS1cd7nmE8f1tL1YIEDlThrSIg9a2jCIRB
	 KFS0yHShbdR/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912D8EC1E97
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177028763358.14730.751989997860211094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fd9ca7212cfc148f8d4be616b8f8a533c29733cb06f8cc402d35e03298e4e5a
Date: Thu, 05 Feb 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770287633
