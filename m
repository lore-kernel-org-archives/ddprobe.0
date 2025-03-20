Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3070022256A
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742513394; cv=none; b=REFZ+KVrR6gcWy9waKv8GP4LHHN/jGmTbW8FJZ9h6ECwYp5Ihak2O3yE+NXFtFzJx3iW5zUiziKaoIAan95CI5/jdke/UimANx9Bj6bKbaIrIgDuQ2gtP7lorRG/Y7XFazlb1JnqsMWH9nSBhPOvOQv5T/k9MjMRh36HBE9mhdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742513394; c=relaxed/simple;
	bh=2BErrWEtAcNBFHRhOvkvFgqruglaSgNEvOZbF8opj2g=;
	h=To:Subject:From:Message-Id:Date; b=JvQdqBGSAbsyHaiE4Bwgs5DmCc/2DPZv8V9MM4Y/mu4Bf6QRNWOGNM7GEhD6o0BaU0wcE3DsTuVht25wchDCK2VRX0u/OL5DDDaXyuMFNuFSu27YUXArxvNH5ZnHjjfGk2cvbIk4RI5ILnciTLCRHmAfHpwctqqWxNu2N6YwUcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOtmINw6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOtmINw6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12BDC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742513393;
	bh=2BErrWEtAcNBFHRhOvkvFgqruglaSgNEvOZbF8opj2g=;
	h=To:Subject:From:Date:From;
	b=MOtmINw6DqWiPLNLdhp5O1bVYp1gmTSntNN1/R26O9qVQtR7DGvzEjdBOI72gbIuW
	 KSfXTyWgUIyAJtgC7skqVtk5P8kAi12yr1iJyx2y73vrvtiYRprHivAekOOuuvwFVs
	 CgR1vf0VoDJJc2X1CDmq3RAp6wybt1J77Hu5Hy+yG3pksJuj1kz0FRzobup33Xb7d2
	 k4e0JnH8b9EM0dZIpaLzJQ75l0nCjVGf8gcte815mdxe4VaPJMkD0jDg6ZDbK82amR
	 7SpkGTHG+hTPJXu/UzzZm6KA/f0Fu+mUPJ3wSoBD/p7GPlvTq8i6x6zDZ7/IuLxXSR
	 dztJvL3Tc7Azg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99605C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174251339361.22389.3334088739918974016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d025a0252abaf70fc45ab8a09d9446684ea6ca6f1d2f3cec411f4d7d27c948eb
Date: Thu, 20 Mar 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742513393
