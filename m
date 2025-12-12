Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7F113B5AE
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 06:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765519374; cv=none; b=BcF7QjgppFeNcpAurIxzI/sJO/6XDga0QtkRgRvf+y7VoTTVs8/S7F20a9/Tu8D6H3SWQMPo12TY+rDMj03+77TgjRApZUhlTzUabpfo/oXI0ULBnWbqFrIPQP0Dlg1Nyz8wvPG/WFIiySRaymhfjyDvB7GLz1kZAlho3lV5x4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765519374; c=relaxed/simple;
	bh=chx1wUMzzBvVnMzSFZANVCi5QY+/E7h1S4eDNBWJxKQ=;
	h=To:Subject:From:Message-Id:Date; b=J5TqxIDQyE8Xkzg2wYOSZ8vZo+9MWWt9A2kg/Y4V76XqsDWgU1cGTW1hMFGqnEJbDhY40f7OwSrr27ZdC3BTGlCCpdcTJ5RtWkPlbt0V3DfMFoXqv0I4LLDMRYTv+5NDEKaLaniJAHi+DOJ3WxPxCUzX7s7nthwTSsCivNn6ILE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t373Z3sD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t373Z3sD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6758C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 06:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765519373;
	bh=chx1wUMzzBvVnMzSFZANVCi5QY+/E7h1S4eDNBWJxKQ=;
	h=To:Subject:From:Date:From;
	b=t373Z3sDYnb489xQmM5hiLslkGdKnOOtItnnBYr66OE5yVcWQOapGiJ3FegoeFJfk
	 0rVD4Xl7/Au/nLatnqGDOW4GbSZhDSgHyQUB+6tBG1N6J626anzioYfhIJnEs0hxdM
	 PkakKyRV6p97AVM+eV6qrGnl+AFVCC8ElpeKZhd5dXQh8cfUXD7ZsmGfmT5bD+D3kU
	 BYYApBhexFvJOa5i44BrW1M7vBLr0yHTjblqMQ32uJX7ltPsx2rX2LlsW60rFAaCnP
	 GDl0hgwiOkyxbGYrNYoBTpfyvfTrJd2FbqonBRRdTzDAXayDwk8n0jJ6O+RJClKLkW
	 6cdq2/oUc3SSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EE8D43369
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 06:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176551937358.11677.10668884483725464857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7463d639f3b0c5e87f06d297ec717de7d65d953bca1e73225d1361fd4f89839c
Date: Fri, 12 Dec 2025 06:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765519373
