Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3705E232373
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743580194; cv=none; b=MNlPG8p4T+G24/3f0KD+a3sVZwfkWLJ793avKMLBO1qT8f4+n2lRE0Zf3P8XGc7VjnueWb8VyhqTSxAHQ/eUqXjv8Ctl1Vcc+DvD5QR91SuYBtVaWoT2gkOTF/6zrQ/VdlD7jc6iyCZJJEEy5jQE9Lgmxrc9uFfcon5aku5xfaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743580194; c=relaxed/simple;
	bh=7ylOSTjMwnu0Mo852pR9gYkgo2WQn0wP3D3w1beK8EA=;
	h=To:Subject:From:Message-Id:Date; b=t4e1i6xUar1IlpAX6NIdI786+gdYQ+n2Kva994ty4h/CtHQU8boboLqJbVWnxRct+zpnaYkIgE//maevMOA7G73wIpOLsd8ymA0Fnpyi663ZSYs0uVPaINdg+kz+eAkTnhI4Y+acyaZKZBUQ0OhrCyMURigpaaTtHHpi2CufpkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p46X5wcF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p46X5wcF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB97CC4CEE9
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743580193;
	bh=7ylOSTjMwnu0Mo852pR9gYkgo2WQn0wP3D3w1beK8EA=;
	h=To:Subject:From:Date:From;
	b=p46X5wcFZ+gb+/xrePcCV0yg2xjfPWG2iqmhCDx7CyOAT0abG6/2TVynDmOtNjjz0
	 hE+cjMeVco6mOj1MnvlzwR/md6pAXx7k6RGu5dU5SU7XdzzlQnRRWpSL/ZCI3c4Vl7
	 G0UKDR0SJaU4/w7U/swsWDBPS/u8qzg+o0O4KwS9AAFXuHSTt3tRjy1T01PMeSguGJ
	 eXwe3UWIdEz6peg9hQ3S/m1iynKt+DP4yvKXiu6y/Z2LWSz6lVFDraewBZsqG/dFkf
	 nbuEMaOj4PCsY8g0YlSrW93Ux+ZlF3gGlsTY9bfMJOlAQZ7U27SAI7B8zlXpiKc68j
	 VXh4g5znQZ+YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E71C36014
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174358019359.13918.6136588836579172660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c204c3efcf19931c958d0d71c91b192e3a662886610b1aba97d6544c3bb9d3ac
Date: Wed, 02 Apr 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743580193
