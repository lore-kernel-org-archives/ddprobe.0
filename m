Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DEB51DDC28
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 01:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777512454; cv=none; b=O7OOm6wTPygGarahZt3ehcUERd6XdlsB/YNWVEeWknOSwxeaiNtzS+Eh9SDljZVIYfGTnEh8F42FFsr4aoyLvVbGqQO9gxc0r4KwPU+V8WHUl5MD687mu6B250HEvii4ASXos3kMWqAhSQe73A6vnGbYNUIQzlPPf/+fht35SME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777512454; c=relaxed/simple;
	bh=JjgVdrQa68afBp8k/vE8FHqYH/w8vYuarTHM30230TA=;
	h=To:Subject:From:Message-Id:Date; b=IU/O5sQv8XSVYB80p1Hy1HztRH0D/6soIioHQCeYZQRhyAA6+AZ3XAcb89uaviHXwfHzpkJrEg2Db+/h47oJQ+kms3x7+VhcJJAIRADbg77XC4UAKBDHmzyw0n8KuuWMAqoAZubryppIzDm4GEQegnGAVS68xzjiHQbj294tO14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l53LupAh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l53LupAh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B89BEC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 01:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777512453;
	bh=JjgVdrQa68afBp8k/vE8FHqYH/w8vYuarTHM30230TA=;
	h=To:Subject:From:Date:From;
	b=l53LupAheQ/L5iLmYI83jnx4x/5ef75IrPGnW9s24zOz2yBnM0Fuo6wINxmsLlxhN
	 D0DeXHcXpbQY3TM4Ysc9z9MsinvH7deq/W9aPoyMcWARKywTIROZ5iK3crUxyjmEbx
	 QsG9rJJJEsLSFYi+77RRY1+4m7k90/AltKqqAbS+7mZHLPzliqAAs+Pydbd+hqQLOS
	 mk2zPW7+rFlkw5u+2noaqLrj0MKxObWGUOGmrV3inVFZwc/ChpdCQWCupdW2z5Wfe1
	 7C8VELQG0gZkvVqhizrXLEW8GuSuXQQph3JXPlFg2VJPK3TMb3uNOn5S0yg1ODhu7x
	 VKEcjHLP5drig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96D0FF887E
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 01:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177751245368.27982.8034717698179329480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c16dce69a3c5c31db83f1b89099d49760792ee426bb7858fe54cad38d08e7399
Date: Thu, 30 Apr 2026 01:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777512453
