Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5028C31E84F
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789097434; cv=none; b=W+zOvc71x7ZrxlJ3bdcyfnotpA38zAX+sGsVc+KF9K7SsbRWWQuEulhON5fi6rbO7ETKkm28VYCkeVqJflIqEhIzkTOCgGJ6QHd94t9pPimMDB+iQJCyOgVsPbwESWhb+O9UctWrwXmmy696RU21znbuBlv+B/qGuLWhDhKoveA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789097434; c=relaxed/simple;
	bh=icC7cmRmWMzodye2BDekAk3VeUV4B6jrjMz/btqXlw8=;
	h=To:Subject:From:Message-Id:Date; b=qHLG9E56cOXEiePfEt01AFIyGRehrjtAwJilr4ZOmrjCPDcGgoAT8ASBizH2X4jaaNGBf2l6KKsAQ/Q+4iE55DZa6YVMgk1ZdvIBvAJ2hN9h9JafM83gOR/6va5sW1wa4jt85YOttpheoM0g+Mkarpv4Ez0nKOrnqhSQiOqEoG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DV5drx6y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DV5drx6y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE15C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789097433;
	bh=icC7cmRmWMzodye2BDekAk3VeUV4B6jrjMz/btqXlw8=;
	h=To:Subject:From:Date:From;
	b=DV5drx6yYT5JtAQN6C/t2rsTflkHfRztmEeyEm/vKl6mYQJUvrvJ/XXQx8bpo9M/L
	 cOPxJqWIyadQxQP3xaiLiZugcnEtn5ysEnKT6I0vL5WW3knCB8c8VvYGt84KS15rS0
	 +5PmyeJVBACOZXyOvJl36TXT0jDrOHSI+ozXFz5wJ+DCHYm3MeyI+26H91eX2/AIU7
	 6Ww7QegO4phjvs1KNAgTp+41g4LSmrBYwV6ekKYQhxu89voqckxraG+63ev2Zgu7sZ
	 nI6+1iOjldMkmiWDD/e7KMNsXxFyubsDeei6UbEjFBDfNl/SkMiMHMy3DmAAwAcLfO
	 yb86HwIc5i3ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB648C88E41
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178909743369.24713.14789241002898971426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 903199b5d6d29c60adcd3ba3d8495e5d08bca1f99669ad15e56c9eec74331da7
Date: Fri, 11 Sep 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789097433
