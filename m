Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DB5D191F77
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745055594; cv=none; b=XoPpXABxLou8EjQq/RS6YOIdZpyp7XKk5/0D/md9UpkIAb6zrRhZrrKbiHqX2qfTpdPVnlPdLhn6X64W+I1NCi/4p+garCGPzPzicWoe/uwOguMqJd8hxZjUUvTGE4n+AtSc0d6uC9XIhqyZILruejNe74vyhWD5O6UehDOSslQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745055594; c=relaxed/simple;
	bh=4sznYBkEIiSypa7POXpHbJW4QlWWky4dHMYaIW0f3NQ=;
	h=To:Subject:From:Message-Id:Date; b=Qu9qI4Al9O/FgZeZip0ceLgKrOO9DJ6Xjrm5fJOOE6D6ciBwn//p/rrcXOaH+Ew78H/LrA6MN7eQ+4Ai0Atw6vRhVN9xrYOe32j7tI7HOefPzw+xXlWg5BSIqTsyU7bnOXGHM7/xJwbLf37D78dxwBSznKgFX3UaoXuXsvdsjAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNjSxNBk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNjSxNBk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE33EC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745055593;
	bh=4sznYBkEIiSypa7POXpHbJW4QlWWky4dHMYaIW0f3NQ=;
	h=To:Subject:From:Date:From;
	b=NNjSxNBkZO0LAmpHtttlrL3dRQ7CV5S7OuJ0N4a4pnzhaSw1DacIuD/nijp88GjGD
	 qI5oL15oWCxHXuR8CTrg5qudm1bhNSzwc0QEEivp5v4RwbPpJLZuG3f8EPKUZu4x1A
	 aWZTLlSQ5gZEn79d1mJpBCWcw+M8SILrMum10y5xX4UWZPRE5GFWJbgKqJcKssYnN6
	 06Z2ZZPkglGnhaXH89xMYL+y8NzRsmp1CqWvEANsyJK7yhVTuO0U9p80A/70PDVUsx
	 gfFMuGhedXsObyZ7PW5GL3+QwPwH0ZHheaflXYtGixyDQm3FUdroWYxLWd9OcjT7eT
	 /aF1KXY/fDa1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1775C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174505559360.23315.6851224095853578369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3b58309e90236e36e36f7f57c0cd965dab2ac16ef5bcac2ed3ac772792ed1f3
Date: Sat, 19 Apr 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745055593
