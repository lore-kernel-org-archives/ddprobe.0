Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64D5B1591FC
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 10:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719917723; cv=none; b=ibBUlPv5VbTFcOWolvhfl/32RorGT23S11ZKZ/BCjOu+f4iL3QI37MG9Cx0wuFA1NXZQuegOg7r6T7AqQK48X9o+J+LWlL5tuPS8eARQ9uihGJ81IO933VmsR/v/QzxnZuxD1r09q9ZdsRcL5qLfcViFUY8hW+89wIYsepLJleU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719917723; c=relaxed/simple;
	bh=qcvaEciKkOb1HkBWqrxah89ZlQ3O+Ndks0AI8zQtpIg=;
	h=To:Subject:From:Message-Id:Date; b=Y6rTu1l9FgSq5lKQwqEdbnAzsS31HT76ULmt/okq7WEouoiXJ1ynBKbzUs5aMBRofI9VgMnXJn2kaQI2FE0Kr+fsyllYzojZvskKqy5mdTYyNYl/TnS6w/N7DK0WhtLg0+fqhV7l4P7UNIXElgt0gLcVjsxLlzrNJAMDbOjP0zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=otIoJD29; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="otIoJD29"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E089BC2BD10
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 10:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719917722;
	bh=qcvaEciKkOb1HkBWqrxah89ZlQ3O+Ndks0AI8zQtpIg=;
	h=To:Subject:From:Date:From;
	b=otIoJD291Ttfsa4h0wsH8E7gQKD3LKvX0Wihx1d+lPluPx8PnfXubqkrt01xPBlHr
	 o3BU7TjyL1Rxom0zMKSy8ri7H7N/CJVw1vYdlIAmIquDFNyzx2VEY5b4SddMgtLRyB
	 6KGZFEw2IVxpogvuE0gyLZsuxXiAwzJUpW+23vRb8tZdC37piCLagOCF2OnwVfvibK
	 Km378oTBUehGfV56U61sCUBjFZej2G92T5pesU9CVey4338Y1vHfut4NqeBhhhgG3b
	 ykkKmFXDiWY2JPRfZyfhGvqK7myOttp6EoHcbZwxPYyMZ2vzasH/ewbNfJZIqhs27N
	 smOIZPpZrKJCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDE1BC3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 10:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171991772283.6697.9157797103118722993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4b59023ed2ba9535e1a89d3d568ed782bf0dcee91ea8c1cb3e0b1daad359c4b
Date: Tue, 02 Jul 2024 10:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719917722
