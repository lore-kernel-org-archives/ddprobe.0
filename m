Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4406C28DDA
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 07:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715152943; cv=none; b=TccGQY3ArUgkyuXphSvWz2G/Xm0heWdxKkVZtambDdPc8+GmNKQ+K1KwvO2HJK+ikg92x6LmTuXHluLzkvp85fz33tbPRjFqsIjMOzqSmz5vD6p62Xo4iV9vqFgOJk4jhRUXGYdzLIPflqZ72xp7r4AGp2V2iFlz6qM/6NCLiy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715152943; c=relaxed/simple;
	bh=NkaXzq/QZvIfSqJ2hhh4P75+gvIo11bexsmgWwnRJtA=;
	h=To:Subject:From:Message-Id:Date; b=BzNi8mepHkjOhhtrtKAtZi7h4VjnbjprcEAX3La64m7KYj1n70VW0MidTZy0MwkcyGhU9xtOcjOnCLPPqqtdpvAPpUGU9pnXIbukCbDIh42hGPm8DhGWWocX9ceOk28usK7uWYEYi5kEfoIzPmliNeqvfK5sOj0eHyeGhkcD3Sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hWKANZc1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hWKANZc1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D79C4AF17
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 07:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715152942;
	bh=NkaXzq/QZvIfSqJ2hhh4P75+gvIo11bexsmgWwnRJtA=;
	h=To:Subject:From:Date:From;
	b=hWKANZc17tLLi9OsgkDKmzYwxiPrufyspTKO5W/H9DlQ8neMBK2CRLMYr112aPZh6
	 RWv7P4IG0mPmthiiuUbNzZwcBJbjT9m2BSEykKNcC2KTHvjzOfRhK/ffO4e4Gt+kw8
	 us/wLMdarFRXTqFftsvHHeDl6Jk1B14dciLtjvLZ/l5FafkHxue8EfMVRz0grtPZOY
	 qTkuEyZ0aHDQetGWHMI0qSppUnnTkiVvM66ZtHSkUeXk8mgbWyHITuD8qmyNX2lz8F
	 tE3j7IGH45vhhoqPXM+aFb73U4KMj2DGoXzviO0t7NB3kdtXAI34eDcwWiBSVwTNQD
	 A6a1Cdx/ngneQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5948C04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 07:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171515294278.7157.7377398267459814538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4616d35784ebb2030b3d5e96a7b940ed5c34680c94d6eefca4c6d97a31ce14c9
Date: Wed, 08 May 2024 07:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715152942
