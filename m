Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EB71F6696
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 22:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741904934; cv=none; b=HmWLHG1XkyQYP+CTp4PwjiRJfWr66+Dt/DQPVXNO8epowmuXTCO98SvNSSxcrz1irAFeLIBggVbbQCZaa8+rrHlQuyLc81yw052qFVHr4nnjm0IeM1dxvngBcAm/3Dh109ZBlcD9n1PuMrtnH0SWI9dNsbxvQM3t0+u96VXlo3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741904934; c=relaxed/simple;
	bh=RsuZXE7iqNVxgftiB7BL+D4Sn0ZKhawYTtUvH3OSJpM=;
	h=To:Subject:From:Message-Id:Date; b=MEbCIz6fx8bFQHIZigSq8sZdP+5QWGCwhUahmXgSLJawIDUpBgqZB+LxJPUfHq3kDk11EAeWijuZzauV32JAC9Bm04fiSk7+SjxzOU1hG0rUwOwvmQckgGcAw5+7G447BR2su7eXqH7P//vB0QyohaeWjSuxTBvWsMdzY9OCirw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOce7bBG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOce7bBG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50D1C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 22:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741904933;
	bh=RsuZXE7iqNVxgftiB7BL+D4Sn0ZKhawYTtUvH3OSJpM=;
	h=To:Subject:From:Date:From;
	b=jOce7bBGpUqjL2ClDLZ8Z4VyAO6xYuVxsqC8asZ/MDrQn0n4evWcRdMWaFbFoyXR8
	 TWpLQ0VZPgi3IbJjA72++e3Ya0LCKeeDSeTSEFmMYcrImEsJijGDWTQ4Mp0gKq0HPB
	 AO0wzOc3U40Y0v0J9yCSWBILrQ92U/dPVGppcV1WvGCp3Ivkmf6iTzsv9CZ/KRW+7p
	 i4xY1rzZc2B4bKr2R9eNHfeKKXf8Jy+LalMb7WJQIlkFJAtJcKOCYAJZwAoE4oPvFA
	 v4YRoi8renSF92bbFHanutLCJGzO7lwYwf1B8T6yPk6AwhFNoSTXntIacVbVTjTy/p
	 CR86fzEfd07LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EF2C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 22:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174190493359.18188.13619381320602628236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6861fb587ca8df47b9c6c972fd5647bfe7023ba3be8c707d1acf0238fcf522c
Date: Thu, 13 Mar 2025 22:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741904933
