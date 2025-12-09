Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5D79463
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 00:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765239174; cv=none; b=fcTngm31+dAwUulqVtKAU/+lExXhJ1joiCVkvMJJhfOy83oHOARxOPv3eB7oiW/uo+/0HNtG7jifMVjdPg0/2vb+tyr9T5EU+SUJYHj+ve0+SOZqLZXZmU/PqjqnsJGkLxSz0K1c7Un7L8FkH78+dNCi5DxlvAYrLT5JOKgsspI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765239174; c=relaxed/simple;
	bh=+uV5qfVWVem6usOYhMhp3u09ntefiBRbzs3vKB+Y+fI=;
	h=To:Subject:From:Message-Id:Date; b=Tn+Uuc9B+ccIrOBJHwaKPq/Tplhsl4Anvdvj+1pQp9lUPS1eRD2jiZV6EV4qP8/0Kp+UfSUzMLXImzO6AG5Pa01GrvRNO4TRWMMGRpTjB635ShgHVzv4cGIEg4QNr4EMgTMNhvSC6YWtdpzPD1ky4dY20FJxYdOctVkxD9dQc1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HV6QqiBW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HV6QqiBW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08D2C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 00:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765239173;
	bh=+uV5qfVWVem6usOYhMhp3u09ntefiBRbzs3vKB+Y+fI=;
	h=To:Subject:From:Date:From;
	b=HV6QqiBW8E+3sNEC4AUMdstO8YnNDkpCKRK4zob4bmiuKOf3/ER9saeVEOSVRsvIY
	 ztVAH9VkeG5vFOYRDRw2COC6SFVgqhLfSUhzKPb+N2sweX4yorKByeCJ0tge+mTkGx
	 br+W6LUKrkHwdZCNCVsZ4i3ASPHjCqbBKjERrtdCDAIcn+RgbD85lOUhp1qdw2QiC+
	 TdDNJVZT07C6pq4apbqrqyu81aeW5TIeBh+iG/LHS8uiprxjfgr8VWidEIa0TaK82w
	 mA9/hkVPHEgbA4177bJa4LAEPTgu+qC04XXvrgL6kOPM8TyWzq6qp1Ga9H9Fe8GJ3b
	 5Z+6/IVu0gD9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C5AD3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 00:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176523917358.21086.1982505562963087896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4f8c6eabb79bbc702d95b85c4ca36e52b9de5af854d9872995990e10e559455
Date: Tue, 09 Dec 2025 00:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765239173
