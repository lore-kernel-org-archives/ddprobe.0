Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269F9253951
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 04:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765168974; cv=none; b=XJwVnCvhla6xQpaGQTkqKWNt0AGQSKY4OKU++T6lAJoQC3Y+q4gl699ia2xOXcvKT3DNlX7oZsYE/QYD2UFHBSPSyPlSBpFDIN/M0JmHw6huJB0nOz902X/dgh2ak5IR/GGRltIE11ev8TE6UN6DMw5Ej77iYPtHnHKo83SbN5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765168974; c=relaxed/simple;
	bh=15yJuENA50dj2sD2oUGHAFLTUiZ0YbTQT67nodYxL98=;
	h=To:Subject:From:Message-Id:Date; b=YN1NfGdudw7TTBPbS4wp3KHx2e4pla7I0md8mMGT8gy+7OwKshIgedn/Rc/UgKGY1rqNvSejhVSYKssQHdIjpmAStwS9+bOZYYCrer4Kxq1TJVge9a5BFagcQPdDDEC7gCnWDjN1H/xiKGIBtjEwCuW69hoEgjMn8/aFolwsxyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pf6TFmw9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pf6TFmw9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A431BC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 04:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765168973;
	bh=15yJuENA50dj2sD2oUGHAFLTUiZ0YbTQT67nodYxL98=;
	h=To:Subject:From:Date:From;
	b=Pf6TFmw9QgsVwG+xbM3UjOKD2Hno1/TT+O214hQ3xXChX+5lDRWnm5pnIRfKAAekg
	 itiHEBEjk+dCbEDut7odhcg3uMcSBFN3AlX8GWmA518z42YSgBbxEYde97vY9+CUmd
	 mUmDBufguYDsfXmWdpVyuOcL9ggNYJ6qgiBRV/EJm0miC9+oZi0H9gk7QCXfHzZ71T
	 MJhCSbXKtR0OVDF6cr/A5mvxSWW7NQp0GNkXu1XTRM9Xwtjc1sW9D1L9mSA9VS0Zm+
	 bWc29xU3ANgBI4tyzKtbwYxwGrOsnxUFaHbvKYT5eHDSUdQzScWM54Mo0xWgrhyENW
	 3e4M85ZindbRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911AED3ABEF
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 04:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176516897358.11065.13574531468213902991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d6fb4c502e48de1f396f9d0831df7b548679788e2904848042ed109d81cd5ae
Date: Mon, 08 Dec 2025 04:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765168973
