Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B4E2A1D7
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735631154; cv=none; b=kmWsBogvRVgz5szKeJNpjCGBvlLq/qN0I8m6+CCnjLmXBj3k5GH2iho8gzBOnkhP2AObZy3MszqAcP6nFh06kiLiJCXzDi1xZQ/G0WSmiO8kh8uB1o32tcps2hV1oEppOrzTIQzSjFc8qdhnfq27ELoYHcTAurZgJO4IUpJfX1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735631154; c=relaxed/simple;
	bh=aLM+E/vvhVraH6wDviiq7DpqgPavSGqzfGxuoY+hz9Q=;
	h=To:Subject:From:Message-Id:Date; b=YaPMUezA01aaGinLHML36Z1i0F6Buvr+OZWodm0a6BruuixuWyonwkG/vS7URjcGf611ZJqOtEEz8L7s4+d3eA1BGIKZFr6tFicXdtpGz2mJqWfqVegNw/bqpbdCnQ1ci1cDxVn0OiZy0FPQkAV8KQK6mNmk+fXRphjdt4cHWow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QJZjTQx8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QJZjTQx8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2035C4CED4
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735631153;
	bh=aLM+E/vvhVraH6wDviiq7DpqgPavSGqzfGxuoY+hz9Q=;
	h=To:Subject:From:Date:From;
	b=QJZjTQx8PtIl1uE2ZlIw6ByUOiW9GoctPqFtLshB01g8wVxvmDq5N0CQeLm2TwaEL
	 nn7ODD2/Gl9en0Jo7iE0arjEU1KeAnV0anLozjJlqywNtrCQDqGNTojLaXzp/XZexW
	 ks3z+oJNaV5ZogE1sfiYObFkZ56i4revNMwRSYtFZnbxqd8/9UHulPUNCpoOKnrVbi
	 12iUipGpgBmuwy6I7e30DD6CdihX5DlfQTntuhzBjfc0/QJGuWaJMVlcD9E4CgTypy
	 vSfSyEpI6VZqpKnyf/dU9GsWc8O+JKqVAuAcyTs5FkY9F26GfUq7zL97Q7+eo1OTOQ
	 YIrP/KavPMzgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B97EE77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173563115362.10267.6999044321350807740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b715aa61b87babeab242448c452c711188edc16d5fa5e09d0951cb4a6d628483
Date: Tue, 31 Dec 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735631153
