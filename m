Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03330134A9
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 04:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708056497; cv=none; b=Xm4Rj0jhBLo+W5wx2gqLzEsxIQ8XixAw3KeTzx29WsmSsXGbBXviaqvXa20hkuHL9yFRA/r9HjhhI4jJrSeo6sJb1+ovsPnNg0audT++1oLZrxlEi/Mdj68KgjnlHujDUPoUP1ZjOjArvGnbPyvpJa6hKGftLHQnW7iSWjBPKmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708056497; c=relaxed/simple;
	bh=Qi4/UV+6zRIeHLI16oIH/SF5JjYZTFJUxzwjVUJNycI=;
	h=To:Subject:From:Message-Id:Date; b=q0Wve8IVdoCKxKAlLVBwrIIsffjl5Sv/NCe5qFMQ9bCMNcem3mamC5XOESABgizvfmBaweeWoB36DJNg3onq3kI6aQtFeisGHhktsA/fb+mTywNPrIYUcmQRGbG1E7I9T2BH965dUB6G+bo7Oi9bOfVIOPYp8ZDvj1LUxyL3EuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oq8SK8pf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oq8SK8pf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 819D0C43394
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708056496;
	bh=Qi4/UV+6zRIeHLI16oIH/SF5JjYZTFJUxzwjVUJNycI=;
	h=To:Subject:From:Date:From;
	b=Oq8SK8pfUeGI+NXaepgU6UuyhSALKxmI+8NwjWieRuftfPSMvrLVQ0x7zTKFBNaPn
	 2f7bhnlWO2pe/aQjgQ4YwJFF95zIQ+6967F3rhiCRS+kWEJIVzyOXqZk5UxzsR8GB0
	 NH1dBuFHs8eAxGW6+5/oNFMvxmxXWYSbuquLDbW4EDNJHdPvjYoVOHw2W4llXub2V9
	 9limnFgcZppojqrmC0uwp7kKXwcPkYF/Nqvw/uLfk9WwJWFhDP8huRwVX9Lkn5pCue
	 RSbSzuESRNC/Qt1AD4PlFzdMN31i5KtQPz9ZdPcHEod11yjcKkv19bE3GfCAZhEP2B
	 zosqqvQJi+d1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67BC2C48260
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 04:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170805649639.31196.9981546503053716832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f608285eb538c1a7de5a1b6fe3bf137531ed9182268690504b1e8a76c766a82
Date: Fri, 16 Feb 2024 04:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708056496
