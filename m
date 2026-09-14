Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65ED53BB57
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789345234; cv=none; b=WKfjPgWu5TgnwnhLz2i5n/a4keABmKpIZtLeYvE9YaH/2q3B+YnHJCcxM4A451TZhRwiaDLwYC4PKFpk1xNEM+9ldSs7PtWVlvyi5ck4u4lMvwO8LV9AnJQPufSDtLg1Bg5c/Il5hsB1ALC5FlSqNolJJsQVRrQ3PfC3KydTo64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789345234; c=relaxed/simple;
	bh=JHlI9vrxIrnc4HoYZwS6crrPf9UYPCdhL0IDnW1Rxbk=;
	h=To:Subject:From:Message-Id:Date; b=CyQ1i6TjbUkk36N11eVD5lVhTKFLRdiejy+0LfYU2VYbTx3TobyntyIC4eXSC4E36bWyF1Pbo7yPQVrJRiE5KhSVmLHqHOvQfwGNd54niTE47em2f8+8CEzHWIp4ppadUMaiv3hYx0CLvm/gBQBYL6JTHvfBREKqL7u+9nqeqLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G/xowoSw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G/xowoSw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A07C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789345233;
	bh=JHlI9vrxIrnc4HoYZwS6crrPf9UYPCdhL0IDnW1Rxbk=;
	h=To:Subject:From:Date:From;
	b=G/xowoSwMDl6C39RHC/g8qKc/eYGODZoCyoqKbbr1n3kKomBbDk5SD7aAavqcWlma
	 Lq2E45gX8fFU5ivjdRaGk8/JFGTpe4SIOWJDoJABp/AvpmvgvVW4+Mt6qFthG4O44v
	 GTtZLogSZWCsVmMOliihPYtkiFK8mKzgp7+6x/wHDLqNHFV4cXcj49Zv3m2U6eNFV0
	 RXECXWlq5CBCoQz1YxFUuv+0cEd10P13K/NabKkOivIS7CmqOG7fD3xGGrHKS02SPe
	 wJSyYagl9tWSaZzOEn4R8tyPdxjQ+7C2IxvU31aSOeHJvoCOwIAavNEBW8O7bUSU+n
	 XXp8ahbDAKI3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0356C88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178934523368.9201.463270178086115254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c577369adf257b68a8865a0c349b34d44d9dab86983ddbddd532e1366aea4db
Date: Mon, 14 Sep 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789345233
