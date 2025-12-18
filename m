Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C707320CAE
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766039034; cv=none; b=NKs4ozPixV+n/zoapP/kc2rLK9w7ia8ismWLhL556qrJERaxa9/vcYX4Tt/NsJD8FLsL2R2iiHrSajD02SZ8AQrNe1F5xNq2aENUQCIdtZgxd7k9SXeQOGo7nuhInbIJX2mF3oWtUvWATPfIpwYJMyW9TC/RHq+W2SsXQ7e3VF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766039034; c=relaxed/simple;
	bh=UEdWAso8PYd7Pk/WBfQS7kxyGniPXmU4B4QnYyQWKh0=;
	h=To:Subject:From:Message-Id:Date; b=raCBBfJw71a3hF8Pi4TJ9VwL0ym5RvBS6Bthj/+QTbGHOxjvCVulNhdGaqCdE57L1utHqjumaEa7exk4dx2jkv22Q8OU0lukbWwIDFkb3sMWVJzeKoCtqhyKcL5996hNkgnFIapcq1MDnhagVYp7m7hhZ7Z9jDq4u6OhjAGQgWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WiltZ7s2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WiltZ7s2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0111C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766039033;
	bh=UEdWAso8PYd7Pk/WBfQS7kxyGniPXmU4B4QnYyQWKh0=;
	h=To:Subject:From:Date:From;
	b=WiltZ7s2OWkjRWOJSQRJE33/BcSQuo20smDTNhWQ+TDx4Sta6lvDUJLq5gMN0UvOS
	 z98unDuvHDuTXCD43AzlrC4AezjTo/2KnhVs/WBYx/9Hm+9ud3aLESGC9kuug3m+N6
	 7rR1K1GvvXUO3UtikBxxkRGH/aZ7RzhuW3WRRpCDuvA4yj0mhc0GMjEtUt79v88QHO
	 DNFjkpADzGpcdD2qCcfJb+HNX+rj0f/nGdPRnJhQrdx9ADvAydyOo1WeTKL7Q5q/Ks
	 /isoLJ7W5HhIxUaQQ62CA4aOxZUR+IGPGt6xpkNezFDpD39taslT6CEDkcuQP2/opI
	 JlQSBGaWz/ERw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911E1D68BDD
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176603903358.3042.5120340701227820546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10e5e05d1d74548f216e0739ceedc46ef31c70e1a0b2034cf1ab60166444239f
Date: Thu, 18 Dec 2025 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766039033
