Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66F07364EAA
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791481234; cv=none; b=Oc+3++HsIzCevw1zPOoxHHC3f1I+Ye7wwyfg6boNl6s/JbRLotZtNjwQszEK5LToGMK3uAL7gh8orncDgdlziQ27Km7iNzHyyq4D0r/IsRgfys6wOyOPIynyO3YnZBYm4gJ4VbevSeSSXeqyf5y7rDdldzuDYidqU+h/zqjK0LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791481234; c=relaxed/simple;
	bh=17uxDHXAM4Z3B/bkRKLjTjSg9Ru2v6y+KQZ9ost5rO4=;
	h=To:Subject:From:Message-Id:Date; b=CNJmPFBtHtoPFmQavagOQHqyWydAMIHAH47WH7TUHR4UpHQhSj6ePMdJYj1jr7sAa/wTmvhU4Q3nnpybmTxtzzwdxXCh72rBXhsnjqZk07NfMo5w7i9l2JaCYV6xcP/4kQKPH2CTlO7uRSbf9mPGEPBbUmbuQqBoyjTAq/LBEzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HDSov9q4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HDSov9q4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AD3C2BCFA
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791481233;
	bh=17uxDHXAM4Z3B/bkRKLjTjSg9Ru2v6y+KQZ9ost5rO4=;
	h=To:Subject:From:Date:From;
	b=HDSov9q4OviC8DEeycdjINU/3HUhXavKmpMs1UsDcipjEGBjouVZ9QxyA2l+UVg/1
	 pCSRXRIxAeynKPYU1gWWrq5RH2CD06q2hwBV6edbSMvKqk+SgGmUtQSwjAjuSKBl8z
	 pMU6735jHYD2ccY2Yu7r97CrMq1d/nz81V5XesYMosEnFlDTfrRB6cHe/cATbUiE+B
	 5fxT9etykw+hSVATo+n8vH7GSutviOlwBfeHW3a1zm0vd4aqvcynOil2Acosytitnk
	 uBcJ1ll9G/A/BoauMQNECty5e5abhuuF+Dm4gfRLxsdzUuQqnqtR5K9MrFU4NAvW9P
	 PMmiukcsFeGTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA6ECA600D
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179148123369.7959.4640361523068030726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 339a1da90e54fd9bfb74340c34f168cd330a4c2fef4767e53b9427e340669969
Date: Thu, 08 Oct 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791481233
