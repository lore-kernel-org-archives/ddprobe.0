Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5E7224B13
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750307394; cv=none; b=Qd6JfQVTfxqUZ096JM/x4BdByS60gWrH70ttiGgDs1oyjFCJKp7TxEsS3/mYgQNDeAGGHdjm6udR2zc45IjdAGRr2Kt4H392ykLOnPa6q5E4VvxSvsXle49rJnDIbw7H9JSY57e8zXpGTrgVemraO8mxYXqMU7rurjDfBwzGeXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750307394; c=relaxed/simple;
	bh=6qFwiT+jD/ZrX7ak9YmgjtY3EYJwiIt+W6rXVsbcYXo=;
	h=To:Subject:From:Message-Id:Date; b=Tzrft1W+vl0pIjiG7TnFeRGmhJDIB4jNSByeTTjco3lhfcxVeGTY6pfrZwC3yY0CJ8W/ObH/9p0nhamd+Mne4wwz11WZceBlK39d3zJjuzvEWgW/4GB3YX0L95FfSjF0M73Pf1TfNttuPjbdVqhYQ6DJ7PRNgiR1t+Ei1fg7wgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MmS++zAi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MmS++zAi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05FAC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750307393;
	bh=6qFwiT+jD/ZrX7ak9YmgjtY3EYJwiIt+W6rXVsbcYXo=;
	h=To:Subject:From:Date:From;
	b=MmS++zAirQqnssDs2lOf8830kSB2KIZlfPCZdZ1h2KnHuEXb3sJ1iO/D09wBzj7Hp
	 wYQ+Wj4S6oesW32oyg6KOZ2JwKg9jO699SCDUevtjxVwKIe9i7erB/45YtCchYop8h
	 Kkh5jOa9dSqelZtcBUrhw3KxnBaDoGLGNbLTKp42ITJuOtMWgMS1DJMHYuSjqTzofu
	 M1NEJna7tEM7kbnStQwj+xKdu4nKbIaEkjIa/Ae84yN+rPy0uYSKu0bMxJB8whj3Yb
	 uc8RZ4HlFHhDDZZnfU1kOX330AjBv8VefYPUsrDWy+7i90eWvxc4rzc4UhOAcQLrX0
	 g+nDFWDxNCh1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4E5C71136
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175030739357.21767.4636490129767732071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3dac4cb879e26c104e9f82bdbbcadda1395fd3e8e00792c6196ab086f2aa00e
Date: Thu, 19 Jun 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750307393
