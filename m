Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233437081A
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758340194; cv=none; b=hcSSA9UkVJ+UDMZahLOasDdjMU9Q0C1gng5gZLcYCtmQctfKNgPZ1s1eDDN+BDf0kgtNuxGcPCVa7G/0CoLnkEEUaHRB75uLm6GwmqjCv3QEM8H+1TuKomlWwBeb4izZXLX1ypsUJGNcnfHq+2YCuePt5mCLyJ5oxXuUBSPBFMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758340194; c=relaxed/simple;
	bh=o3htW1wGvz4SCdKNRyaW1L4nw85UDfkFenEg4ysC5GM=;
	h=To:Subject:From:Message-Id:Date; b=ma0zuTA3V3JPNFuAHeVChmieRK7dA/YcHyTkVKfLEmCYYE+368kdnJYFJn20Qwj6f27EgEkk2Eo+1NYSyBtV1Ooe1NKp7lhfBWAqwc/io9ZCcYu01l67fK9mVQ3QAfUqzxYBzvvIYZNaUDtU9suWOMDjEdV6Om9No86HY/WcOGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8DLzkpo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8DLzkpo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4178C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758340193;
	bh=o3htW1wGvz4SCdKNRyaW1L4nw85UDfkFenEg4ysC5GM=;
	h=To:Subject:From:Date:From;
	b=M8DLzkpobxMK5lsEqZHLXXgQwXc9HgFMsknLZoDs77u3p5b35JOY3ZfQgtYV5YjyF
	 YYNDuB018lqclkFy99F+5TBjhy7GqfbMtmY3QVGTrIsObcxFH8YcDmisGOB4yJ9ADK
	 r3wcOLIgzhQLCcPDcVdijljJn2m1gFY98wM7Ujx+Ft3ttB9l76cdUP5fPy+ofiJXtX
	 3wvutPV42gC1wHV6E9ngcYxgbMKw1giTQw0fBb6ez8HZ8+DLs0EAPJfCHit35BofYi
	 jJ7LuQuLd1r3yg58FIGgjS9/OOmzPafJweT+y5S3E506cGl/6QH26X9fjmcOSsvOz4
	 qJf9pPX22LzvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9490FCAC5A0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175834019357.22198.17435478458612566842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 768e60a4396c7bc703182c4791a8f75d705f2d5f13314cc0265e882883dc8b0a
Date: Sat, 20 Sep 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758340193
