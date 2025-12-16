Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182BD369966
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765889634; cv=none; b=i5omfkIjCyZRSIqmSGkOZHicKrPc7X35Vm2rLkHT2eZnBn96Wbl+MOeyGnySb5nbqRJ8n7vJN6vzY58KWe9+mrlALDCRoqXslLBnwpDjFz7jmJBpR2yRh2HomAAFt8YPV0WaOSOi0yRqDIwbeCuVRI0E+cAqVcTRljZtlNAYSLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765889634; c=relaxed/simple;
	bh=6urEQMGYAWQhsICO6fk2xoFK7ZG+8+O8vecvQOixeAU=;
	h=To:Subject:From:Message-Id:Date; b=mynn8LK8LLpy2AVgN8uI0UypLUYOx8mI6qvmB3FcrcXKGYotLtSnkjlFBvn8pN7lIbOwYojwuNc8+ObwvoSAlskqM3woj/9kL//CTXnsT2Xcp6cJFPg7jI/rCDIglocL0g0I1e+RG7P+KL16aXI8fXzKgA+SqdMVARbk5RosnKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MUiSFNR8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MUiSFNR8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB70C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765889633;
	bh=6urEQMGYAWQhsICO6fk2xoFK7ZG+8+O8vecvQOixeAU=;
	h=To:Subject:From:Date:From;
	b=MUiSFNR8Mk7gWOx4Rz8pGLkONobWtjxiSgdfhXMhgH9+s6qT8FxdfkI/Zx5rFFn8W
	 GIx0icdoZ6pZWsldOMD9bbeViU1k+nWFuc+dmf/o/y1yr4jVcqtRh5bo9pwddMbZzT
	 DpejNeOkUwjQSBrQccy1dHcK+0aoUuJJaCHc5US4/O9CitgtNrX8ejFRF3GHWIMxCh
	 EGQFlPYxi3DX1UO9hJfjc1qJLz/rehaEBRmYaK8oKeTXdXKNgoRtyISel5OdL2oBu9
	 Lha78kctiu01iBbH/Bmdvx+Itit5Nd2nuBAkOv3YsgArOSzSkOaHMsWtXPjGFRCoa6
	 2gYs3ZCItfO/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911A6D5E146
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176588963358.6882.13466990500789739894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bae90b38d9d6fcba5fe677702663aa58cfd9067be36e4d37cf68f1ee98daa42
Date: Tue, 16 Dec 2025 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765889633
