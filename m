Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A053FE4
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748611794; cv=none; b=mgkrYWMX5kDajZZ8pSklWfb1m51iJLzv+1txBXM1JnxtNB/xS1C60P67HyVwZEXYTfTqlWrfmwopJSmQVjnenwLi9F6nA7W2V8uL33A9qoTCP6p1kKJz8nrSa1j1ymWEzSsKBDZ9nry+RYc3sfdyCrNk5Kto2R3WX+VgRpbKack=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748611794; c=relaxed/simple;
	bh=MuWbGZet+8okUmvBIn+K9Ouay0Gr8MVer0iAULBLLQc=;
	h=To:Subject:From:Message-Id:Date; b=ArUXtWGmcuG24vXqX4fbDCwB0hSEcZJ8zran5XvuCg5T7mmJ0F/URhEE85JnSryVMlWdvj+4LUNtF4hn/j2STmET1Jwi/8oLG2In+JPyXXIv470qadd8ApBtWEijywTJ3vnkCVCesjcJDqqmiMm7k8GAKwsdZf/upNlmTSNBfGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fOs35zZf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fOs35zZf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AFBC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748611793;
	bh=MuWbGZet+8okUmvBIn+K9Ouay0Gr8MVer0iAULBLLQc=;
	h=To:Subject:From:Date:From;
	b=fOs35zZftbwzHFOtGM8ko9+mUvuItQrW9kXsDyPZ2aLUZ+EzFDihrsCxGv5q821Jd
	 637QzOnp+Ung+8Hsy0MOyLfGebkxp0KKjfjLsMjBsspH5SencmOxQiNfH/nMR73OR6
	 gwm9CSsxQ2EkFEKWD27fO0giqGFomuh1U041bmuqcJvM6zuiuV3gyImG+KlUW2vHqI
	 hQJm4dlFJH1tzBH/RmsoImYMyvNd9p/0jApo7YU/M1udxRlpKiWD379/zU0KUG3MUJ
	 jKiP8/uM17X9jQsfj/sHmYBS0tsHpPexL+afe2iqwpSh++LYLQGM6OIRRRaIsVcqDf
	 u+8r/p3QwXoQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96960C5AD49
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174861179359.28907.4757152295289109589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 954f13ef5d7ea411685b528803a69904a70d36fc525953298c03a4af2aca25d7
Date: Fri, 30 May 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748611793
