Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9403FFF86
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 15:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781535994; cv=none; b=ZwhH/3S/OsaCFjVng6gQszZxzZhrlSltLjWvQ3o+NGPvGIBc+ntD31FnQbTiuziPZz2C3FHlN2DbKDjtP8lZmh4lPD29USaTuttPOZebgWU+iB4DStqXY+tiyXV1yYJ6GHQyA1auqIoTCua9aVkvNrN/GSS4Fh+t7pZ7BD+q38U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781535994; c=relaxed/simple;
	bh=BOHCZoH8M+Tg16LYYD0piVaKod8sDz6sha2/l5S4vYo=;
	h=To:Subject:From:Message-Id:Date; b=us/MRtfy8/bPtXDEbqKiYFOj2nx3qSr2gtAD6m04+DD9uRdfTsUWgwOPJxckdwF/+e+4H6KOWZbUANK/mZBjQFj+5D836Ry7V7eanv1erNWZ78Rj33b3+ZLPwl5QX91x6JkxyHVNHPPWfQAYUpkX/rBPC/lxSg46VHIsvjImOpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ezL8gs6U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ezL8gs6U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E2EC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 15:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781535993;
	bh=BOHCZoH8M+Tg16LYYD0piVaKod8sDz6sha2/l5S4vYo=;
	h=To:Subject:From:Date:From;
	b=ezL8gs6UYnsrV6IJMp6T6H0EQApoHizzGzHktiygehmQOKOrMy/bqOGTryah0radj
	 foCrIG4qB6BeUGCwCKAq+7NQk5KBQXv6cYyDJAMN+r+p7AAvIeRXjyOYNPpYagzjdm
	 qlh7OqllnypS4+fff6ZY6ItZSIyyrTLF3owbRfFSW3Orsxu0rmTX6dpKsHppsHQlc1
	 QB1cheywtM5EqrgRGI2qCQLlobv97MKHmj8l4y5Lf+qlZSxwaEWrIYVnkjRwIvt1Gw
	 0FP+aci9lEsnJlJHIn9tSiuDUEqr9apzPD+y0OzQgL1lv9l4LyLz+SXD5J1Li9B56h
	 GxKFZpebGAyBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3D71CD98C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 15:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178153599370.13875.11995707113205170795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15a81d4e8d318a06209e61be70d759a5a4b1e6de796948c3bdd68ccc70a045b2
Date: Mon, 15 Jun 2026 15:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781535993
