Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300CB1C8603
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758991794; cv=none; b=D2uvdgNB722eHvg0wlKO8vr4Uq51DJ2Lc0u9fqEpD8dLBZP5mfV7xDK8C/TjWboji9cNP8xz5AHhXA2rr1bpEA/qcocpV/0JQ5I/+Bw1PpOspAZ66NlByge5kzpPQTZsdOPyIZKLGIZ4COgWhqea1L3cr/atPGVNJGBZNpHosWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758991794; c=relaxed/simple;
	bh=KEF7+SR6/Z36OPtesegp9hyWYFvq8EaoDb+aJJ5Rz5A=;
	h=To:Subject:From:Message-Id:Date; b=kMEXTMFXqDzLGJLfDgnXCaCmUuebyD52P6lo7ZOvIjLEPD/4vJkTClGH9Xy7z5/9CSHVz6z1uwStRIkowbqiKfqR40adPRMTTivQ/czJWztyOf4rwGIl8l5CYHFuW6ZTlBw+Uwug6TJrc0v3Ee7odPcggnLI1vDQGX+Y+UcyHzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=httZDlAN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="httZDlAN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D4AC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758991793;
	bh=KEF7+SR6/Z36OPtesegp9hyWYFvq8EaoDb+aJJ5Rz5A=;
	h=To:Subject:From:Date:From;
	b=httZDlANd37wTer8+aIzt8uwmreP5P8I6P92NID/aonn+rcYABqD2UPfLMDYcDB9N
	 0sexRWh+G66f4VFTEdywMyD+xDol+0gCS5+hHoZQHU0ILyugGbLlQ+Rsof03Q8NGXs
	 YB94qrPY80Tyrxt+T53UKrjlTSb4BLYsrCMtHLqvq6ApliTa88xfVyqgHQXa6vB+5I
	 g6J5b61gJuqSodtuSz36VSx9lQI+CqFFJjFGkkR156vXRdJVASjKuZ+szjVFqhCvDi
	 2ApV42+yJFebSRfoBZVCDLFXg+rPOOT/HUhdbwG02EviweJ92DPgvEpDeZ7VGW1HKs
	 LpwjWEvV8ujuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927ECCAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175899179358.3896.8507605124808989002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62212ebb08aaed4f1f11d0c33d738f3fd359da3017da790da07ef77f60b757d4
Date: Sat, 27 Sep 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758991793
