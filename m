Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 739561DF25C
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 02:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742523594; cv=none; b=hrwcVzU09FeHcwTtz0QIvxK1E4RdTP0FSnhjqnzhHpsKnw86u7cp41mxpaNyZ2WgqyXsnlT/eQBwivt59ONXd/pL4znC7romtEpDGH6kRquiEevww1cv/OdG9qdDZclgiLpN54X8G5pl9voTd5JJIn+3jJLKgtvaAL10b6Anvi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742523594; c=relaxed/simple;
	bh=W0qAOG3TUj8a7pTxSR0iQtAe9xBhT6EWrk2lC/4kLDw=;
	h=To:Subject:From:Message-Id:Date; b=KD2r8rSOv6p4qaEY/mw++dYCYtdJ3eSsd+T8GNpPZwRJLWtTt6EtK1wUUDYMtIIwuQPIaZAPo+Ykfb/dCMnxdh1aGkz85dg57U98DqsbwYKCEa1CmeIEF3T2aOyJgx9s7HKW/P+6jr09MWxv/7DU8qds77FHv56iHs1Cu8zuP5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2/mQ/H8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2/mQ/H8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7DA4C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742523593;
	bh=W0qAOG3TUj8a7pTxSR0iQtAe9xBhT6EWrk2lC/4kLDw=;
	h=To:Subject:From:Date:From;
	b=r2/mQ/H8/2uOO77ZImNxLAjhbOuEeZwc0O/CIf2sYykn4hWC1HL528m1wgctzAXf4
	 mGLVzwg5pdEspCjBOLgfgKYyji6cmAyywtEpciZfQBfwjdvdaHiwt34KnT0m9uMWiA
	 clRHRGIxY/JATb6AV3LNKLKLTFlJa+HQFqVkF1glTvU1uK/EhxiG13zw/CBNmp5CuF
	 sj8TDYGxcPEtiKCbfP7eKoh8kFGL3riSWxhQBTMIumvGTY/PNYmBtt5FCbrncsG2cf
	 FriVs4HWAG527QmURudYrPXKZ9PojKcbXkhsxUfJ1SCCIFvxCU98cpRQ0J+hih++5G
	 PVm5xz0CMkLBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D03E6C28B30
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174252359378.26564.1296066656819283659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 526a3af04c4881d411b657edcb321a45b431cfeffcff3f4b19d1740c2c351adc
Date: Fri, 21 Mar 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742523593
