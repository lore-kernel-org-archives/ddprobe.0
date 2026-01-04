Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EBD286422
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767530034; cv=none; b=X8TE4ddTSK00Y7/IXKY/sSjQv1tNMS8L/3gND3K81QZCPtFjPheR6+LcAIP57zDIANHchcOP0LCTiW8dhAtD3ZECO3WWpX1oRWEjaFbh5v4KoV5KPeDJPcYLkoMKg3k9kt7KhqSZpqOZpeIkUiy3OaU9DLa+2Q3VDmuDk5o+ypU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767530034; c=relaxed/simple;
	bh=U8g3CyiTaZ6tkk/QrPMOEvbmzt3G9sAGdw+9aeuy09g=;
	h=To:Subject:From:Message-Id:Date; b=Klt0WkUof2/Q7n68kwRpaZhTl4UrlRn1k6Ftm6Wg7zNA2+G4Nj9Iu7KdfVJqcKTTZ9mLl9qhEZoikoklFeFCDW9EEYQbxYASB+hpKf/1vcWHy2BBxC0CX9u+rSTQZF64MQuXIwN7foLZd4SOy6PRa4QxL4Oehuc9rUMsGCq+vnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bT+XySbX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bT+XySbX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AD4C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767530033;
	bh=U8g3CyiTaZ6tkk/QrPMOEvbmzt3G9sAGdw+9aeuy09g=;
	h=To:Subject:From:Date:From;
	b=bT+XySbXDK/tdKhIyoEe4IJbgGv6+CLO1Ho2X9sLw+cLkTvd0zVyQUw+qnFxqIlci
	 9/gsERRxXWSUBaIDa3Chd29OSnTqrYaE9ss93Um1UUOtj2i7Lan/4rJKoSUeTamoSS
	 rIf0IR5d+29HtTehn623JVrC2lrIwgQxWdhuRC/3ebS1pfCyzu9kFzSE3rTpSIipUE
	 fUtKm5Bzv8YcbzcbIEA0wPoNbA3XkxqkWLEiqEMHGmjYT+aQ9AP5oKyUNN0LpDbVCd
	 1oAlg3fqT9Nn1CyjhGKx1+0+cI+AHqyq/zQ+V46zzJ3cixNBjgAD8fSEtBLUvkmlcK
	 icJ/Aukk/ou3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A07C2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176753003358.27152.2585274961880067390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0336db8c7a00faa660f21a58a734541d1fcf130cfe914d489545122cdae5c29d
Date: Sun, 04 Jan 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767530033
