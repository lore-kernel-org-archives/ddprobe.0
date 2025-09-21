Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3333023DEB6
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758449394; cv=none; b=DoydR8ume+aiYFVxcX6McjaANTef8fJQw4H76jJ0e/I/bpFvQrh/z70k6qIC9IbWVqI9Mop2Yax7asXB61YHr5GMGOsE/pYW/HYwIm2O6jjXSAr5667G5eJ022jK2ly9jecJ5IlgkX66WKx4rhlRhFnbYUggSZjVymxljazkpNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758449394; c=relaxed/simple;
	bh=fB6j3IZZBGqclaMUR0ZH/qRUBn3qlDGDxPBpIxXXERE=;
	h=To:Subject:From:Message-Id:Date; b=sgfX8cXZGYHSToiJ5DjfrYXOoiumDCMuJNFcKADLD21hWjTkL9isU+cM1lJ1W7WNZ60sqxtpnLcHcyknTvaBuPtgTtH4ifz52eW0hYQYo4ndZibapZROfUKeu6XkRIk1Gn1vVhqVQLsNAXha2nKzhpQIK6yZ43n8w4JuqILXa24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kC7xZira; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kC7xZira"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E46AC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758449393;
	bh=fB6j3IZZBGqclaMUR0ZH/qRUBn3qlDGDxPBpIxXXERE=;
	h=To:Subject:From:Date:From;
	b=kC7xZiraD2wXvaUx4pAGYRlQmfeIccQZKl5ijEt6/9C3ZjSlaMLc8/Z7SmCpNFuy4
	 RhVNbHsCJYI7uBAJ/03+L/8mNrJr+je3Rpkf/gzFHF+B9wTZiIXtRcI5gee7sNLL+o
	 /1LGHFJOt+KkAhIeogIGCYr6x1gzSPZ1AwRK14YZNtGbl28pjuqLC8ihKyrhwb9jym
	 SL51AZXLam7Wv1sI4VL9kpqxFRY/0DwOkt+6Pa9xCkjf1ovaWY9mf8KZdeRpJD+nnW
	 Urrj6F1YLExIdnBOA3bdtjbdYnJmefPLRTKQbakF1IT5Z9CRJedBKhCDypZPmwMvc1
	 1frGhtewFe2Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F45ACAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175844939357.13806.11957583236720889389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 419e7c20c8f07d7303cac983f23c61a43c3bcc6ad08ebff02426c5f834d7d2ca
Date: Sun, 21 Sep 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758449393
