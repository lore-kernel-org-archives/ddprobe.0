Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CC98632B
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753762794; cv=none; b=rw/uXGhKbklT6gHMT3XEnsjOUHjmfsieqidVkfz+d+H9jUhbmQ4uolfzPiaBrEsBsRHKdIDRB33CqmTdSVfhMmHoiMBv8AYf93bcJzMDwkV80RBqmkMn9unR17GvtsCl5OPpqrLMiPqQjLtH7n59stWaN7CzJ+XYQ5N5uyIbpz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753762794; c=relaxed/simple;
	bh=WfCPIs/bCUEHlk8dI91ccK7iNDJsqDPg1u3hjXpaujo=;
	h=To:Subject:From:Message-Id:Date; b=OJ9+lxECOGWFCjJYDDMNrJ0zpK06HnPfpwgR03wyopp7zFtQj6+ldR/VbsPAw2ZQsMHC5lP6n7Idul+leA4Zb//rKxGcfUIJG4YAcwN5PB5TZmDyRL60MEDc+Y4oC0i1K0NNE28FEALu7LZXNUmhLS6W07M8DepeLfdKqTQlmtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2+bdiKh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2+bdiKh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8846C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753762793;
	bh=WfCPIs/bCUEHlk8dI91ccK7iNDJsqDPg1u3hjXpaujo=;
	h=To:Subject:From:Date:From;
	b=A2+bdiKhB2grdtPpIeToiFKKF3qbAEUL00AM9H+7ZM9N1R2CNlGrS+S9U/4Y+8hkF
	 LAgtAn/EmEt50VuBmPmoDvqD2fJOy3tHoWP37rHkAaLVR8h5Dtq2THpuhfdffyyJfC
	 ij4ml9ekto4eoEmx4vume+dPVPwVTp82fQ4lJm9vmkCZlB7x/d5hC3R2HA07R5U7PA
	 LZC1WgH/4I3YInzfvrXvAJt6jMa+FkwNhw8Rk7viuSDWFsmLBMVQmqlMZOM6Vfff69
	 +R8E+qOhuNFi+kLyJuOtaOAnd9yLt47m50jQSqiwxKngrVv5z1bj1PAgI7YdcjS6wo
	 1VtCB1QEfgGaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933B7C87FCA
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175376279359.3943.1430489116898769589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c177a4268a8d137b2ea7da2276d5a9b1d4153f7a9823f9aa9411a4d45d250bd5
Date: Tue, 29 Jul 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753762793
