Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F84A134B0
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 04:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717649843; cv=none; b=J0BaTgVvlvVLCUStYdZPKNNkt2ZVo+LTUhOF0ykGjoLxCkXsNs+j7UNAX8MEbevUBvLMeP3ac3XgI8OW/XhC+Zgg+haniKAJhXn6MmIGccnUkL4bjaJ/yBri8IzbFXwZa1bc9kFgQXwT1MHJcgVBdQKCneH+BJbXmAeR8ptWbfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717649843; c=relaxed/simple;
	bh=stmBOvrdI0zV7hQx/8YEQJ4t/asSH8aluIGuGkz3yGk=;
	h=To:Subject:From:Message-Id:Date; b=ar6yve8GwRRzAO7VyVBnSjThxYAKDovR4c2QcJ5mjfMTnnVpMQCvPDCt0LNyjCGfnkY8cMLWdKlfl1PV+cLIlC3b2aIaFmRV95KfRBfmwqkt72/JFJdhmgMJwWAfUe2g+MG+c6K9BOa3gsFUDwblaIbZGtXErtGk7a07jczyeGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N/GyhWyz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N/GyhWyz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D178CC3277B
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 04:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717649842;
	bh=stmBOvrdI0zV7hQx/8YEQJ4t/asSH8aluIGuGkz3yGk=;
	h=To:Subject:From:Date:From;
	b=N/GyhWyzJf7RDenG4i3vVZraV/PP947FU2gbpqhhOlDq8yQ0ohohb7+bA6F3KJEnk
	 ANlq1ZP6PzHWMJhP2bNb3Jl2GmJ1755ZPdrtHjZRFkdUzq/LvtrXZkAA6K0BsouJbx
	 BEQt9lYg1Qr1Xiau7t4/kOFcGf/D3TceIn+JKSfTQ89FgXJjslkfV67UnmJNTYXyXb
	 uH0R5aha/4ilvwVE4meT2wO1ZSj6D0hnzn6pvytxo4Q2Jysp5avCAB4qc8OxKPEUIy
	 36MTgl3nNdIx+t3MNgaMl8IrxoLLxE9kThe9cRXufKF6lA8SNcm473yMkODBYo4ENC
	 dSL67nSa7ItyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB583C25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 04:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171764984275.14906.5018900818320848302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3354ff7e7651926d076380cce9c0aadc9f79facb9db78d4278afb2d8dc02395c
Date: Thu, 06 Jun 2024 04:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717649842
