Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8B6286415
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761851994; cv=none; b=tki6Lzd1vY/yThgwDYwsoGxanen3cUEQpw7Rll8vIFFBSEFL5nfhwq4GUR3v/6ICbVO/Bzh9GE4N6V7jl3RNwfizC0a0/FeKqeMhuyRd73ruuen9thlXNKcyUtJo6L7dCmfCmVlizHBYPHdEBRIyQeseTDqdTDrLBlF3QPiklj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761851994; c=relaxed/simple;
	bh=UXGB6dKF++yvB8mW5zX+8hAOJTZ9PMNmnV+17q58//g=;
	h=To:Subject:From:Message-Id:Date; b=RWyMF6n3FJE/gXeNSn3aeYaqz6GF0nzHsWS/Dr/M8xR5Ei8PyASrNXkD1IKOzeZehLn/6AB+L/f7MuSQlnHyT259MB2Leu741jIsVvXtjenW4GBDTg4qIFybjHeTHpXgrnV3X/3qx04A88qKOiGdpXQw5CFbdGswaPDdMyR+6/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QaxzRvfy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QaxzRvfy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A0E4C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761851993;
	bh=UXGB6dKF++yvB8mW5zX+8hAOJTZ9PMNmnV+17q58//g=;
	h=To:Subject:From:Date:From;
	b=QaxzRvfyDlzZNCR0e6C56Zw1dsNjw+ukMK4XEvAk0Oyp6WowrqmmWbTOlNwtuDHu6
	 8y9NZQNMK2+mqpqOOXfa4Bmck016/nuFCok5ouW0sBAu36AMsK47SJlk7XmMvb/f9L
	 goWt08hIEI9YL9Kg98UxPXPi1yKCbF/AA8PKEH2ekEJoxP7uXLPHqNJ6g+mLScBuAH
	 Y1TIK8azuKYY59M20Nm7Sy3oT2WudWiX6D8x9vqoPRpkh+achtFRvff2pmdDlifTVp
	 VCA83GXLW0zK53IrKXGUuUsjrtxB8XY/DYaAWxvsNxglWXSrjLNzZswJ2vYH0VZyb0
	 Jlbs4p7MFQGMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9261FCCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176185199359.7483.15078224696782593212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 991a8cc7d0aec8029dc01c417c4a74e363e593b24d6acca7b37e4d04868b1576
Date: Thu, 30 Oct 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761851993
