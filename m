Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0938221F05
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751104193; cv=none; b=OF99iQSTbmnub3qPEBE1FioNFm94SYtIvyb4D5NksGs4mA7ZuQrAgbEmzAkI9dFTuZpopce9fGQrUsds4+h6pB4CcIIuBGQttNH9Hj7YUF5rLyLmmlMMH1K9Y0DOku49SxpdMadmtPvJ9+pNO9kReqU6tY9ug6cl4+IQLkTH6xU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751104193; c=relaxed/simple;
	bh=pDwts7VApTnXZeQrA99LP7JZoHJwY0DounBcn//6cHk=;
	h=To:Subject:From:Message-Id:Date; b=HXuCmo+F9T9r+AGLT9cdiYumug3zbx+1iRBKvWhniDlU16pjhu6zl1WYaOF5z+7pa3aAN4Yhb5S5R4iJReH7N9aQ89oiKNnZu6I7nyo+a961fJ0EhKifnBlfJ+JNEyFgJKXlOf/bx57o57+V4sZxqB8EyHODcuFhhhXPgBtnR74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hLB2l4eZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hLB2l4eZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AD4C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751104193;
	bh=pDwts7VApTnXZeQrA99LP7JZoHJwY0DounBcn//6cHk=;
	h=To:Subject:From:Date:From;
	b=hLB2l4eZynKUnOsRnyy2GXOayJP5KK2QebVlguEXG2AYRC2k69NMZgs36gL/b3Md1
	 CV1q7oOTQYH5HEewoOwMGZNu+/E2jMbdNHmLYUc8GTb52r0SEGFIJZOYi4Oa+75PGz
	 t8xKVh5OoME0tEvaX+uKIv/1Tz6exJ86eaQmWjaV/UESmsHscBSZPb2KT1qFM6RAa0
	 IgFlZdYRFxKyQne7VgfXv+Tbf+iA6roD0k0rFSkM0z7sp8g3BYF9hE0usOPYwa1aoY
	 BdcA18ZYAi3TvmFGFgrriL4ir2B1TpOC6HfxVLN78oFLQpUnos994+GsYNrV4ydCJr
	 uuREYnAFkFyYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91241C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175110419358.25324.714103886488621969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bab40c818e2846c30a9b4742b5c9f2d96803a7b29c40eea22e00e987e7fa2b67
Date: Sat, 28 Jun 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751104193
