Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17040242D7F
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762223994; cv=none; b=sRswbrWgfAgK8V/ELsb/Lhiw28VXxxGDECtBNIBoO2W/ZgldWz7i8MS+jBX7/R24IkrNbyND5FJe5ZeVFXW/UPBoLsN/c5UiUBcgYevsSuBJJd9sU19Z+Bhj6KbMP0RFiZfuhQHhSqMqh7HYHXOadBYCOS+A789QMKC/2t/HFec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762223994; c=relaxed/simple;
	bh=wC+YSlbkw9UIl5cSDjVYuBdsrhoq5KJS1gNbngyNQGo=;
	h=To:Subject:From:Message-Id:Date; b=iQbpZ/heuKw6JGavTUh3Yy4Qf+KBxd46bVA+MTr92a88ZvRgldwG52INoTnwOBYI/Vp/gQ9B11gk6s4f6+YbUaDUO7R1HuutMyWO7wMlhY4RJV5NsgFmHdJ7zPjRdsAwggB+MkSBMlHNF22ZSy1P4D73oAEgESO0cVTxmCbz58c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eRtbsRDm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eRtbsRDm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A77FC4CEFD
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762223993;
	bh=wC+YSlbkw9UIl5cSDjVYuBdsrhoq5KJS1gNbngyNQGo=;
	h=To:Subject:From:Date:From;
	b=eRtbsRDmCO+KjrHcrB8lP0J5lUr44XvsavYEkLgPejt2pNGNsIqSogVVjAUN3kxUJ
	 APL56cc/wYvqhLRSQkn2gBz0ojX4azWS/ESn4UsWmbqzMKwREGEJ/cZvJJZxXqfXbx
	 XgydcBSsgtWDtxaPI9R+qjmrBimxX5tl2dpp3X++JP/FlHhB7OnQuAwZSDDrqzqCjd
	 F3NBuOMwwNxsgfX5BIX/vwqP7gDaGa3kYL+1yqGaKGrx/twD0mPY6/x9JtRD9tJnRd
	 mwcxPuyhLUm2cWoErC0hdETx327svGvgZuycUVI18o/LVdiinyG0HZ4gnG+dWfJGf7
	 jIzhw832qy3mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9474FCCF9F8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176222399359.5530.1959444336793429497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d67e2c8aa599093777ed2ed0fb04f253ea8d56069d7a5e02caad5b176c7dcb80
Date: Tue, 04 Nov 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762223993
