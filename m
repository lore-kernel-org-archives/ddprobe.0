Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1DD1DFD8
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737288954; cv=none; b=MjsM4E6m9csfuMrZFAJkFDyBNPZiDVI3dP0mygsfjs8YUhltmqX5XVUO+O4wphRU/KQW9c+xT7bIokfFTFxRyP59x0gNvG7eOqNMeAokgk69sPVeP0BmbDFJvpeSyr6gRGtkQbraWevYEBXYlfZjHTENn22s6+X5QyNY4TvUrUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737288954; c=relaxed/simple;
	bh=v69tAhyx7HL6e+iM9XLQ5IaSbopNpdfLWGzpxbSSBpA=;
	h=To:Subject:From:Message-Id:Date; b=t99IBRM9sGsjhVQ5nakCTpmIQtSyYgC/dy6ceIBf+u3OHntZXCU5B3VLmrmchGz81QYIr/vLogoXD+THsbQBEanWRkygo3eKP/A0O2QmRWx+pa19NXhQUVN8DdxpY6b1nfxt8tinw4Fj62F5qCIZbF0sfAIc7r/baE/n4t5FE1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MYEaNj7Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MYEaNj7Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63F9C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737288953;
	bh=v69tAhyx7HL6e+iM9XLQ5IaSbopNpdfLWGzpxbSSBpA=;
	h=To:Subject:From:Date:From;
	b=MYEaNj7ZiNpfYbubi1lg+c7ev+qEjh6n7oG1zSuK2A6DbicWwFL0pV0jH+kszuq0v
	 qiWPcmo0KswUuMBDB1HdCMyOq/rbB3p5aU4mYpJ1/X81GTjGn2C7umYdNXLPK9/2aO
	 mX3lT6RfbP7M6fj2CP5d8eCW5I3aAP5/5Aa/6hgwWjdhZxE+NA7Eeh0mmytI42hfOP
	 /riHY43dvhdVSm8vEr4maMatou4fPcdBvtdlsD3PLuxlns4lrGngO07lB0JEoh9kxx
	 yjeQvA4GzqusIObAbs+63eCI96A8kjJPZpCUsV7J5sIS4osKqEo5rOh5cvK8W42tqZ
	 Uyh6Y5CD36SeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92810C02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173728895359.27428.3483508517863959410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c3b515a981db987792663807873564e98324a6bb2046e405f8415759bf54912
Date: Sun, 19 Jan 2025 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737288953
