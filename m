Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F38794AEF7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712439497; cv=none; b=Bhm8dTXkMBASdFt7msVTehsGIkgkCw3PVKrQHwBFTyBgk2luerRvhxbz89BISxsPnyi63d0TVgua4udXXINsATEU1Ca6hENrk/vIcLvFfecL2qvLJNwh5Yhsyhzwig/USU4Ao2kzrDRavJ+PhqxElhWiMlLooN/Aihj+eObpY60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712439497; c=relaxed/simple;
	bh=GkIxVuExaGoKOCn0VmaqyCFOQ642qa8E2mbKDfm0SvI=;
	h=To:Subject:From:Message-Id:Date; b=MiwgQMMjiwAuZaokD5iBkhS1AQ0CsLjzypffpbc3VNWACamNWIeoSOgToG3LS9Z57b3uqsWrbviS2uIP/HHc1696NPx2inuNKFyZ63qVLy8tcM52E3cOsgekljoDnaYPKNjquiuB3oZtghlZDwnz3rhwPWuoP6sqlk8HeqxAVXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IpaZHnI/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IpaZHnI/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70111C433F1
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712439496;
	bh=GkIxVuExaGoKOCn0VmaqyCFOQ642qa8E2mbKDfm0SvI=;
	h=To:Subject:From:Date:From;
	b=IpaZHnI/loVDrNrynQprraDA7OCu+Vo5vvO7M0aDo8OXxRSj6TlFBWLhotbPTD6JN
	 CzuDh5OJh+WwsVkP6yvo35YUal+NXZm2PnZnc0pUbj/9AdPI+COl0xSeu/lnqsFHsC
	 Q5iNk0JPrNeWfLgJnAFZq9bfUkGSX/hvb+bnZJno3l0ew7hSsp5DM3Svx9xBwDi+XI
	 /MAWePellhNcKQRPe8R4/gHKnBlPT2KlBna0rPccWNDriTRheixKqFBIRVVTmNQXFQ
	 O5nxvHBXeJoTu8y0HnIm5mjv3HBvcOuNOli7XHiS/qXFo2i8nTDirJ7astKmAHaamj
	 yxZLTVPZG49qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E564C67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171243949637.4681.4778664442802643442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3725cbbb7d1904ebce81126a39353717d7884187327ca4e863e9e7726a73f6a0
Date: Sat, 06 Apr 2024 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712439496
