Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26213309EF9
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773627294; cv=none; b=gKvOySdcH+ho6nRoCirTqgRX3aWFCsKnOkyGl54mzqscqApnZuNMVBumZst2up77mVUUquhHoM58p7EkZHAgITOenw1sG3DoQGQRkxgM6ZL6BcQESzNVrcR/LY7A5nWHciDTNskyE21ZyVX5RVyQ+MnUiqzu/HkIaIT/ELva6cU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773627294; c=relaxed/simple;
	bh=vHr+8aUUoY0KY2d4MXQrwLPLfmkkJgvb9KGJX7JASPg=;
	h=To:Subject:From:Message-Id:Date; b=T+N+o67ydMEWdUWZb0ajuRyugdkF8Z/YS6ijF6dy61XdCVALsV7/OMRkVdIsJBoXCVL3ye8fa6ud2R34cIP8DluR5Nozi2xJ8swig1qgde0iCbxhdCUkKfCKCiJYnZWwoDI3Z4f333cInUUTK+oEubie+n9HvNJXpmMzW8bVbQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QvcA3ZyO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QvcA3ZyO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E4FC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773627293;
	bh=vHr+8aUUoY0KY2d4MXQrwLPLfmkkJgvb9KGJX7JASPg=;
	h=To:Subject:From:Date:From;
	b=QvcA3ZyOn5D0oLA46XiJALrXUFTf/nrI6CmwPjQzftSQG6CEBWXWa9ZKiUwC69dQT
	 GS2n5Yg1uiNSh4yLEB5AG/fGsEQuEdoNabFUW2RNmPIHQnE5OlbQVud4ks2vRN8GmG
	 i6HmUaPS29HROmlos4PbXEwRg8zmeTbQZycJvagixV4UkUq/f9TM5ym9ldITYoaSGV
	 zyajenqdX2G2IRENFsbKTkb0nrecLzUXcGgLEt/SW8fvy8SMUCcOe8sBSpSw2K8EgF
	 nCwshx1DoyHilrwkhfrQUlsRwi0g1X6pXgLTV/k/f0DeCaNroGEjIF1/9cqberl+QG
	 6xOJ8viKC7Sgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A160DF30295
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177362729362.15319.16382517878270052764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f356ab52017c131581efe691d373de48dcd0de55ec85fc94b5716ce8c89a42e
Date: Mon, 16 Mar 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773627293
