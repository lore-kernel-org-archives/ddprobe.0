Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD1B13D246
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733340954; cv=none; b=VGFnGOgxDwysi369eqMYB2fiSa9mlRAeel3UY1fvSWTnEESdzzJp+Saf/xfvCxG85pq9H7inmJNZqKUQy5lYpT7B8srDmRF7pXj2SJikGZ8npcvoRpBs6vB19uxWhWfvtncrq+a3uJipKvDWAqIL3hb4c0SrCsxZJxXo9Eq5gYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733340954; c=relaxed/simple;
	bh=EAWe91JlsXUcIYJ7CZLqyxhsaJBL9g44QpX+i+CfBk0=;
	h=To:Subject:From:Message-Id:Date; b=hPh4Pf89Z2lR3imMuKkEyTT8/h/Gb0SNVoI4FK1tSLRINcwELZ8HWUJKauE7s7PSy7QAnM1eA9BLk1dM8WSfRUh/PGgIM4Y1Nvk0iTTy5bJZokQIcLywBBRUIMgdy6XmOYVNOwWLqwXYPJuVLI5O/CFUyXlYISah5JLo2y7btEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjY1LUxj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjY1LUxj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB11C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733340953;
	bh=EAWe91JlsXUcIYJ7CZLqyxhsaJBL9g44QpX+i+CfBk0=;
	h=To:Subject:From:Date:From;
	b=qjY1LUxjDbG/9cJORq7lu8tSSAVD9mP+q+UaSpFpKbEkxAswxw4gBk30/Fp7XLt58
	 jfjEcdaO5zD/fg7eWoF78WWjvrV9F2dyYCqJTJhrnz0R8T2yzjahRGmBfYKk0zv1sL
	 9P5cOasV6UEZezhWzDwvPIIfY7EflP0djE7UwFqr+AI3JbxaAAGleEE0NyrmNPtjsL
	 YZMCQDyc4Ujv/pJTgSDs00rb3cpYp6B3FslqqqnylpeLpZYFDKTKkC/SLcyvMtA+7G
	 9IAeDYFiQhbI8+Pss8YSCXjMonVbcu1jU5EnyQVq8ATQfy/i1q5ZF/Q6jAy7PCQJVy
	 jyYDIw7p6FAEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947C1E7716D
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173334095358.22179.4040595045569796647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b3a22fa3187bd2b0b2404fa716ead4a2539120d9e54cd122a2dd4cabcc3be43
Date: Wed, 04 Dec 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733340953
