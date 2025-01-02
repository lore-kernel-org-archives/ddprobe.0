Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BED41B6D17
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735850754; cv=none; b=gHRPFOL37MvaLHTQH6p5di+hAGckxpcrxL9YBVaXG/ZYEV5hIzkS0TE4iEpbwQyl9Jp6HDj5AeGT8gw2arUDYNVqdnaQuMZQGwxTFD1zr8dWJJcimoyKC8icAeNOl/3gz2vYm5wuoX1wKk/mmMHjuEL8LF+WsOm2udDg9BSzCFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735850754; c=relaxed/simple;
	bh=0A8ViggF6S0UQQH4ndNJOAw8xiaRi9XseXc19k8b+D8=;
	h=To:Subject:From:Message-Id:Date; b=XLQulce7x4F5n9YeXfkbiDRzUPo2sBdd/AkY5AjNNHVTDiFJBacYAQD3gj66Qi4hWLHzQpnPmS7uvT2qgIIGKb2SJFZ2LqxmgCdWw1YMx2aRtwki419RdPIoBIHi2+4Q9DPjdb7zROTkbK92tW6moOQbdhtWxE1EKNYyDJTDxNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HmGmM3R2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HmGmM3R2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B33C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735850753;
	bh=0A8ViggF6S0UQQH4ndNJOAw8xiaRi9XseXc19k8b+D8=;
	h=To:Subject:From:Date:From;
	b=HmGmM3R2Q1wqr5Tw0PDSubWV/p0bP6W5rNKVHxPjcltikQvFHycQwGPwmpcDb81fP
	 WVFAcilJ9NSYZEre2krlHkPKW/WXJyu7O6DYBSU+2fh0ECSNst9L/geMmDwn+RU0gr
	 ibgutYRkoNnTGmgVOa8mfXvtUnLZdO97d7oT5b2q6RsDIMAxRI+nOcEbVGR/y2J2Cu
	 qj5zmarCw1A1Waq7jQMUp43fpCqjlsn+DqG45zyFvS7ieG06sWTzhzs7YxETGtVsFT
	 A/uTy4gSOc+q0qA+NWyVAm6PGGaxm5PlXVWkTxyLOkBlI9VoRHJ6Jajbksyz6EbfG4
	 U0VIIJdyvFNeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9447CE77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173585075359.25070.10816556130132953327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f29aaee3d22ecc7d1826f4855d9320c5cb2450db5732204b20cf7d789a8f5fa1
Date: Thu, 02 Jan 2025 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735850753
