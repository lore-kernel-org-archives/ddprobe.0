Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198BB2D0C89
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757628594; cv=none; b=KcPOFgFptped8VPwIbKT8e2BucVQLUuXm40hsHF6yrNBk4H4fumbR3GNgnwud6rRN8LuoYV6tR8G0pHD5WOVOjLdpBV7lA6Ctb4weGyeeG6ZGoli6tdcbBNvc4PnBEa3KwSNlDMb9JUpnLz5gggF53Z9yMAYvT5XsLSxwuuCcvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757628594; c=relaxed/simple;
	bh=CRxfPZ2abU0bTPRSzD82d2mU+iU2PA84xYtsgBNbxL0=;
	h=To:Subject:From:Message-Id:Date; b=NggGcYWPt615dN1pbVZkpLFznT4StX377Benmr3H5ELSTh9zjZh9OWEeg25L0u1dyWJZqfh63QEa3g2HBriOEjzoAtaM2ZiIivJdDmALh6AbbSTI9KnV2qKqW80GE2j03tkwwFZoF/YOnTrohZU9QPsTzf+rRcT1y2Omvt6ZdMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ic5rXWtA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ic5rXWtA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DC5C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757628593;
	bh=CRxfPZ2abU0bTPRSzD82d2mU+iU2PA84xYtsgBNbxL0=;
	h=To:Subject:From:Date:From;
	b=ic5rXWtAyf56WelpWJ2zulbKKkJ5K21qm5tB1prvJr8zwfMRKH/jtHZCrYsKzD42a
	 8h5Doc2Az0TfyOuQNmgTkSipTwXbcwCFtK+cFKP9lbNtW40OuYGz8bjhWrUSYKecRn
	 vZ55wio2t8xe1iHfsgyxKhnMxjeBifoOQnH6/hDxo9nH7p2+KGcsgGa1c3ir7nd84e
	 V6A9fjmytIiAAh5qEYze1ROtEZznr3WF9sCElGDJxF/COn0A0YvNiRo/v6nKUqioz1
	 vBkhJnThU+4+lNUHMMSyxRuvdnIpCl3NZvcGzObl3CKG1UN04A6/XeC2J4DaD/ma17
	 3izIjbyqrKS5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F57FCAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175762859358.26316.11162782927182070511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c3fabe7ce977eec3eaf2dac361e373d48ae4a1e57b3f876993c00dfcfda74a9
Date: Thu, 11 Sep 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757628593
