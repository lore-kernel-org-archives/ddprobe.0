Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1854D314B91
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762183794; cv=none; b=mlowbawF1KLehu3LMY5YWKGvYIzejfAy6siq05tkt77aKPecWRWjVh9qeKY10LzliV3+s+gt7ErpBD7xDYC9ThlotpltiHiRZmj+5xhYc82jAJWO7O+Dp14attGSNPl8/+lotPiWHZpmZ4PFIfi1KWUFetFw0PjcW9GhoWmOGX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762183794; c=relaxed/simple;
	bh=WyTuXvu4Qst1dASinJP1voZ2mAAhF+RWPFQR+rUbpvo=;
	h=To:Subject:From:Message-Id:Date; b=Kk1XaGEefWuqZo+tX/XsSic8P7ewvo/PJ4QRQ4mqsxHh0Gq9379O+ZMT54zDTjjcSIju1F7S+fWyW6ki7iNiYcaMA/Lk/S8wUCLqSmqYMn7QhR8WBxNX4HYVfwoEU17pOek3Rs7OLjZInmpASmhHTVwBfsqXXQVUx7qjlLs1Hqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jF3lj0p7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jF3lj0p7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC8EC4CEFD
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762183793;
	bh=WyTuXvu4Qst1dASinJP1voZ2mAAhF+RWPFQR+rUbpvo=;
	h=To:Subject:From:Date:From;
	b=jF3lj0p7N4FzqxcmsGq5zRLb9FEg0RAnp330KDJuwR6vREEr+/N79UKtLZEBpV1jm
	 wXQ49jErxej2w+oPwFkLkhKmdZhGIx2llSIt+DUQDIdXP5Dg6Pu3su3OduumdmjAUF
	 revF5pg87fgSPYjIRuxIXmBmit0cthzDQuFAoX+W8IGt8QZ/wyePwSbEGIOm9I4sJk
	 6Xo+7uScENJqJkzej7gWzQiT2/93q33gbd5fwTZ71WkXoKanPAGp0eqaumG4ty97LG
	 z3ZiITnFH4gseGwq6i7+nNaJbfkOo5oJR8p0AUaRWJPoqDphKIRpPLIPF4E7Qht8UB
	 OmecUHgwg5e6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90303CCFA06
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176218379358.9792.15936307867284790064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa41fb23aa741108f2ba6d9dab5a17b889930d577a52e68226800055693e3759
Date: Mon, 03 Nov 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762183793
