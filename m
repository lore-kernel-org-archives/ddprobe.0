Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BC4231839
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751972394; cv=none; b=poJLb9tPcJ+oe7POz9yX53QmPVLQmcwQfzvHb/Nq8UcWqiaxhgUMYZEQrmQJJRgZTZug1MXARIdVKO7q/3+5wOcKtoSXoIy6dFZUofvjC0sz188RegAwwavquaKL4tE+ntsn7uBk7UvbMCQomKvbtzJ2p80Uiv24wGCucnx0LVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751972394; c=relaxed/simple;
	bh=erpXob4AZ8kUhq1saVur6XJepTPoSyca3j/1fSd0CbU=;
	h=To:Subject:From:Message-Id:Date; b=sTtyXc+x0u+Z2Gd5Hwk8C3u1Dp/kTwvJgNKsmFceIOBJyIVFMavGSa5eJo4WV0U6F2I9B/KsGfG8SLummlnjKOJE3mk/r5RzU5MpOLsYMmXBlfqKEPFmbqUTzPoB7PAFQmcEiLc7QhGimNv41vB00READ0g1ZbVnQnCd0geYKjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EWLMEPpI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EWLMEPpI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A102CC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751972393;
	bh=erpXob4AZ8kUhq1saVur6XJepTPoSyca3j/1fSd0CbU=;
	h=To:Subject:From:Date:From;
	b=EWLMEPpI9ninZFZSOgf9sA3RwlOlAVXo7xEejacDQoxEDfZ86QBBlBC9/Njofwrob
	 FWjk1vAG2nIGmACHZVb2zacLdbRO9NDLt8492BI6ydH/Z6RnRQan7cEMpjzySzo91/
	 M4ElaT1TtSqe8ZflG+p3RSAUEtrZu69/kntW2/UBhDKAjGAu8qgVaOiiSSXCpO9T8j
	 g9JRf2y1RgPi9wvbQ/I9Hf1mxTMdAwc2PKaXflLh7CFhnISNH6is7RL6tMt02NIkB7
	 iJjbuPIf4qPzcGQpP4V88Mna1rKiSLoT9fUxNvukihz7jWxxLDqZuRhmxnhIDFeq8C
	 5K6Bthd3lwTGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9177AC8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175197239358.10682.745355508751996577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f70c51bb8ee036025df55dc621a992fd31cd6a47b87505ea4ca0af352fe79e79
Date: Tue, 08 Jul 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751972393
