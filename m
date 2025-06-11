Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3556A25BEFE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749653394; cv=none; b=iLzmjEokXLNuWWXK2TGXFJSyNkeN/jtGJbzO8BBvyLKTQ1OFDUjCLogg/A8Wv0BzSjczOLeEEbEqEdmryItgxyL+rt7OWmMTSTfM0szPBeXSOoXne0OAiqp2QsGeBAkP9whqDwQTAfLfb/HUat/T9fwGLzvZtw18JWg9w95bSHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749653394; c=relaxed/simple;
	bh=VQcoqmUkrFPUosdz6V0FXpJ87a3EmFkaHKbYF7Un9OA=;
	h=To:Subject:From:Message-Id:Date; b=vGFvUTHZqXWGwASA8qK3yeUrjPm3icgz08cS0GWmVVOWDv+qEpClJ6jiVKlS8Hq/+7DfHaC2gfsbg/QZuSUGbOa4XHU/tpat2cMCsRgiHiNBpM2iJ6eysqgHfHa7BGa5Qp+OCGZMD66Z4HzsD9hBR9WgoFwcZ92pW63LVYs3T3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KxoGOUC1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KxoGOUC1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E58C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749653393;
	bh=VQcoqmUkrFPUosdz6V0FXpJ87a3EmFkaHKbYF7Un9OA=;
	h=To:Subject:From:Date:From;
	b=KxoGOUC1sT/j5WdD/CUQD8SNijmD4gQwYVQRT42LzWH+qYdKPWaZN9q/CNsvOqWEh
	 T4+u5ltV6sPczpR58P9dEd7Xw5+QIUQlEU+EFZGh0No3D+mwWCOTGytm7SiNU42XSA
	 Bj9rKqv9RLXDbMOshZdLpAELHYJ/i9IL4jU4U0tzllbgv+5fBsmjgaAbigxluWD057
	 /JIoY0MirJ8HqYoCXSyrKORwNIHrWDE0rKpP4P18uZlup2nN6P7lcRSfHBEGjZhJPv
	 p3D7Yiwe7NCUR1fjnKhmpP9jvv+vJo8vWfNsI2uV+ookli25hdyWyHurcpuTWe/ZlV
	 Z6QGiAxWY2WUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E0DC677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174965339358.10834.987324202427177513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d6b60b3456c2dfd99694e5288a1fc86693b23f6bcc55de55fb377d77b764d09
Date: Wed, 11 Jun 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749653393
