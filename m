Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F48C229B18
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772141694; cv=none; b=r+OQHAuQ/sv8PMDO4SHpwrdhMswrOMxyuFC+N790bbHzzfFsNX/+6XOCHWk34BDe6raTBglucYzyXW1fUl/5xTI7xIgtHTrm37X6508I8ubtcuYioH3rjgX4evFe0NvP1vc+fWHfnrvx9ZLN9UxfTnrsNwS2TZIBAmx3qzrgFbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772141694; c=relaxed/simple;
	bh=K3muJ9SsygaqoMitzysldzSAXXc8aEt2oiM7LpmD8DA=;
	h=To:Subject:From:Message-Id:Date; b=KylcVUaQY5bjXNSyTF1trRN7XE/q4uprB5+aMf9FUSmMaF3dghHQzYnhNpo7tCoHCuRmYg6t17mp1b31/k/gArAOm0Uu+zVzKSzH83QHF7nRcopBQPE97ZY65QWEi6Zwp6Qi5K5Kr+hleb5yyxeOdTK6WRsXFIUPErlTqKpsIm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9x3joeN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9x3joeN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CBAC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772141693;
	bh=K3muJ9SsygaqoMitzysldzSAXXc8aEt2oiM7LpmD8DA=;
	h=To:Subject:From:Date:From;
	b=k9x3joeNeRLDzaZHzbVoeF8h2WcPuudZ4Qs3AzXkGTAS+v6Gq1WqPvj033MPGc5OK
	 BUpGd8zYsCNk3uDbczlLlxJKBWNCBPoOyqmwLYKyCLoL44dEu7pqhpXyASiwvYvH2h
	 rJV0pOQ2OFePrWZt0kY+D6qzTxWFutuaAsJso6yoRp7ho8ffdQOHnEGUshhwKK0tVg
	 mabRULTltB+DMceXFWpA7IqZ8h4teowoVEmobjdEtJLtU9y7uukCSz8DpUfBmmLaMJ
	 eQHfyJ65lYULW02wGTLSmU9Vx0kJsTAwq6SY79yySYO5ZeE1ZzRgF7tl2V5x45frd4
	 bSvbzT2i8MUHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92730FD9E0A
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177214169359.4359.8704300462806996287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a69f051993767a907c31eca45acc79053d0b1afa88b02fbf624abd5c606658a6
Date: Thu, 26 Feb 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772141693
