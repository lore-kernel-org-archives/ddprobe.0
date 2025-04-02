Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323B51EE7A3
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743594594; cv=none; b=nbvJXdwzpZzMZULynLGMMA4FxALqrukLeOE668/kdonSfl0Jy7OO/wRDuZJ1ncmz+ZN9U7HJYBBSKUL/IqVwgdA0a8gYMvvB32rYt1Z3Q4F3kXPW6gASyAvV57u38G7uHsASgBg8Lw+9j/N946g8r5o3Nx3E8dYRxags92+gz0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743594594; c=relaxed/simple;
	bh=NVWLEsRGMnqEJ/I+angfp83MVCFJCZxZTcgC/pAjqAw=;
	h=To:Subject:From:Message-Id:Date; b=h2dU5mvDit7qoDjYnElp5Ii4HSFy/e7vZdOJ7HtFlp5uYPBPlIDKIdowid0QytEZiDwA80WUqFG5SoX+7rOTwMAdo+5Nr75vIbuUpmuW2sh6n+e2oWMRwuT+lj1xsc7gCpdGmGmRZ0vGqJnp5M0F42S7vZwkWv2BBPvsGQHIjE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RRcAlzgN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RRcAlzgN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAA3C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743594593;
	bh=NVWLEsRGMnqEJ/I+angfp83MVCFJCZxZTcgC/pAjqAw=;
	h=To:Subject:From:Date:From;
	b=RRcAlzgNQFTzN1eLGX+iZQYr0mvYGLwhew0fPjlgy9sgXcxrOFhyD7a8FFgIEc5ke
	 8QfeyPdUW50E1Zw+vmd9oV0zsOFg45qtiOzLDD5f9YJdOJD0MrgtJ5pL4k948bpgd8
	 6xnb1zoM8rkrMunCKyZt6borwZhgJGWcWUaGuuqYnd923m/F6wNb1yxcVqPqeTaeFD
	 FqqLe9CiHDyDOWhy/AnKXP6i1+IVqjI+QSjZ40iqCXgNHDet7D6p1K9LxqwIOq7GeF
	 5If1vjFqqPgeJW954U+xruZ5U/ye5tRNd5vMbijRDmct9Gcqj1YrAzPWFy8Z/9qn1t
	 d7zWXeO1c6X4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98858C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174359459361.28420.12828224316403492029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86620714cfd1bb7ba522982f03611f784cc73bfb0b4443c7d62d2001376b90d0
Date: Wed, 02 Apr 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743594593
