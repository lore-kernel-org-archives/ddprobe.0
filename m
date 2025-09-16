Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9B52D3233
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758034194; cv=none; b=luZMhmUnaX9HkmZWF7Pi0kp+RslidRCRBCAujKqeTHpK/S1nr6Em623O4Y9Skx85r9MItaBAKQS+atFS3fHYKPVdQmyvLxeEkF9PvtNV49XPNB5ngZFmJYZkh70zjCoK4WzEiCC6btbE52A+kRBnu0mBfCwEb2HePjW3UT/z/v8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758034194; c=relaxed/simple;
	bh=TVtAvvPpqKwUUyjV1kmtpmezi6PgTr+HUv1H68RU7lY=;
	h=To:Subject:From:Message-Id:Date; b=Dy0QmgGvYesm+q/fgcUxBIuAO2dOw9UQ80BgeSYNBaT1xj2xPrQJ9wnCvfkg1vjhlWf3ql+zfGrNaLDb59RK4SYYfAYIkXKMJCAmiCvXCOeAvSvFvizG5WJQipJIei/GxZ4xbxerbtJVtYwE24MwTrAll4CWpGxOMIs2ykbHtnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fAQ7gIdj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fAQ7gIdj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1209C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758034193;
	bh=TVtAvvPpqKwUUyjV1kmtpmezi6PgTr+HUv1H68RU7lY=;
	h=To:Subject:From:Date:From;
	b=fAQ7gIdjcmx2hhXwh9QF+LofRCLIh9qRZ2Ewn9ZjMN7UDcZ533bgCJPhtx8Jryr2Q
	 ryoD5x2tc/qJNP0R3Bce5/EF77LENuLv269TkIEGmvtrEFFt7nJmkylyl0u2XaHIqt
	 ZyhTrerdix1jrGpJPRUYP6JC9h7D7CrQVaPp9/2Pzwn2zNPtnN7mm8Nluhnzes/MVu
	 5X8d2Zuz9DA1EmPTrflPa5THNCljuKUjwcnStA8nDgJMbbak3fouzIEugv+U7UrqaJ
	 dnRom9yxYbyl5d3uKn0d2jTIBmkObNIJFKeOZmua/oGM//VHUi89Z9w4uwC9Sv0Crg
	 S4sQgR7v5/TAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7C6CAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175803419357.17837.12072793619497866462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be23a7259d23e44d00ae5d9069c88664d31d37f59efcd03123e43c4029694621
Date: Tue, 16 Sep 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758034193
