Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED944A05
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 17:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741799335; cv=none; b=hss6laEM4zNzSw+jYqLXDOGqCiB0QEul2GJwBAhxSbF6itYbrme4/vfpKwxzhL9qfQ6c0fvGHnF7mtqXsAG3mPimH6legG0bIcvUDXiqXTZI9+TYfcTJvJt1r9iEv4ZuXLRzW2uiQLahHPZ86ixrDXuzCzWjiiBMDPPpvF7NWBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741799335; c=relaxed/simple;
	bh=y57+3GRbz05+MUswEv5eGiMDAfT852QwBtO4M9OylqY=;
	h=To:Subject:From:Message-Id:Date; b=GGjejdayGgJd5T0S9sPhPKAE1+/f61kyHwbsmmHm4KKfPLMDq4JJ0IObUpVnyvlDA0N1muTE9moUqaKYqVsaH1pyObr8J5NgRFnXW9GI8iwbD4am3hHa9A9Ax0czCSLsAiVVP06CYNL2Nxs0vqIxHR8or5FseSX+LI4hRPkkrL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AVCUKe+C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AVCUKe+C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD67C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 17:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741799333;
	bh=y57+3GRbz05+MUswEv5eGiMDAfT852QwBtO4M9OylqY=;
	h=To:Subject:From:Date:From;
	b=AVCUKe+CFtIYV3qCY22er/t1Uy1IxzcPAK8Y1FWNlbn5TfZUeTH5eB2zhdZh4NzXR
	 89Tq6xyP4kx51nn1FqdY1M6rhfk4taAwAx18GtRLceprRyGfKQY8epRod19xXiy8es
	 C4cs4PHI1cRJRZPy4D1EO9i3o5zQYL38KI8nOuMcH079fuePGAm+S8OXxsDICCHOKC
	 EWNOUht2qlo3vthGPL5tFUjXpIRk6XHl7DwGdzbO/O+XE6g/DbmFWwN8c2OWIPIMTt
	 KyLtxcDxavcRg+KoGY+C9bpTtyubGzIBPsgV93TKJSSzO6dUzK3cKs8SPNT2qiMi3Q
	 7oraeRu4gRi9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95178C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 17:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174179933360.16777.12998877744562523437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61b421d266da4b38cc1cf5f86d6e041284a0dfe49148fbfc9d5ed6bcd054bac3
Date: Wed, 12 Mar 2025 17:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741799333
