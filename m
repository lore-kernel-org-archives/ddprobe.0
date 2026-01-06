Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6541B4244
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767675234; cv=none; b=fVcU/5ft1+5Dc6X5qHyR/AzpdNV+sXeRu6e5C276FW20n/pYO+84ROtshZl7UEi4zbCT/IyEyWvbE4Y0Cdp+i5IQoLV67i3lJUtn52SJvordZmwgVE2ijYxCgwoYMUmmKtFsXCf8HnnxPtYNZpDrvp7e0whinR7Qy8kvzg2vaVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767675234; c=relaxed/simple;
	bh=6VrH31N7+kZxUEw3mB8VO7yQi2mkDLnnbayLtAh2MEU=;
	h=To:Subject:From:Message-Id:Date; b=ehqkogGmHs5Cw3Ypk/ct7UCf593f//3oAh/Zqux1ldr/fEZct2CLIcgFO8xfIdZayaaBEdPte2TSDJ73//9t0OH8F3w7CGMHmkN1wHl6Wghw5eWfDj3khgBFvABMnZd7WEUUPausi3rdXq+GkmGLBSwMWJJTuEq2T+jYukq5MT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i3ojLh8L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i3ojLh8L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24C5C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767675233;
	bh=6VrH31N7+kZxUEw3mB8VO7yQi2mkDLnnbayLtAh2MEU=;
	h=To:Subject:From:Date:From;
	b=i3ojLh8LFpLC2Tyd8/rYUnwF5BnXmwLOsY1isrmirtkKfdpCq+hCBBYPZ3LZETEAC
	 o4jV5JY7zZhq+eKuCkoTP3LUrUJhV7WIoLSJASKwmvhhLqahMSyel1F1mcc23mJxSm
	 klQImlLT03ibt+WIwbvQRYBKjz0+eHTifq/GztcSnUqiukKeZWAkpnOpIHyusLOZbZ
	 ziuHbHTDa2yViaDBp/l0UTpaXPUnVcN1njWBMfx9M6fUAHWM01ND19ciK4TZ50bMyF
	 l6ktLZqOABvUOExxTyycQxAXRnmzvsKfiIfeaDHiefL98/bnr7FrCYFUqNxFNaRNJf
	 AN/mh7ysNEAZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E89ACD0435
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176767523357.24797.13610328059834823138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 366a6add3dbbdd1e16729122192489e9b407b8663bbc4e6f1b38184c35f003cf
Date: Tue, 06 Jan 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767675233
