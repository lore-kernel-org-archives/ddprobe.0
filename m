Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FA87378D8C
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787063434; cv=none; b=mxJY4M2C8frwLYEqniBrgm8MNfCA0DxoqfjJjBLeIsuMstvQU+LayxUnsEtQCirBMjaJj9NIAQNoboSV7+8Yk91OWJ+YV75JP9Z1lNhh+DszuEsgsSK1U6lfBzth+KbMB5oY78w6qo3DzAKkVdRA4KU7kzWi6AQcEFVtPEMo84M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787063434; c=relaxed/simple;
	bh=BAQ5PYj+OeWpbScZYd/BWPymrPfgom7jBhlSq0XR2mA=;
	h=To:Subject:From:Message-Id:Date; b=Fqb/vg4UB43qQIMjv+gjR27IgvD0Hd0DPM+jSa5y/T0PKgljqpVCl0kluzjEVbCiC+tluVTybh5xZEXIoH9Fv7X+dXPmTCoMNMl9sGPu3VwhQhonwye0+mZOCFiwSat35OcmxzT1WRtjZFk3z8YtdGI453VYf+/37gxaH+CpDFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WmannZqK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WmannZqK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D87D8C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787063433;
	bh=BAQ5PYj+OeWpbScZYd/BWPymrPfgom7jBhlSq0XR2mA=;
	h=To:Subject:From:Date:From;
	b=WmannZqKfS+kPwi0gRsoejT70SpfeYFuLFGLW04kKP+d4WiLWIHqm4Sx48131sxjW
	 z4Plwan+qM+OaIyGKCfQutKYS+hCKoJ322kUeeFdUrPTP4+HE+wSI5xGmyzksUd75E
	 9qnGCe5ZQtWrGSKTfjpnBpxtMDdcJqLwXvEPR+S0h/36AJYZulQk+aWdpF+rwWOKhH
	 1qyjsaXfE5zBKHORT7qVSxp0pWWMIN1R+PUNVmi4lDK60+sa0Mo4GHUFKq0nzXYyXo
	 iWtyFz4edf17Q5JBO3Y4JdADb4fNoENskNzscJTD+NA75r31+jASlP27G3mrASdvxK
	 r1Ii6gyeOylNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4A19C5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178706343371.28901.7899299485926948061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85c151bd7320e04b133fc8e5912790dfa7081ca8572783ca118c7dcd9511fa55
Date: Tue, 18 Aug 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787063433
