Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BC1C33C195
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785772234; cv=none; b=SBmVErFvfQP1VehBE0Tn9J3J9M4oilLq+RZ7urAHvARJBgeoeEi8JW7RFHEXia5UFTK5Z0+bma0zJGhUWY6sqCyuIdFU68UObXofXqnSc+V4bLhm9TQQjmNIjbkjw5aHU82Gkwg4cefZGETJxthAs/oGc9+7u3NnEtn0rFgVYQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785772234; c=relaxed/simple;
	bh=yHFHBFCVbDqm+IXhfnpdiXUsJpVPTOTF8bCZd9f3SHw=;
	h=To:Subject:From:Message-Id:Date; b=HsBLmpsGt+ekvG62KtPotv/H3V/rAJJSNZZIwOejPNasj5NSrzO7QTZMOIGc17qcEYzmyE9q0S3EltpReuZ8q3nIzJfmW1o0F5er55AbtWdfFLgpXmEIRPe+fSaC4j7XZZPvNBcVHyJyB4KJ3MS7WW3VTPcigySefVK9d4IWd/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o++k0zKM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o++k0zKM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF94C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785772233;
	bh=yHFHBFCVbDqm+IXhfnpdiXUsJpVPTOTF8bCZd9f3SHw=;
	h=To:Subject:From:Date:From;
	b=o++k0zKMR85jy+voR+hj4+uzTTx3zm5Y6X4bQuG2hmONw+m3lCpZl4CnP3Fuib/4t
	 sCaG5ckALbyMbl6oEdmzUOrkAQgwIjav+fhU+aB3D0uiSsRXg+XxZouD9wbRijwqBR
	 ebRwZPAr05L9iDsoRwLEuV4DKzQkPhW6iQwiV7D+WvcVQbIWEvx9qUP5EGJF4m6gtn
	 QZhB98gtyqvKnebxc+nnEAp7/YIhe1M4+umW1XPmfqOE+WdgngEZQMl5NSUr4ACYCh
	 zbKN37seFeNDBb1XfMoc+OkDVIk8W6H45ikS2gcXkyYmZ6GYYq76F1jx6WUq4zHENe
	 kFgFw2Hgo5oYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA33AC55184
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178577223368.30264.4748288437288638871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78a395f82ba429f5d96acb9127390260ca6287dc00fbc96ee25787be52ef71a7
Date: Mon, 03 Aug 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785772233
