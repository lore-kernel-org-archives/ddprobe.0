Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0DA1BBBFC
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 06:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782021994; cv=none; b=WHSGABP0VvFh/Qu4ZR7q17ykcxgnddGLRRwQ4qlCKl4p+OMhclUTj4ONiFqJHpEgXebkBmSdT8qHx6IjDkf5Aa9uSKzONDQ/KGtVZtVMPREIMtizu39yAwgZ5RSgchnwlvRLKTI7V6/8fh3NdcojwVJffUZvV2oo9DxrsD6t8lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782021994; c=relaxed/simple;
	bh=y/Vron5jUDNK/gb7iYCezSgG9oPY85ijRliFJLNN2Ls=;
	h=To:Subject:From:Message-Id:Date; b=qcPglTT3fUdm9aHoFKUfeeNRo65j+znNOK4DKrdylMvdLAR2doWc8PZZcJBFwS382hpZcrQn+mgObaIA4Y0D/T6HSKaaDAjUdX0Z/ieMSI9H00MbSiQyXFqX44HRkyuYph+r1EpdtWcl/aNk4UH1v1MI8Fri4EQxsiejFnI7uY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X2wjMz7T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X2wjMz7T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DA3C2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 06:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782021993;
	bh=y/Vron5jUDNK/gb7iYCezSgG9oPY85ijRliFJLNN2Ls=;
	h=To:Subject:From:Date:From;
	b=X2wjMz7TGZmfkJFOw+QTr2SeB06E0s8R8tYpyS1Q75YtTT/1236ELj4AUZqXVHeke
	 uPNhWGIAjj7kvF8F3rDwVP6qF9Pk2ZofOGOboWr0+kchyOxhxeij2xMQbUpynWowhz
	 n5sR+hy0HksCTm/RGvW0wpgsoEoeVHsKGOJjTHre4wNP7kSXgIKeXt3WLH0bx4x0Di
	 vO2hx60CVYHichu6e9mtsJ+y91FuOOoKycLdIhACowLkTU2E4BF4Ii2oxi3niRJmyx
	 Ig8/tgnHk6XR5/ELMPJN3DbNBnMXFntcCoagJpzq0EwtrnoLn8UnqVHu8gkoq9dHzP
	 NRRIzrR5GZGuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B14B8CD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 06:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178202199369.5354.10698089422540313211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64847d2f9a1bde956e49d98af81315022cdcf0b89960a5958ced1645ec987d04
Date: Sun, 21 Jun 2026 06:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782021993
