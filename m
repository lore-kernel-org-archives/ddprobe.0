Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D4B191F94
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767484434; cv=none; b=PJSoBEJsMBtuxyYH4nW32+pYE7HUyfZmDoOEpNiJnmhxDxOCC1HS1PnOQDKsARzze2e8xzPuvG5krAoSE4xn1C2wegyzRlveecRFH3sXGSum7+pgdgk2z8eY/T9x7EKFTuw9r3clGhl8R/7shqN63Wh0qwEltSuaTKamTooAePI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767484434; c=relaxed/simple;
	bh=rGvp/x37UTBhR/PnAjp35O4Oucy2PyXRXSPVYtwHGpc=;
	h=To:Subject:From:Message-Id:Date; b=r603IqiwB1sw2NA7S3poi38moj5zAFx6dOZxIrH1+c6m9RAL1967VCddLYNFG6rgcf29c3Mk7yGES39i9szOvSZYly90BeaQpvcGG2WEQ8NXTygL388+VHTDWdNETZYYXNv0EQx8qOPS5CsmY01PTMlURh4Y0AsOFBYsks91P3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3hY10WV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3hY10WV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56FEC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767484433;
	bh=rGvp/x37UTBhR/PnAjp35O4Oucy2PyXRXSPVYtwHGpc=;
	h=To:Subject:From:Date:From;
	b=q3hY10WVF0HfAdlZ/mEnnSKuFdMZyFJYgHpW1E9+C6h74o+QuXLE7ZNoJQY5GFD27
	 +OZGi24vypeTHQNKYsiVjr51CCnXm3pXeVcvC5KUX16S12SwWsHArqF+4hRxAwhTvg
	 0otJlsg8AiGL++vpC+d2E5sToiy4yeJXCp+4qKewN67uqzy0dsgBvlFp3n/MeeD0YQ
	 qCX+uhGEMirapEjZjoO5bLpESCGD8snXXTsh+Eyei0XyT0fnbQxH+/SRhtbw/uIUto
	 nThvX/fXG7jj5g5RaUHFuYHja8n8baUoucJDC8Y39ciF2AfzrCae37DkhbqTXzt+6r
	 rL57u4F+Nd6Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94935C2A063
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176748443357.30929.14556458704510575741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d22159c2363be06c92cfda096378cba94659a425143f6a43e66ba959c67bf52
Date: Sat, 03 Jan 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767484433
