Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B04308F0A
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 23:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780961674; cv=none; b=SHy0jFy55XSWcSpv88UJRfvagg2eaox6QtE7tcAV4LXXX7fcFeO1Z1X5rRE3qdbgfOsGWUSZTV46adxfPCE0dt37VnJxmfBjFt8fxuwEhoy/2BQwxBsFUN+kUqF8Noa8892TGBDpYxWSGd9uQ1qsfV3UKbzfn0QJeCGyO38BjTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780961674; c=relaxed/simple;
	bh=fxH+nGiQp4Ey0vZWMzx2kNf3qYh7mgW2VF7/IPQ7Qsc=;
	h=To:Subject:From:Message-Id:Date; b=M1dukB8LAim7Pv5Kb18SQTtLLf9U2usP4qBZ9b9UJED4SfZZLc8JiaIzUlMhbkCTYSFpjGRa9k/dsCMHwfpVrGchF9EFvI03uNHMRPL7T8/4SKAw8zgFPyancGd97iVH9tPTnffu/o5fTci/ZHP+uOGKm/yHVFv4Z9jHyFk+mLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYRAIgEx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYRAIgEx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD802C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 23:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780961673;
	bh=fxH+nGiQp4Ey0vZWMzx2kNf3qYh7mgW2VF7/IPQ7Qsc=;
	h=To:Subject:From:Date:From;
	b=AYRAIgExjOXZgJ1uZStItdLaRYJp9OZ8zEvLkOnGz3WaScVOYXqA+1izaNhwwYlT0
	 gbwOySX5qABZTc1w2hm5vbnSJ1N8GoxO91boiTUFnwGHY0iHB48+nC6rFh340kQkfG
	 OMQj7sr6ZmsaeJSjjFMDhtISdHqH6S//IffJ86XGzYCU62dhPMuJ2i9Jdn39ts7i0d
	 aafHkHhtD/PGBmkUraUp/74++oqYAa2z9roaMe9j2UINYi8mbz9GPjCc/1BnFCkWmm
	 7TJPes7BB8HSuwxbHjqGdHXBKsdlrPWQiNB4leFAAfhgdcG0BSNaRRxicqPWUYNLLG
	 Aclm7xi5jLubQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B094FCD6E79
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 23:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178096167368.313.14501459553166813174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 373c44aa2fd61b0b12d3cf0532e56a93b1f850e372153df14e15459619509989
Date: Mon, 08 Jun 2026 23:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780961673
