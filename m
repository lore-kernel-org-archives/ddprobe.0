Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221D23ADB97
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 15:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778598634; cv=none; b=Ca7fZWhQ6FXMNa8Hbvt+9o0Irmg+/KxnxVcHgo75ulSmkhK+f14QxuJclZ8yJd40b4hwGByPHPVhMC1oHH/N/hj4dGHtm0KtntGMvHGm6yV742AKlfQXFze7EO5MYAkx738enVYg01Q7knAad0+zquT4y9gU8TJ0ijkmDj3+ZSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778598634; c=relaxed/simple;
	bh=fazbLCdbriWYuvFfR0go3+n67n1+P7uqKRV6qKC2UvM=;
	h=To:Subject:From:Message-Id:Date; b=qekWemxNa3aiLonmfhET2W2KSQQ9aF4Qt94RSwL8aWyY7+ET4ZtbNdCrFQfXkDHj0lk0xiBHIKAUX94w7la3Te+q3554UREL7cKJQO2KCGFE/Qmy1HWkIuRHoD+8iRn8UM6LyXeAyMGkWwPnuQM+P3QwKofTb5MpplUVMrRdLyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYgcnABN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYgcnABN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C074CC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778598633;
	bh=fazbLCdbriWYuvFfR0go3+n67n1+P7uqKRV6qKC2UvM=;
	h=To:Subject:From:Date:From;
	b=uYgcnABNPjblThBCaXIGK8GWLlbOBcxJvqn2QrXz6O21sjsZTka/s0vPTQdcu5tLT
	 al4SsCIQtU33ZSZVwE8MCosFkF0NzO/WR+LJIB+HRifYGiK3pc1yVhdAVF+MG2utVn
	 WvHGX9SOVj8dPxKSNQbjdrEMVZ8X/X0LQIpwrdyzGOQPQzKore/QNN0caXFysLIth9
	 ffYuW/bm92sqT+Hd33e/NuAsiajznSnicQtNJwcRJYOzI0QrD3I+1N/XVQPg1Z3uVA
	 p57EWvl41AXtIK5cYnVClCdGgi33mxmyOJFL7M8DcrqXYkDsUGYFCS/71a0yo+rDiL
	 XVYsQTqTXTp8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEF1CD4851
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177859863369.11920.2502203322204560622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a91e3f6d0aa514cf45113c9454fa1426370357b736599399adf02a1930db76a7
Date: Tue, 12 May 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778598633
