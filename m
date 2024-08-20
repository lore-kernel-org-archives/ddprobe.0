Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504ED18B462
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724147755; cv=none; b=ZcTSkD0KOeYL7XL5NQ58nHAQyf9VM8tdrBIMfS5t7J09Db4ge17zOpAgTN/6KjvOb9j+z/PBbqMJ0pm8YsCSfzdExNjxdORnx8PPgBt4b7QFFwLrgageLxEdm3uErDvlnSRM9mBBEgk7cM6AsTX2+eeXufvUOcrcLndxX6R3rDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724147755; c=relaxed/simple;
	bh=XJpvc7MFe7HFgJdYDtPUuRdDqY/qkFbJwQl7zH+Hoso=;
	h=To:Subject:From:Message-Id:Date; b=KSCqFWB2CK6jKubsokdJBf2s/vn0hzAWHFmVz5HrPkTYG2QyrbWSk4vlAJs/Rcx+OY/l7ol6/dkmKwko6U/W5U8o6OGrUGvX4uRojxWkRBTYTHjZfA0WnQVEU+29YasEv5VjpCBCcXfnVXSNT+s38EXBQLVq0Gtu3NZHjhhpRIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dyA4X5Dl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dyA4X5Dl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C08CEC4AF09
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724147753;
	bh=XJpvc7MFe7HFgJdYDtPUuRdDqY/qkFbJwQl7zH+Hoso=;
	h=To:Subject:From:Date:From;
	b=dyA4X5DlDJWYExd/auScdp9T7jJCRduv5nrFEG/yYB+3zry3FxmMzgdTQueHf0xjs
	 3+Se3jBKGZPJZdIuBtHyeP+SFOrTzTgH0YLFNmMnV30VulTldmCCC50eaam1lS2cWf
	 k4BbVXVl9vSKkaoejSC3jJMGztF/P4PlZ8sIeaK/13s3sZrQC5zf9HFzxrDwSBM1La
	 gxOMBnK5jIdWQQhp1mL4dxew5Ic44Rf2x5Y9DXomjfK7MvZZIAjx9LsUhCU/k0Uq25
	 YM0rd4UdjnfecjEG6V5hOOJQGAit+aXLnWubNp6REkmtgCvgXDJuED1/gevGmcplQR
	 ENTIcAIcQYRIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE04CC531DF
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172414775370.31355.1174374430082528330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 132dd1fbe9d74adca3d8836c058a17443a5b57cd9a6903a26391c1021ca9e2af
Date: Tue, 20 Aug 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724147753
