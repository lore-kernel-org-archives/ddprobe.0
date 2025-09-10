Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DDE31DDDD
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757480995; cv=none; b=ZPegi0l6GrJylYy4xLscFSDxlxQjC2gc6zgVtD6XwlLrKuQQDJE8SJF5N58Yfam6wg4DBUZVMRot2bS0/P0X6G8e8U10SgbdwFTo20zT1MPFzXXHfE4yKn8ItJm5hCTPE828Fc+GAcM8irmOOzfsCrJf+ha5COg0qyPGLuKT82M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757480995; c=relaxed/simple;
	bh=GvrSC+THMJcuqfYJnYWtqMwUfVMvDiVvKtlXKKIC7ZY=;
	h=To:Subject:From:Message-Id:Date; b=dirU5BCRhYz8BHCb6Sc0Gyj3PYgkM7Tn9QZ1K3b9AcdUWcqBxIL6W3Qx2r/HfCsnAlipRqurw16dSa0t909YgPoMw0x84ZQUuXOgoAEwHSBbx2Hmv8ne6PS9FVNUShOwgvAYpxY07HoNKr/cVLRMQDDNpL9BA/nnEJv60XgfnYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pIRbUR5J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIRbUR5J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDA4C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757480993;
	bh=GvrSC+THMJcuqfYJnYWtqMwUfVMvDiVvKtlXKKIC7ZY=;
	h=To:Subject:From:Date:From;
	b=pIRbUR5J82R/LslOO7hlOTseyLxCvGeC0/YpY6d7aFSfC57rup6z9Om77u3EMYgsg
	 zxgGxzQ3HJYNdUKHUWejY+Bb3bj+j48U+gotzBJmY5ZiJTBCE5OidDelrrulhheCZG
	 32iF9Fo0SOybs0q/wJvxiZ50Qq/yj4ibV3SrEGaBC6dN6VQGSOY9F2EIDa2GrVrxZK
	 s3TScKDWxAebvcqdS74P7t1msmSDgVWPym1EkqZOzb5pPSep20BXCKPhIy0Wk0rjkL
	 Xt6Sam8vkU1DKX+eM1TdY4KUl3JVC69Fjy87bDUDXePwSVnE8SyL33jFo1OX3legwi
	 hNpiugOSMAgAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F33BCA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175748099357.5241.8303663349766130208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab6f8f0ceff7f15612df1b18812fd381b7d6aabc53b270681862706441b0279a
Date: Wed, 10 Sep 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757480993
