Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87A0350C2B8
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788805834; cv=none; b=BmqYkddIWzRvbNbx36Ud45W4e52xdzy2uaSM2NfN/iJlST31HmJRJg2ZAoxi4Er0tDf/Im5KvwLBYW0UNj1ALk4YRI3wDNV0uMR7lOVvd9bP/nvbBtyjq4rSaDLDi0pFj3Xe/n8QnLXx3n8cD5lYCtw+dkWBx9O5ssRXm8fjywo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788805834; c=relaxed/simple;
	bh=oL5VcSacCxEOMSAT+MGB1FhUuNOq62JaPR45fSxb0pE=;
	h=To:Subject:From:Message-Id:Date; b=fooe+n56dMUM7uXGPmQMvJSCqAQgSWmEaSirEeBLM8nke9UTMqPaNfIKv5knX+AGoh+uoDeTzX4dIyUKXWpG7Giwen/DzfmXkkzz57EBeF9Fo/JbruPoLV0JpI+NwA2tcwXML3dR2UlDDdIa2rNbfRykzAN1gQmODHAiamzTIRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kvvhiFh1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kvvhiFh1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6206C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788805833;
	bh=oL5VcSacCxEOMSAT+MGB1FhUuNOq62JaPR45fSxb0pE=;
	h=To:Subject:From:Date:From;
	b=kvvhiFh1tFvIfFIwoOsFQPzODRmCs0bRNIbJph5J8sjn04fAjyXtCUyRTGL9YdQ3F
	 uNEvTX3cvMAl+6Rlk0Le0oA+4Bwvw7/uoH0WvDl7CUuulLuuHZVh9xXGVoce7FrkU0
	 TowbM8LlseQGKhd36VsUTyNngnW+rhGM7xc+D1BSO5YoalHGAoMozag5tZyQQqpg87
	 o0yFJ1CiOMRLWQr4OCIBYHyU3Cf9GNxg35p4MmhsXNsx1rQRYaeZt1fT5OtyvaVSO7
	 6U1q4K9Y6NUOA7/8unewcd5+hhldmYWSE8vjmKyjxDm5pcq8/a9aYZBwm8kGs6koGG
	 R8WsL40jkD9zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B362CC79F99
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178880583369.30184.5563149923590357998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 742b90909ab73f0ba272b4dfc25b008cad60f81d706d9127a8e5548afb18bb83
Date: Mon, 07 Sep 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788805833
