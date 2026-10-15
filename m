Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FFC360EC5
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792104634; cv=none; b=tNtcWo5LPTL5gvAkzq0jNQC052JOfT+vVX3kZpZ7arOmMvphzKcURYsFpaaKumV7rtdG1mFL6MpOqurPcv3Lg3GuWXZQvzyXbwQfmwCGo8kthDZYlB94FCvzu5ZFXksVGPN3pdfcdjqHeQhQViLdRLtl/Az7nMr/5++gfSkJKVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792104634; c=relaxed/simple;
	bh=y+TydKBYP8l6foH4qTPyO+HW3gaCSoPHyDt6tGS5nO0=;
	h=To:Subject:From:Message-Id:Date; b=kpF2u5BoXZ1AH281owHiNsJxQPUW0vx8BIh/1tYopRH1jJp/HXZpThj1DvmGr2lUiHCGM715Ktqg8itG9zkLShLBhGVbLxLm3Lk93CQTphHuf53BWBIYqTzinYvNUahL3LzO347EoVhRJILefKnhhRVoSPYt/Dq6cQSxDa/xaU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eiZFzXw/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eiZFzXw/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC0E7C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792104633;
	bh=y+TydKBYP8l6foH4qTPyO+HW3gaCSoPHyDt6tGS5nO0=;
	h=To:Subject:From:Date:From;
	b=eiZFzXw/YVXKNCdV3bes7/hGgIYOX22eQHlnO0HSU76UKJEm3mC80JcRTIP3fQNkb
	 fFJ5LZZKwS7XIt5RNJrqeYj8v7jltr53BGxEwL2e+63UTRRs8B8L2O3HLZnQGEA+3G
	 wE5WQUxbQyqJv03q/GlT0Cq3qy+qpdsP9u1h+xurNQDI/en/vTzzqm3BMIBAOMWc1J
	 hYRGVHIGMNY3Dx3F8gZKe+jiqXrmtwA5rOqUySAV3tAD/eMd7CR2cCUpnzHnJu0FbA
	 +uAHhfLz7IaUWMEjK7WocBm1xzP5A+MbXQnIDdFqoUvUlPCXIUfqhaX5y8j3BMlZXC
	 X6GJWWczjky2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A981CCC6B38
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179210463368.24186.6820152379495128372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1347a48271338890ef008cd37d1c7f4f4cb3c2309908183ec06d4a4702f1213a
Date: Thu, 15 Oct 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792104633
