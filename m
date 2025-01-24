Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C54E1DCB3F
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 22:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737758754; cv=none; b=dT2donJxilAL5GA42Hc+PlDTU35F5MGGoFeixQaVADmzRkKw6HNXGiwNU9tfdrJLySKBmf7mBx0YdZdblkkG9YrnBGX1xAn3QzuQFOVkBmYiT4+D6NH57enFNDy5yuY7L4Qso7j4dJaM5ZZ1XUJ58Q6d/E7yngFn/qc3KLYRaA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737758754; c=relaxed/simple;
	bh=GbHLagjXP4oXl+z36oR6UAMoMa16kj4pK2em5P90pT0=;
	h=To:Subject:From:Message-Id:Date; b=EEaw06R0LXptVX6bxeiNTVRTJeiF+WxyHIdmrllGB8hgto6+UWKnQwlfpHuxkvhbOWTiyW/S/Hojfp3eCy6SDM36ws5J5JalytRlBqB9wBtiomJD7wybpgSq38jzhsnQRN47b7lb1UpM3B0kVTglMJ9Yy94SXB3Vuo+HYILk3AE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EsKG9MBU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EsKG9MBU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1DF1DC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 22:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737758754;
	bh=GbHLagjXP4oXl+z36oR6UAMoMa16kj4pK2em5P90pT0=;
	h=To:Subject:From:Date:From;
	b=EsKG9MBUkthJq4LgZ/ZbG7uGisfWg8bfnFbpQKMrdnjzRWit+uTmKWYzqQqGbwtbj
	 arwmsUuu24kufrQJHL/+ih5S6ZKnHwVT/b688YvnAPzPAJXwSlWCekSTfzGR6mKIQw
	 w0+8IsOUbTycwiDKaoy5b/omDPgUOKEBLXYr+ST+VNaWMyLBbfx+DhrI7v3//tQAUu
	 MimeBu67E8ie5YjkeNvx8HRt/3ge3Ly3rWFsLdRaBoFcWkKflVVNqqTkinBd+HXvaT
	 mj9QHXFtyUTgiSk+5ZaIk4ktDO1ghYk2aEp597esO2qaDaqtoc0GiUE6u5pcb3MEeU
	 nSUU+pxSF2SjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB2A1C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173775875386.21225.17682720109501705177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 936fccc79ca2e3b021fd6cf461714701f114bef8691da0e49a37cee92065c44e
Date: Fri, 24 Jan 2025 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737758753
