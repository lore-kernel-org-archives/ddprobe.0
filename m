Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112911F8723
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 22:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763590914; cv=none; b=Cc5kvzBJceUmFHbclH3ZKlLBnQ1vaORVpjTl7fay3WbG5dLHLo7i57EuXczQWwThzFktzyXYX4mHeci0BK1YSp+6LzQTDRT13RlXM2R2pB8WNplGK8pnHtqWzOxiP/OAfUxBY0un4WB/3In7+2f6K15S8hyR3lljWriFxDfQCaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763590914; c=relaxed/simple;
	bh=j4uz/yLQ/hLa7v4D3XwFs/pTecd5+KiW9DLehfRUZlQ=;
	h=To:Subject:From:Message-Id:Date; b=nfDLsqr3exTulORohhagWsWQ+hV1FZ9eylrE4611hdNfvNmEPdmj+B4sdLxzoCJNFeIAvo0grSoNoo5zANbrWpPIXyxqJIe9vDlG7OSjPw0l2/xWtV+YfH4+Q41RhWdxK2x1kTDGEK+uaP/tokHXojGtmT1A7hOoxm1jJIsPWB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JBqPwq67; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBqPwq67"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A968CC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 22:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763590913;
	bh=j4uz/yLQ/hLa7v4D3XwFs/pTecd5+KiW9DLehfRUZlQ=;
	h=To:Subject:From:Date:From;
	b=JBqPwq67UF5J/Cucdx7aQnuq/arvGKH7inNOn1PCdeq8z1ASglZluoUm1awt9zVtI
	 odm5lcsyVdpre/Yl0g4y1yeIMeUxBfo9mxIlzp1dQ48KkoLDekpJx0wM77x8utTxnd
	 kcKmtVS8ALEzwy0YnNRQl004kl3CDejzZJWwMiA3wfMpgvoYaZCXkLc4zvooB1BWTO
	 Jl+TpODD5NpSv4Th5bRHEEs9DPGzZ3g6hYak6XsTguctUQCbTe9LlYF9esB4Ikc3Fq
	 GUivVqmM6MJ8Hnbj7XhmOoD8DFlh4fWGTWAGLxOarhVQ0unJyzv2387vLx3vB38Qgz
	 PUY3vxLaguirg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976FACF6486
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 22:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176359091358.26266.8356347664347871676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b48755a5a9d6f348cfa2746beb57eae8ae07bba4ee03b78c9ae71b0306ccda8
Date: Wed, 19 Nov 2025 22:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763590913
