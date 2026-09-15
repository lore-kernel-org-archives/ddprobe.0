Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84ED243A7E4
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789494634; cv=none; b=OpJo3GfG2+CF7YUaHhOFc2le7lJ6RNwxUrdma9+LWCFQKZQBKSdpuYVS4aZk+SWy1Fh6x4iJSGpIuBXOWklBOacQL2GgC6f9lIn6b8oI+JP7g3/muhOL5K1LFkSdTAD7UsAupe+liJmPCcsqXnUcIa5d7ti485ckA5QzHq+7z9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789494634; c=relaxed/simple;
	bh=qr6lEspCxCPn3DZ/HNfoqBOZWhhm7uC4g0UfgoXvZEg=;
	h=To:Subject:From:Message-Id:Date; b=YogEABTW+az5hACsdObb/GJP3SGlvJY1K/QWXlKaL7q979Lcs6fUCp0zyCEX5AFUK3Uxh2of/WiFHOLVyuxhn7OlFg5gSaX4ZM8ch5N//s3W/h8T8gHCdYQf8OJfL3ZLVhlfW3rnatWGWemLZp0kuhQZCcCME6PAsYl36xQeyds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSgwTgtZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSgwTgtZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D447AC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789494633;
	bh=qr6lEspCxCPn3DZ/HNfoqBOZWhhm7uC4g0UfgoXvZEg=;
	h=To:Subject:From:Date:From;
	b=gSgwTgtZc71QLPzHaK4rPd/Uu5L6nm97VfmWS4nWGy9a88SgZZupv7wnVq1rbGZOE
	 k04dgIH+fMWyNsoElzcHzgBAy036na+MsB/iWo7NASVaBjkHbvyr8KbO5/PY1oNJOW
	 jgCkFot2Z8/S+ahuNuYNfeRlM6+vETzvz3MAShafwwklHiWYxcGWtBQBDMWZ8TCoD1
	 QthCVHGK0Id6H75++8BKF9N7XhE+mEl3v40awlJP63e+SAFtjwDTT6LR//YDdqPWpY
	 TXtudHS7TSJLsmE7TuMr8TK/RfG0TvX4VL6B3xrK+XO0iokfCkloSfhJFyYRhuYLe3
	 2Ja04adPc57BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C3BC982C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178949463371.5104.13852571907845173369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17c4c31da2f4d5c07e5d8f994e3f0fdb1ff4855bd871fb9c8936c68af4ab5d3b
Date: Tue, 15 Sep 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789494633
