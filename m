Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306C119F430
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727777154; cv=none; b=JBDz4XOr+p1vcn9EdI76ZngwSNs/U1zrNniMK/rH4kIGgZ+gijrrLMq7SDovOSGYla8nBMbGciiQQj8gUUJNWPYmoL4beSk8RpQHaCoZ5r9bKaoCn3AzmJwKjjML81/UlcOTR0oYFkb0EzBaB2Adt2bWKdOwk8Z8UbyiXBRn24g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727777154; c=relaxed/simple;
	bh=JX2hvJetCJ9vU0xFwBRtX2BVS9gm8zSDO03hWoxYLsg=;
	h=To:Subject:From:Message-Id:Date; b=qXv11AL3ZNB6lMNKaqWHV4h2ajWPyrAdYPSbyUzcESGVm+pf7q6Q+TylUmPHEUpviPLkhd4qSxrleGF6SXfilVt63HYTmhjl/v2VWF97ebUrvqG/1n2wTpXbUvlWEMST5kLA2vE26i1nZ4l+6Ct76NhQ9sK7sTFipthzxqhwA+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RMpRIur+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RMpRIur+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5585C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727777153;
	bh=JX2hvJetCJ9vU0xFwBRtX2BVS9gm8zSDO03hWoxYLsg=;
	h=To:Subject:From:Date:From;
	b=RMpRIur+SE/Ymv3N4yTvdOSISJ/J4zIfyyaTOoRArwvCZS8Ym5+CuMRQosdw9CXrZ
	 22cl/gDeMU+a2PAE6qtDJrQC+eVt2+ctB8n9xdyPt4nIjsvy6JesxbUsKP7BzRg5ZI
	 2BafU5ktcWQAKlM37mGbT1Nk/Ezag0SBRhiMegmTUQk/fScJ7Ctk59aW0tIrhTNNqv
	 3+bRImnVHQIO97M7F4GN8nGwetADOv708AmsUyHvEWbCHpxJQMcAX/PqxFf75ZGvCa
	 mh9vI5v6Sa9lMUYogpo/+ig6TGObZjD3s/MbrB2A8ziUW+rypDt2jqdmbrfv+1mue3
	 HnqDVdtj29aWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3C9BCE7D07
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172777715365.989.12739963881920014776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83578fd29b6a42d9143377da06c8f2f8dd1d4cae0c36b04ae129843419073077
Date: Tue, 01 Oct 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727777153
