Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145D839FCB5
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 12:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776689854; cv=none; b=inKS21XYpnCMqUEDFv9DBvtvibXtetQz0GX0q7p+AtUdkxxpEaMi6WZjumKcKSh06iLYxOnNUtBjI4XEM7T31GXZC6MdG57h+tZgJ8AUemS94Re7zRkl2jIVPmx0yNYKfhi09AD3wblkL2jS+RMEUknBE+aCNdH92P2SfLsA90E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776689854; c=relaxed/simple;
	bh=1QhORGzurG6CjPNgcOrxZp/roGCTC+EUqxM2OKKIc+c=;
	h=To:Subject:From:Message-Id:Date; b=nPqYdv51e9y+FB2L/7fZ2FcAuRJsl/Hs9jpJx//a5Cj4qcrITaqYhMxVNmE6xwVJuhplMtxKzyGaHOkSip0gRHT9o1BxC4KL3p1KGzhQ94AV4/xYeA0ARPEGRXc15PotppqPmj+8VW5ORISlAD4SmLe9jWz/6/VtMRoekv7PpjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vKW95Sw5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vKW95Sw5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9F1AC2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776689853;
	bh=1QhORGzurG6CjPNgcOrxZp/roGCTC+EUqxM2OKKIc+c=;
	h=To:Subject:From:Date:From;
	b=vKW95Sw53mJF5ney6LzgXbDCC6co6yLcMWO6jk0Sd/pI+maiDulrKSQv7EjX8WQ4V
	 tO7QsSWK7EBCvvnvG8m7R2HI9N5eLorovDD6OBnlmfruM3PCyS6QeXCtokn47rI2io
	 JRp7+EdoSoS7xunmAoxoSNGvvXnqqy+qCLY/YJt6pE32U06rUX1j9/qtcWHOt36kde
	 t5Kn05F4jIDb7NNbi7canh+TTC0xNG8qklUjyV2tMomWeSd6sWH7EuaDK5JKObEH98
	 jv2TEtZ0MJvYOWqZeGcZ2bkFEN4BXqRTEDammRWVApsJLCmNB/jM8M9oCaTe1GnkcW
	 EKs8WGiKNo63w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6C3F588C2
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 12:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177668985368.9761.2386422172154689571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df6b77e00b6e573a04d9ab15e9dfb0dc0a9f493b9ea8848f5ab8f0109adc0cc8
Date: Mon, 20 Apr 2026 12:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776689853
