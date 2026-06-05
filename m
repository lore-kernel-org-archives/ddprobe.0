Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3065B3CB90A
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 08:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780647874; cv=none; b=sfWEjJUsDdLgsjqR55p9P6mzf1GxI+l0fuBjQ4roP3TDu/oISa4T94tgQv1jvfwETfe1dsqsNSScg2oqnrzGInLSiQV1OA7Zy7NPuMSF5ZXGTZlx8cy2ot+qybEiZbKlWbh7K0pRgj/OuLAp2IRPCJh7XdSy53ckIAwpDtRm7a0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780647874; c=relaxed/simple;
	bh=D/TNoVAQr8+eO4qpV6pLRdyXz9MPH+oJjW98OiBn4Gc=;
	h=To:Subject:From:Message-Id:Date; b=nhaAUVTPKe4Sxnu5eWI3W/PHSnWmzBKhVhdjo2ybNuX7iLH/fzDXJ5w0V9GhYqC8qMNJxQDm+xpxXb3cjpBVB/U2TpegMdalmVUiSbbig+zbq6i+C02oVgnCBXGO/OpUNaaqjXZOO08xl4whGHwGd6akk+UyRb3Y9OQsxFsoocU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MdEpl6xd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MdEpl6xd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3112C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 08:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780647873;
	bh=D/TNoVAQr8+eO4qpV6pLRdyXz9MPH+oJjW98OiBn4Gc=;
	h=To:Subject:From:Date:From;
	b=MdEpl6xdCYjI2Y5R2dtAvufzklI0urIuCbe23jT+hDZq2+cPtTVID1rawysPObZHZ
	 zxBN19pWyK6bU2ABtmA8+Vr/miCT0dIXE/roW3vbdJtAdSCmF/gcvHnEdLkFAIanCu
	 dh08njB/ax5OznIWYo3lPxjN2axVkEN/X1qhq5xLEZHh24bxkiXyk0gT4MrMhsBQ3d
	 gqvsLwnHBGA1tusYXf5Qi65lWP+nb4IIrTLwy/uMnRdoukyDR+v9bSSepKlqueJTi2
	 efoWtho64A5poVaRViG3bb1PZumI7FSZcIoIs/A+CBwBP4AOTtvAF+VJZ169EMH4b6
	 yQJ6Qi9mKxcKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B6BCD6E5D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 08:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178064787368.23691.114092385257511426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8be52281a7f385ed39a217f1f8686ed4bca232efadae6045df0fb2334ba7d718
Date: Fri, 05 Jun 2026 08:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780647873
