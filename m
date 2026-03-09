Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 006A23DA7C0
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773069894; cv=none; b=kmRo3GBCiKqQP2uJjPqkP7HHLrYT59bvx+Ai9PdpF/vGRxI/Jhjqw7QYxm4NpW3b5AI8hZv8sE/W/VrduKfTG4GnzRYhGP1+/Tq7Qn/YlBH12ul0vNcEMRxQRHvqbaRcHYgkV4wvx9k/TSu4nASFwKSvqKlpMzPS954t1hYrD/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773069894; c=relaxed/simple;
	bh=YBdUlRH3PfMwVqbAMcCAp9v/tQPCQ7byVMJ/4QsNsuk=;
	h=To:Subject:From:Message-Id:Date; b=kk5mO/maL4PWjpaia67TPNhhfYzHCelOc09uaTpus25tRfEXTh7W/QLdg/HoYrAORd9UkXL+4wZq89zVjBE8ui1lGJxled+GhhSSoKaU6RbrhOYBaQS0P+oNP9bRdDh0UGj9pApQprnEYgB3abtE1YJqmMRD0KusXV6+sSnMNiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qe8gVGhs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qe8gVGhs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1EAC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773069893;
	bh=YBdUlRH3PfMwVqbAMcCAp9v/tQPCQ7byVMJ/4QsNsuk=;
	h=To:Subject:From:Date:From;
	b=qe8gVGhs2FBmeVqXf6yzS/KUWUY4Oju/7j2/sK2uEbxzTizt4GIw94C2xueadao2Y
	 vLIpRhSM4HcLU+KrR0KGeAP+w4ptSEMJw0NtnO7VgVruQvGSxxKwFDdmgtf+nwTmjW
	 Fd9Gc0LJ0PqBv8D4FiNXihH5pR9hLet6BpxYeYHv3IoIh2DdPCr04NYJyB5q2YA2SR
	 qLwVS8C620pHrnRame+QpzbHe1O84ZEbod0DcBrsfiMjdiYlCK4zWlG4QO2JsBR2sR
	 q5+ZoageuARgjEESEp6LJpxJd/uE9Va1z0d7nxvZXhNKuArUHXG0Sju0u6K1T08f5x
	 ITL4AzQMLa6MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F632F417F3
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177306989357.19009.15565354523436836433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f111403752e44462c5e941573c2b7674a3a5e6c7911a9b392eeb868509844b46
Date: Mon, 09 Mar 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773069893
