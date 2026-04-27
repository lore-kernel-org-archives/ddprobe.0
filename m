Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153E538910C
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 08:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777277854; cv=none; b=nX7hWjcTM6J+98TIGctOjBCZEe7D0EoFLOpRKwvWkY1o2Shi+vfcw2zin2vrgnN96Bw4rBi17YdXJFoYBFoMMvsiNr/842r75c8TEcnH3GkQaZs/jWvmjtzHbjM+8mQxHQgmBrdAExZlxz4uSnH40WvlOkPXKw9v7B9iN8E14xM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777277854; c=relaxed/simple;
	bh=eXhPFAcJIAQ3ugIVdAnOs/CuoDz9bavKg212JG+8HWI=;
	h=To:Subject:From:Message-Id:Date; b=WcZskjiYAK6L95WHMdzKPaAhEekQwA1d8xJkwz2Mg4DPQoGI6SZih3D2LdF36X65E35AoiYpbXlaIv6pleOqAK5CZJTQGI8M76z/JdmrFeGBMDmQoLN0pcQxW+RSSz4u6BW7Jx4wYZppH7mVkfhchSnVFfxxLsjMfndP4E1en8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qOws4RTA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qOws4RTA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA88C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 08:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777277853;
	bh=eXhPFAcJIAQ3ugIVdAnOs/CuoDz9bavKg212JG+8HWI=;
	h=To:Subject:From:Date:From;
	b=qOws4RTAF2pQIy6ufPUq/vOAy2oxKiXloBtqIAurIEc5GMxS5wGepjuBmfSmM/kh1
	 m7DUg+Mo61WVMj2hMjVCM4wq1xoWMCT05kIs0kSQ/XoIiYtF912YJjYsUiM+wjVkfF
	 7cFiW8OABYbONAv7yoTU/FwFq58nMxFxq7hJLNPmREzjfjp5+Zc0NbGl1iNR8rT58F
	 cgK7LjZAVl8MkOUMhv/mGpwbOszj9K944Phii2qI6J4Rh6lCACXpkClc/H5KPqEu1B
	 H6s6IEOb5tOZ5hf/MHyxNKp5Zl8R5JtT/AOc/9Z47dXE7sHMSC0Y8NVm6X/rNLYaB6
	 3utGNk2KqOijg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCD8FF8862
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 08:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177727785369.14398.10747875620962196638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e496706b88d2ac072a9e3356ed15dd35dccb88e6ee03135ba8808fa1cd91b18
Date: Mon, 27 Apr 2026 08:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777277853
