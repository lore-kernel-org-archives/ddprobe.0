Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2637C78F34
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755436794; cv=none; b=CmTdh+61PPah4IWYZcIVOqWyTfDDdMzzhUUTYONXUo49KxDfc9stTXCWp9lOJwyw8F7nlGBd1eiRq58KIMgpqCz6ey7ztaf3R5mEAlgUIGhZnlwGYAGs8KebB6pES69x6nLbT8dlhEC+NixFDbl3Za1DSaAmxIc2v2NcKrQXFz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755436794; c=relaxed/simple;
	bh=YaUlfC6UHjP/OGidl4R6hUL5WcJj5r5oFVzJ+7SE3NQ=;
	h=To:Subject:From:Message-Id:Date; b=LwGutgxJsEjGJcf6ZkqGTRQJrRMEBnhJt1mhhCcsFeS8TMHHvWFeSp+m2wg1QBPAaUcKxB65thbieKvKrigb9ZmGCUrr+81Nn/cOayyGKhdCPHckVEqmp8/nqbODXycGVIC397gVem3UuTOWrhQxYXotzr3HfU9M9ZrJzdZK8dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8UGM3p+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8UGM3p+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CECC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755436793;
	bh=YaUlfC6UHjP/OGidl4R6hUL5WcJj5r5oFVzJ+7SE3NQ=;
	h=To:Subject:From:Date:From;
	b=s8UGM3p+DUs1KL7cXjwevJafNdIC5k6AJVKiLoSY45KW5RL2YWkpu3XdGAMIUsU7O
	 5hiijdEQLo1H3xCxiBzqYFSZb7RvmOQl3D6E4P/SKI1X8+wSF6WlYSXgvvLCtUp5gZ
	 3tuvmS+O+hP/9SrdiUazz2cg05/lijxGw6teyciYt/Y5g7/BtVv8rIwuOrQR+wbf1B
	 qmXuY5Brm8nzhNASzbQC7vmRek6cQQGhmmKa+pNNYIRn0yCzAqbt2H2+yDo/j9v2EC
	 X3NEswkfFLNq49S7Esm+CxqKUYjFIsOrKy0BRllg+UwBe386ij77IbE6/STbDbXqW3
	 zdb7ZgjoYmDSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDE0CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175543679357.18699.18164651181275823852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3d97f8e73aa333cdfc3705cdfb46f5ad242fd9a965e88868b132b59fe0b7136
Date: Sun, 17 Aug 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755436793
