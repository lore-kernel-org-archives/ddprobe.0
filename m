Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7E011CBA
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761992394; cv=none; b=Uy6VsRJB2fLvbj6fU/2OD7CMTKYSiJujF7/fVUzExsO/OZ/Qo4I+NNEmFCiE+XTMKTHbq9o3YbAy4P6WGIEmzkEWkLqqQXX+LhyYc1cMgIrLFS508W3lD9P6aCiHaWES5rrvKczOvEi8Ea/hQ7jXdPUtVm4O6OkAt66mMaFR5cA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761992394; c=relaxed/simple;
	bh=lk4krS/BLKogRgBQHkoPBy9DWVGafHDsL9D97jqKglQ=;
	h=To:Subject:From:Message-Id:Date; b=S/OXr/X9t5d7Cstnwrt2ONrK2Pjv649A6ImSMY6c9goJq8o+EEUoq0vXMm1fdYH2WQcCUYM6lGEpFB6FmNfe/Bq+gjCG2kl8ctILm574Un6ILCpc4Hzg7cdqGi2fCHvTVWggtco3cV2z/cRVDlIoSLV6FqJKr1yZFkiKklUnHjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QqHVQF70; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QqHVQF70"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B938AC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761992393;
	bh=lk4krS/BLKogRgBQHkoPBy9DWVGafHDsL9D97jqKglQ=;
	h=To:Subject:From:Date:From;
	b=QqHVQF70EwcF5wMwiPw9QBysR1shNEUlRcU+VbfeeIKXqPOHsrNKkaXGayTEX7rj3
	 Mn0/n2ZcyzMjEtHpxH1baFVuZuxLRh4dPgAPVtKhLygK4c+SvSVob1OKy4a9CLYfbx
	 3iQa3rSY1nuVCWIgqqNaeoszysi61WjzOzA038J2RlCiMX82p7cLZMUNMbw2KCiz0t
	 E1wqsvgq7f6objJ25m4ETehy7LRPkspt/eozBGIsUpc4nsBXqlFUEyl7xW5XAUSL6X
	 3xCHZ3JPAShuofwnbamHfMDPFHNRmhsNz8Py+MJDVtJZBqPi/Tkl97qgDPPCz5O4OO
	 CkvU6BwQKj7Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3D91CCF9F0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176199239362.17281.13382905250944714857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d9a0b52d8d938172b558538c59ab22015328849a390c16b93d911aae14cff21
Date: Sat, 01 Nov 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761992393
