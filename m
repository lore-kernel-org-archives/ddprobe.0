Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2853322688B
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748336995; cv=none; b=CS3PXxtHWL4HMYUWtFQHAMxJ5Mvn8/JvtDFvoGDEzEymvwDq/VwvQ6UWP6IZlw6FgmjaIoWrbV7TMYI5qnv/dvYvoBlYIT/I3WUMVphFQZOzdB9d/1sN4rtmZU4WI6Wydnho4PoZP5ukayHFEUsPye1XFNgdnIRbt9KZjFE8hls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748336995; c=relaxed/simple;
	bh=jjq243a/iuHPYzBip5KK/dSv/5BPF8GV6VuUvEZw2Ho=;
	h=To:Subject:From:Message-Id:Date; b=tftVius0Z/GFm8Ft2byBwusMp+qskans6YIvGPg6DmvC4l6k4DDQ0TwkNGqd5NHbx44HPpSPFjXQIi26iO2JNiOUNaZfWg7tMOhcAONYxj8UHxNHXIl6OtcRkolDL3dupJbt9R25a+9UONhdgK/PCdEA5yjSA46tRiwCEJYjVBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rBxjo30N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rBxjo30N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F995C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748336993;
	bh=jjq243a/iuHPYzBip5KK/dSv/5BPF8GV6VuUvEZw2Ho=;
	h=To:Subject:From:Date:From;
	b=rBxjo30NbqEIznZ5hEjXw6plx2QT5vyaVm/+Ef8BVdXRZIEJVjeRRhc6ImJ6pTzZ7
	 s6VAYpL18lPLHvkwt9/HVlUweQvPL+i7fyecICrI7srUjEoHye2EbqFLf9vXlkQf/x
	 GbrhXTzt4kOoZD+Tlan0fii12O5Pqz0xxRixnR+9CDdy3o4mf3+CNzfGcGPJlaxzbB
	 WZwaqYorT6pCzErAr+w+GBxH9wUPwxVM4OIiwBD/pq9nUzgUBQOqXGZrXtpObOJHpK
	 nYNexCw5KU9Iq5qBRZyQAXCkjjAnjYPNwgArZlaIA2nYes1AgeJNUStnO+99h+ttQ0
	 Tmi99+p4M4zXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F609C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174833699358.12953.1805401781646040701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81b19ddb3dd3931cf312bddcf9133b147bca9c584eeef3e900e541ebdda70ee1
Date: Tue, 27 May 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748336993
