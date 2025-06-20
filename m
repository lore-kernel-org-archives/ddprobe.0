Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D163B219A70
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750398593; cv=none; b=Pj8g4jJIIwD/DBwygBUUBy+CRuhVbK1UHGxkrXHiaosh4GtfcxItrnScM1CUYcW30jv0cXinNZad8HIcD7JMulT+jpLzn+IsJQAuHEE6lnpPN56TvbhscBEcobV7PyGRNjWem7AThtIdXN7OVMZRAy4GkbDcmoQg2WGA9p3U8UU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750398593; c=relaxed/simple;
	bh=tmdmxu5jQ8Ia1ygjxLq26K3K9eyA6A/iM/JP6MXQy+0=;
	h=To:Subject:From:Message-Id:Date; b=ZJSmsrfvalpMeCAQQGc0weXZHPD0ZJeuBC6Zv5f/InlpxeGk1JU6GCXsGOy/ulPofbFBwHGOXP868zMc9GDuGjNKR8Dez6SxjJ+WOeRauQ7j5Ajz9CMZV1G4IBuN+5JBfqoOm14TXvHtpYB3yqApSggcoLAZqPOVfrI0dncvV3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sp1bu/ZN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sp1bu/ZN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8FCC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750398593;
	bh=tmdmxu5jQ8Ia1ygjxLq26K3K9eyA6A/iM/JP6MXQy+0=;
	h=To:Subject:From:Date:From;
	b=sp1bu/ZNybgO79UK/66IQOd5vUm//H1otWcsUFlDi80E7ccnERAAHkc76IsNH7K9J
	 +lPg2KS9s7vLbKIVenSzibine5jwuv1ml5e6i9LBGxyJiMUWeDyhf8BDYx22aLIqKi
	 7kckXOGj0yYI62F1wmGGc66l1baP0P6qQH/K4hTGg4tASH4kFKahS5fSaFo3m7LsXm
	 22Wc7fYSrt4Mwv3co/tqmK1sbJzf+QR40/ndta4Xb9TwGI8njP0ainvE7grxeEhv8V
	 cLEBhQugHrGO94O9FLnaUuxqljlgjMYq48IFeDjkOt9+n1hvKQeRjDOqtoNmqCN3KO
	 Wc/YJkvoJN9pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E828C7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175039859357.13110.1489099202736874032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab2d0e16ddad4f0186e62ee1ef55b50d55165b6819419b270f5065cdc6ce3714
Date: Fri, 20 Jun 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750398593
