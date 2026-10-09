Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F8D48C403
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791557434; cv=none; b=fJh0Mhx5GxL47vvpHjLKOtKWlZzcaoDAawbeYC1A3yZFdrVYuwoqbHyFEm/2OdSjAWOCYGndtRTM42RSVNMPQltdsZj0DUk09gYCUSIbXR5YPD9ejYhV75EUdK+WQV0cG+0YkLCZfXecuxmid3JIFblNZ6ts7raxrRx1V89C3KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791557434; c=relaxed/simple;
	bh=K8bg7nYosF6I50iJq5dmZzmooBgcJmU3NnCRy1cNCZc=;
	h=To:Subject:From:Message-Id:Date; b=HMyncZndAAPAlx9ZXVNVCOxJtQiKcOB+hcPAIO0pA+e8Owvr9KWGCrWmgOcJekc7j5PIEOy0rhqAtVTz6HTOlsQGTUQ474gz7ozNRxHFnIIEozSocos2TE3KfQ1JJ8fR9TtNMdsKKwOPVHay7oQw0PnaOp+zNbP7eJfYaorkrlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IGWEVaXQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGWEVaXQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2419C2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791557433;
	bh=K8bg7nYosF6I50iJq5dmZzmooBgcJmU3NnCRy1cNCZc=;
	h=To:Subject:From:Date:From;
	b=IGWEVaXQI/5YdsJ4jcq54qDnlqVdIAdbk1bhm1lWTDK9xY33n615TOUyN7RHoGNLQ
	 KLqdLcUJPmDg5xugwGXU+pUcMdrR9NHRc6cTk7kDqIB8SkEhsGSSXgJbq76FWE+06/
	 dIraAExBgWLOCHPUc5EZ+XeV2XWIKz2+ZUIRsnWFVfoY5rVde4P6v/gRin2RMAC+Ey
	 762a8Sg3XNPWngFeuZFgkTm+QgC2g0Vowr6KjmTnLTyY49yciOrYX4XSfWQ+UNdwC3
	 +KUjtlMOeWXirAlm2hg8b6+chd32fVHwSW+bLK3lpILcBIjexhfqSwN1Rl8CGeTtsO
	 1S8ckVw4AF+pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA345CA601D
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179155743368.24656.8461988652411576750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1e2e41bda3e258ed5cb8dd42bde828d23cadc0b724369186c51f6275fa46564
Date: Fri, 09 Oct 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791557433
