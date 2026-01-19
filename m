Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2941B3570D0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768817034; cv=none; b=P4IQnnUG5x8e4k/wvc1IqXG4FZXt2+prNOAdEyCKRM2edcgv9w33SWPoNnVJxwZ/ZHF0NUCx/vzSLm9a1eMMqNcQ+IVwxWfeg9LpgVuWrXK3UM/8Tdp8Io4jPZUnmalhWuI7/3fDzmRi5Ve8JZt6tdNvUC9Gt7QQ6cvmfPozxKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768817034; c=relaxed/simple;
	bh=3eWBbs5D5GT94hUZJD8dby4GjeznhU5clFg6MUG/nxw=;
	h=To:Subject:From:Message-Id:Date; b=f2QxjBX7wbMVnksIB94BlEsOLU1ccKh5HEIaJvVxMBZieW6wBfv1CwR3MEvfwUZaA4pom3Ong+PHzmR7KaTctF+mWtj1vSxCUMVV2Kvozi863P6ExSXewFTxseAp46GaQFYGi8Y089Sa0jVGhxhcbkTUGLP88QssyCnfN/ZBOhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hHNHQeVm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hHNHQeVm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B14AFC19425
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768817033;
	bh=3eWBbs5D5GT94hUZJD8dby4GjeznhU5clFg6MUG/nxw=;
	h=To:Subject:From:Date:From;
	b=hHNHQeVmP/oxo3X4G9wbF5eg9hHbE/jRyRaDQk7femxqRrsmbulr++hXxmX+UqaJi
	 +hgyDGvBNu0qMIN3EVCFLy2RRfC/Os0wecObikPbkDGaetoiccgemSTjhTN2DZDQyz
	 Qw2Btywetv5MRibyK76B5LmN8Rc50VlgjqXOltaIRDDT0jsoJ/oMeh2d/5bbGDqM6y
	 gJTkWtzPXd8hjaS2DuKZpYS2eZ0wzbVgyJIS4Cg7l2kmIZujO8JoFk0gDbiHagF/Ve
	 VPl7SSa79sWTpsWSCkqqPZO3FKJzGUiOEWGLdIQz7R7x4uxGWQUVX0Yq/nk2a2vaWi
	 8LW6TJyMd2Cmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9E7CCF2D4
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176881703363.5468.11044004365852348059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c097942e848122be1010cd8b78893c3bd387cc59e93606639aa8d8bb1f22df9f
Date: Mon, 19 Jan 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768817033
