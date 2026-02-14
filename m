Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5388E1FC7
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771056294; cv=none; b=tidNSRdntCuPb/tbExBGwwo4Zb2dndVjFyZeRmzcZ814lJzefbKilK29TSNdRGBgVhSG0Zp6i1fbLdHTm2wJhxsEX69PMhwqxSgAEN6YXSYu/h3BzeoiLVA5wjN0miFFYs6yJI2CzbumP48RqFfjNIaMaekdTlzy/1zZtkuB8+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771056294; c=relaxed/simple;
	bh=P30wxEHBdGTahn3GiNeYFqSVBG8WBvieIZ9hX06eJQI=;
	h=To:Subject:From:Message-Id:Date; b=A9QeiMEAnM7+FXQAiveibh4FMyJN8H5ZlP+I2jbVdQ+K03sczrSBCKLHyBXa4xJm7INXE1IBDqqbRlg3B1WsnwVFZ1pgwroWx3EKtGMLMAWbxVIwjI33zIFEQJApnYF0xd/EeXlkgZJPbMAaX9cAcPuA5zR9321Zu92pS/hJlDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u3RhSlET; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u3RhSlET"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA104C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771056293;
	bh=P30wxEHBdGTahn3GiNeYFqSVBG8WBvieIZ9hX06eJQI=;
	h=To:Subject:From:Date:From;
	b=u3RhSlETwPS6D2jMxu4QTvkuPu+ycdWZdQ0TQHHIJlZT8nfqObc5vdoTb6DmNoHM8
	 Hk7+tk/K0G++u5X7hrvBB18dYyrhjO5NVoLZ+FlFCx9xcMPufuXAcIjpVYKEajx4NI
	 HiTEhhazbAK6KBRvDip3fgZTnn6mRU0rH0te3jn41ajfWzmjwqnMm6lCcCR9DEo7W6
	 LuCAhygYT8R2jkfqX7XWFbf4g2OcV5IwWIitGhvEt5lHQ5BInxDmvoZe9GAmfEgyrO
	 pgFodKBvVN+djOowGz6aweNHiqf8cJxF0TovpwVPQZOOLBa2rQeAuptYtBq6OH5R8b
	 ygy9Mzna6rxcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD5FEDF142
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177105629367.2960.15937518975439327238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66067fbf398bc56f0de75e13028d6a2218bde592d3937327d096dbfb995f6c23
Date: Sat, 14 Feb 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771056293
