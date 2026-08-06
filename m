Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9524838B7A6
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786038034; cv=none; b=dFXtwWhF1DpJo+1mQpXvrE+XejlR/FRG1NKp+h/hKObMsBShlkyGEdtI3PxSheVzTPNaaecMOjEsopBZPBE/EdowAFafEkZt6nsx3t4y0f+CTkt0YuP/0cygwjIZEIebJgn8e2jck37zJmUHozGjcetSZxvSEvllZsTIPHDLPIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786038034; c=relaxed/simple;
	bh=hikMEIr0d1+TXWN2UvrVCKG1bOqt5bcrUwVRweR1uy4=;
	h=To:Subject:From:Message-Id:Date; b=ASFkoe2O333Te6riDbUFPo9VyFxAdXRFKWweAwNlJTYNGhoz0kr8bzqRvnj4sJpp/b+fML2u6gsmSPLxZ+YoKgUu4eIjvn+/Tyz2bT8PVZ4o071SfB4eHeEpGC0kAJuaWalhZo4M9DenzZIH97vFuGW7zNXhZG6NoF67rQ6/2Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BWWSvXs5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BWWSvXs5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D122DC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786038033;
	bh=hikMEIr0d1+TXWN2UvrVCKG1bOqt5bcrUwVRweR1uy4=;
	h=To:Subject:From:Date:From;
	b=BWWSvXs5XIWAB8xQXhn0REdc/3pvVbF2RA/hQrvp3FP8eMkLjymjeKYg7t4SNLcQ9
	 SJWoBI3hH1AysKfGw8YslE6fmRqN/G5ZTu/BRy+z9R6VYqIJ8jYYVltmNTEuRDv9y1
	 ++2EnG5SG3Y0bbkHqYj00WlJc0w/cqi8nL9QGq7zA0kbXOsxDUdnHlTalrnE23S+lU
	 Dzc4MbY9bxtdO7t/b9dFEDjJtKOE0CXVs3/fxQRn6qNTyjbB6o6bVR+w2TneUMcapv
	 uXlukOogDpVzb+eysSnxXp34fzX3i+CGz7TTxN2YulRYDMX6jiS2LaVhxqvmLihLTG
	 NMQHYBl9g4xHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD933C56205
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178603803370.7986.9013586164884576230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2523e004c3e43e6119adda46420eae0336fa9042c4c0912818916d92ba2b62c7
Date: Thu, 06 Aug 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786038033
