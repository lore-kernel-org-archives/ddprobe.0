Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1D9F1EEE7
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706912297; cv=none; b=Wgiva17p/z0kR/eEbxWsTMmx9jrT2/x8SDbJSy5a766nLZHszcjkzXoDuhLY9jWBM6FYhf5Zbkx+CZl0qJqOH5nzWz8X8UnLcTwkU1zB1KqVfeinIeeQsHVWVElKYQ8My+5GgeJMwBOYDCH2DMlnmUb0+k1n8B05dcaOTooCIhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706912297; c=relaxed/simple;
	bh=L3D5gG2SunNcKZSGO76ttwZV42CSTRhgZlJa4h2bU/o=;
	h=To:Subject:From:Message-Id:Date; b=ug4u237HKXPbcmaH8DLKvHiCtFxiNsc4peUcrdoBd8TlAGPw1fHKo9ejzvIzYEKQ4OgbybRoZn1/9pHAstCoQrzzJTaA986VwbPXXSvo5AzByiwjrMi09JN8t0N5ONvsNyV0NGbwlXqnN1bgGWiLpu9hDwQ2F9PvqawD2j/lmgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aeSsBJSP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aeSsBJSP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 801B8C433F1
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706912296;
	bh=L3D5gG2SunNcKZSGO76ttwZV42CSTRhgZlJa4h2bU/o=;
	h=To:Subject:From:Date:From;
	b=aeSsBJSP47xz/HjEsgqIpLwKojz26OYb0baBYJU+JWE/F4fl8GmfH1O59XHoVOMfL
	 G4uOU0bd4RovmaDC9EtnWZbCnqPQFXf8dBJgsdiOStRrEmBTiLC03dfKcSzpVrj8im
	 uJJcnTfU67JZare39K3sgrugGHfEmeiD8iKfAEyGhuGrlnpxpXVebpL6ayFPYVgnUr
	 mWHkAFGW32PdRAKW+Rs8cR5mcgZI1z4QJBJMY3XUI+GMIfMya5hV7T2nuftfqZNrNx
	 VG8qgB02VLjaCr3paRG9dbNugrSX1g/TWbCa+DmjErvB7srGkw1muZV9+lNDKMclrX
	 +wGWjA5bYE08A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6273CC4828F
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 22:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170691229639.17838.1238115770521946649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5d5d6147f5f76e5d1ac215eba93ca9ecbcde5fffeac6ce123ef01cb33163e07
Date: Fri, 02 Feb 2024 22:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706912296
