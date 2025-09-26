Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6A629D294
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758880794; cv=none; b=poGNEx/UejxkkWv3PL5/+N5ivWMAOK6vozbP4SoXMN3e4kzToo4dqEIhQ2s/nWlL1xxwl9YQMRTSBGubIo92373huVi/BJflHaCJgn66GvTMXeZdB+hUZdqKP3WvgxGdqXYezuCycc3amYGHZEeuMnR8GQ0s/fjLfj6VVjAqfzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758880794; c=relaxed/simple;
	bh=euYb+JcuJd6HXiOPietY1jey+bMtCdQ4VOWKrj2WL+0=;
	h=To:Subject:From:Message-Id:Date; b=NhYsgtP1NqH6SvRIPhXhvZ8j+17yCw0mZ2V775V7JEp3zUd4AlyE0eUYRgA3sfb3CGrZFOgZQpMgGVjtQ34QNsOkaqXcrAeB+q7ce1LkkRAufxH8UX3MaWELgXgr+00jAkElGUSyAGXB2rDCYrgnx6B3jE13qf3M+wVCzemXUmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Agp+dimr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Agp+dimr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF3BC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758880793;
	bh=euYb+JcuJd6HXiOPietY1jey+bMtCdQ4VOWKrj2WL+0=;
	h=To:Subject:From:Date:From;
	b=Agp+dimrHjvuPFTs/ZYVC3mGk2rqj3BuBWWxbHQnixFS1eHP+NRcozsNHlw22UbIo
	 JDvNpi2MdpQ6pICRQg57J32aKTHgnBmMgPjTpx3LhzAjvmpqsjvj751hT3Kqo1wUQn
	 4xJQtQsa/Rjmxka+tTkDxzsMaDFalzPuK7j+bwpZDo6s0dwgJbnV7MB0hcoG+FeZLU
	 KNv575uNOWVyVrvbVdtitSplTiEJHJ5hYMgSuvjRJhBxoJjF2afF5NFQCt0KXVEiJS
	 7x/5Ips1NblhOd6C6ysBIzuZuD1eyDveHDku1hprBX1ymx8PptSXbpeYxkjG9qmPOI
	 tUhVoBGzxprvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AFCACAC5B9
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175888079362.14958.8896456744531989305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9431a861b9abc7e3b125386a230e8f77a0156457961352b36f8b233e692520e7
Date: Fri, 26 Sep 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758880793
