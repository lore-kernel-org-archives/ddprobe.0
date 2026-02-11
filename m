Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170172550A3
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770848694; cv=none; b=J0yRatvEvGjU6NlfcopwZrBO02Bg+5tfFMRVlU92nySplXr8pS3+TrJz2Wi/R9lQVM36AOIgFyTcrjvqlrYFoVDZ0vKU/nqcvgoPHH0T5UX5J81t8YC1zhk25WAENWwyOIcVwVGCQq8EFnBACr4WvtDugZbWW/I19fDmVseaHew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770848694; c=relaxed/simple;
	bh=nzuxOhvKeU7yWRQ4lJXuJN9K9NnBbQt6vwQJuth2xi0=;
	h=To:Subject:From:Message-Id:Date; b=XlUq67V/pyfpUZehAl+xBb2Mg9GdwH+zmtU6fkCwQwf58R6+CzNC53QIUvasMRDZxqGW4vrHff5LcUilxv5Mxain9YYiY4WAOUNipHfdOOwXEvqe/NlUAUSxLgBI0u5A7M4fDkmrRleBRsN7V5lkT2nDtb8wq0b6lZhfwM8kqOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W2eRzsWL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W2eRzsWL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD416C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770848693;
	bh=nzuxOhvKeU7yWRQ4lJXuJN9K9NnBbQt6vwQJuth2xi0=;
	h=To:Subject:From:Date:From;
	b=W2eRzsWL2msTU3g8Rz3mtK2qcJjvnI1Z2/3HNvI46mpqX8VvOrTm6qY2LqRnhJdVR
	 xR+tgcE7gABkMw422Gnlp4oWMyvDR8gOEfyjsWtCqrVC9G6UX7mIoXkr70E5GIWd3h
	 T8TJs+k2rE16BxWb4yY1g/Z4TwNY68IDPY3wAV3vw+wrzB3Udq8kmi3+JSLDNlYYvY
	 Yg8fuZTUyquReQ7AJ4nKhptnIYxeyHP8UEKvuwLANZEgOqTAcoND/NPNBSDhWe7dgW
	 7oWUZjpmwhATAj0qANxRVqe6BHEZWNCQnlz5Elsq+/vlWHaJ0oFHRM/OgUGQY3RRZq
	 YX6wmEHMIttSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9516AECD6EE
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177084869359.13418.6158608261166093329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c993fa07fb46e59a6ee884cf7adf0ae386fb41a18377bc5d65e5b24bbba78ead
Date: Wed, 11 Feb 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770848693
