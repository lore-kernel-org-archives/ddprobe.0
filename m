Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C90825F995
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770771834; cv=none; b=WM5arI343kJz/4X3+ex62gVHPDs8LkLqlmu06Cjmmzx0iQXKgBqTMvtPZwT7cDiwOUSIxvuWQxniTNrn0Av28sn05y03Q+gA1cqmmUhJS5KYYRR/K+Nei6KT+YaN2fCf9DlAcagrA8dyS9QNxytzVnWx+cnR0sxVHO9OJAPtYzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770771834; c=relaxed/simple;
	bh=FavHTkbYXd+gcArAAb9COYd5U21k892N647eWP4Q8dU=;
	h=To:Subject:From:Message-Id:Date; b=nAVUCBb3LHNegLeokmlkFm/GBGlyoRnawDdvgT4ZgOD6/D9YaJ/EvYt4jkas1+Zn7WkZt9Nt7eJ3+q6eCiA++fEIMgaVloQnf9IJOwCBOImYYQoLXEJdK1kjJSvHiS0N+QOS9kVswAKt2qUU6/VF7mYdfGmYxgJHWY1HnA8H6yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSNJiHXp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSNJiHXp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2D3C116C6
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770771833;
	bh=FavHTkbYXd+gcArAAb9COYd5U21k892N647eWP4Q8dU=;
	h=To:Subject:From:Date:From;
	b=RSNJiHXpbSaxUONvIEWYE0n0rLC9fyPV86mGE7Joj6mlInXE4d6dC0v1zyHKhuF54
	 XYHpbj7HkZq8PKu5KrAqqJlJWRnUepQeTeI3kCnwZ87frX3qKtyeWNFWWCMLSi1nRH
	 LS0NSO9tOjkqNzuF8R4LuYBcZcOTcRzoe2BwMx6R69K05fk2joOWZXjbmOr4FjfM0M
	 JApz0jpmdKje5NHlRbt4utbCxZjrfBsZ8H2vD0Y3CkGrCSJXvlzjnii3VaPa8EK5xF
	 JR5Su4omJspI/a+rnV3n/mlUW7Ucru+tmbUMEl/AjaDYpFoyR9rV2ui70whbl0nPNa
	 bUcrHTlR4RkTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972A0EB5949
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177077183361.22211.15029262662288652567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93f4d2da7877389cd5c1685bbf6c6066f23d5073c91c100f01e949bea27eaff4
Date: Wed, 11 Feb 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770771833
