Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C6AF35A93C
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 09:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781948794; cv=none; b=oS5sRPQ1OLsgeFT5blaoZdw0UgUztWsrxbLj+bMO7grQ2V8Ncg+7HnYMoFgFtcpk18GeVqpwcUkG/8hZLfW0W+aagEXdXHVoI/BIJLSfPea0q839/TTb/JSi7R8cvgjYRndo+evkcQiyH5dHJeRCJ7Eexum4Wja3Jv0mTz/duIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781948794; c=relaxed/simple;
	bh=yDudixA3ZmTDGaXmpCjvj25jVUEHvugb/C1no74+KM8=;
	h=To:Subject:From:Message-Id:Date; b=YqRTgLrTyt1vXpEkWVYJbnymK6rB5Woq/x/qJ9JaxUmGuDp5nNnT+gD/UWBwHpB6KQyETomjvVpKvBpMqERQ7Cs845EsabITKZVf299bFCbfAjY3lPrB1P7J+67uq1LMhbGJT2qZ0R8KmVfJXio3NmcAPoHBwBx7lb7UTlP7gWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T1kaV7Tj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T1kaV7Tj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 13131C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 09:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781948794;
	bh=yDudixA3ZmTDGaXmpCjvj25jVUEHvugb/C1no74+KM8=;
	h=To:Subject:From:Date:From;
	b=T1kaV7Tj+RE4/MZCOlvVEqXFuFwilCvgxSTI4if3Xmh6qEQ65vqHCOdi3e2TXAFkm
	 VqG3hKwhbOPZWq8nqnHBcnySUdwJ02MWAya1bHsThhD046jK1iVHXuvkWOLIUclgMU
	 azvwpE8Iqpu4hn+Bk4F3VjwvO30sJ5oHrL819MLeQdw03+6K3KpOCfrydTeYoRq9gh
	 uzf23+Aq1kLDRHidGF/mDju9laCMOvPzwqpqpAgTntpSfi10nnytAwCLijpc1jDxuI
	 SibxjIQUQlz3PFySvnAhZemcLEfQjHdD9eS4xlv+znHACNBhKswcT//KCey/BWepAi
	 5rqfcfWVAyNTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF588CD98F2
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 09:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178194879381.18913.3633853770598679445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a6ea3921a4dccaf4bfad310f43ef5668e0fefbb4cd736f7685d12c2511cc977
Date: Sat, 20 Jun 2026 09:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781948793
