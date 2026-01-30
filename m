Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47AB534C9AD
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769808234; cv=none; b=eqIHiH18fD8l/nfkWOsrBPgCIil4+NberQ5Ph56RRdtYAymTU/bBiN7xRmzDXlf1jGuNFEl5o/Pout/wozd3BViZ2CqwklniiSNzAENYF88qWXes5oP/lxyCn3x+I2htRXOAGWHnV8WyFZnGzgqEDrnAnQOCOtWv43fkyiIYgpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769808234; c=relaxed/simple;
	bh=vLW1QXfePdZ5RD5COJS6jdkpmsgximiCFQNMknrYo+A=;
	h=To:Subject:From:Message-Id:Date; b=mXf3kT5em1OoGEQAs9CgEdfkmZz4OWwAbNtdHZ1GTzzQNktpxxD/JZxPTOBGHslSL7IvDA05UGBQ5znz0jZBB8FFQnoAzhos+hDdjVpM9qSAhIHOsxf2GQoFVU9716BO7unHMMMS9R376s7jj771E17s9dBt7y73EnllvK0V/u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QSz59WFl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QSz59WFl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0796C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769808233;
	bh=vLW1QXfePdZ5RD5COJS6jdkpmsgximiCFQNMknrYo+A=;
	h=To:Subject:From:Date:From;
	b=QSz59WFlCozZazgbBrOHu994jpsReuqqsUFbvHA3IZU0HIUMw0GW9s3x94hw9OCQj
	 76iPuO5UNV+ZLTaOQ4bpNsOJS1EhnDgY2i9rzn501kyPP0AJjNpSpr4prciAcDlHVe
	 lo6inNsAn+nRXUDsJEeqS0gWE8Jou0WYNAfRMdX54pDk2pM5hdhk6bi2p/SoU3LSqQ
	 2NU9bfn3zwUy3lFgZaxfrg7siUUt0VF45SuPoLstesAD+ghuzdUplKTRrSXUwvppX/
	 D96qQty25Tv65Hegi7utmlpkjhA4Ct00HedglXZRyT4YpFVXgRHAcfXdGeROkGqPyn
	 o7Z6x6aP3t7rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946B3E6BF37
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176980823357.24453.7364645277538678236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3228e22a79fb28a9371f4d36aaf6f4ab79b75c0ff81009bf24391737ecc3998
Date: Fri, 30 Jan 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769808233
