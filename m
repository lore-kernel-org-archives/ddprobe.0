Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99FAE42A79F
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 06:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784617114; cv=none; b=d2WcGBPtGUVFC4/Gn3d1rJ81UQ2wXB84DHFY+J72not4+nscaodZQdnlVXlEZNwAC5Q6cmPHvn21EPoSDFFy3tgQCq/RfIyqcRu/OFXAibtirx3WVPf05Vb8wUtgLjLP3qnd7Lv63HMizNKUfBzqCZylflUFrKQhr9sVUiVfSZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784617114; c=relaxed/simple;
	bh=j5PGKeGfxlUB2z/5/til+HLzTqm+uKfHe8+zLoK0abY=;
	h=To:Subject:From:Message-Id:Date; b=QtNqktCpDOo5jWWzvrg6pWt4DNCWx2ryVsatlZfanmCHfoagmM+zxvmz3YijtMw6x3pMdzm/FT/k+kVIWNYrtD69OuIoLBwwUbgiu6E5/atBjNnYf0LX0+BHCHkF+vgiuDFk5QAFOF9Fqxslc7j0rjT1V8E2ddG89lrjsEwymlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=irT0ujGo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="irT0ujGo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 22CA3C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 06:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784617114;
	bh=j5PGKeGfxlUB2z/5/til+HLzTqm+uKfHe8+zLoK0abY=;
	h=To:Subject:From:Date:From;
	b=irT0ujGoruxs0iXYihKRJxCKHptsj+7lpmwW7rAo8+MK/6lAduQVeRD2YV04sjqm1
	 TiCcyRPmADWsBK4oiGwm3QxLhZu37hV7jMYCP2V+e2+JBdqScMEe2Wjv2bpIRYFG15
	 2zKqwOw8K7Xqs8J2uklkYesKlOLQ4han6m9Mic68+vh0gWbNhNCx7R2260KIiy47m8
	 ATzmnjZtNGsV4PcFIturr5CT6q+res3bJIIC1QRs7xDsZ7DiVY2FRYw8Zme2ecv/87
	 qxidqkPEyY/oDPmXkoY8rBhoTPowQFF2C3Jbb2gn5qTAajW2dEd+RcaTTuSG5doZe+
	 ZNq2LJXGrb0FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5835C44529
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 06:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178461711386.32348.6908902431623663815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4974456b66195f8683b4f93f22e74749dac222e48ec69be9d0303ea63dc367b
Date: Tue, 21 Jul 2026 06:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784617113
