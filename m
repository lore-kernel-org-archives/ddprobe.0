Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306E01E8353
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 18:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741889334; cv=none; b=SMyNGDIRxlMn/aE8shOp5956yZqXB6+gLm1CDFAGGXo5ZyZ1axHMlayAFSublmW2ZYbrmt7DFrD+hdbyhYNT8Ar5ek2BXDvOP8uIMDKYWGzGfFm+RBo7lOPSMpIR83wdfVaxOtfbds6QHHwowhzJLiTtDveuBt9to8YK5DDtv7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741889334; c=relaxed/simple;
	bh=iSKD4BswTV0XDmub9TRmZKxU9Vm2U9BbVd2cmUZw3xg=;
	h=To:Subject:From:Message-Id:Date; b=HdZ26RDM2hCesqY1tiWtWokswIhVD3wGWySVmu56ErJp4j4braIH7tddkj0bu/k7E85rNhfpavvn6sEd9J++ucfnQW2wfB4DbTGH9o3muDv244oSGeEQLrUF3+X4rodh7tmjmv/LT5ujlsBmLNKuvIyXWyyR9NpbHh9alQNvQ78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jBwrTFqf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jBwrTFqf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38FAC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 18:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741889333;
	bh=iSKD4BswTV0XDmub9TRmZKxU9Vm2U9BbVd2cmUZw3xg=;
	h=To:Subject:From:Date:From;
	b=jBwrTFqfBfv4NtpX+bzPO/pYh1rSQtSS9HHwWylFYRhkSynG1Dlxd3e7FMCELYiyG
	 sbLKqroLTQ2c+IN1AMkNaA+Op0x7HWeIkC2sc8033r6W9VehX+T+6q0Ab9GIktPCiV
	 c08m+Y7BUJbuDl3OYe+bCt65viKIfqY3T1KX0bqS9QpzvU37mA/gIFecVnrVsLYT+9
	 egDt8JPfhke4l46LOOZnL8HpIv/Fiu3woX7tqErkUJrhKX5JlL6bJqqokp40xUGfF+
	 JVn/oEJsudR6ItH7gq450AD30R8aGvv7dyu3x0K1qRvN+rAOYhDDtVWp6cDBMJrviw
	 1Q4G1pFNZrcjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913C8C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 18:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174188933358.4816.1272830600941538061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 395128ca0dd03de6d72f5aea59999a485a30d9c4b68a8620bf93a23109d2db7d
Date: Thu, 13 Mar 2025 18:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741889333
