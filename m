Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FA8271A71
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 14:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782051994; cv=none; b=TtKLxNo4A9yjeHGuhU+rJ8Et6nqf8cvawX57CCTlBxpYKu/PHI5PgwKbn37QxZn33XfzdyBTni9rJAYATBQm6zcWq2UBqzka8LeRkeCPN3pfbNXKxvCb3+zfJyLvb1VyE2UyeJ0MM7h8ZAFn8IR+9ur6gsgykluEDoWov8v5TGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782051994; c=relaxed/simple;
	bh=E9ELt2jZFhNyOwn7R4K+TjKeHnWasMByK901zfpCnrU=;
	h=To:Subject:From:Message-Id:Date; b=lEjgtMN1ZOFN0xq0Cfj14Yi5Z9GGZ7JCwqfiBQDfWliZ0kJpdjKsXznbv+IY3e1VFBt3Y771h87LhCqVPLEajVzIuMYfxhDSgl7xFA9q5955iBSrsE75d1AZYb4j2Twy4I/nK+UhQ9jRs706keUnDI1E6oj/dK3uWMUudplwI8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qaUCQyvz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qaUCQyvz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E51C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 14:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782051993;
	bh=E9ELt2jZFhNyOwn7R4K+TjKeHnWasMByK901zfpCnrU=;
	h=To:Subject:From:Date:From;
	b=qaUCQyvzdR4CIcOSkx3BhMxG7ko3dm3DSMwHwHqdIdKjmkXVmKfr3rpM/u1XNE+Nz
	 oq+soTpaJJKtw3PzYlXscmb7M0UDwsace2vpcREZRkqUFSskT6rWvxxAeE7KBpp4QM
	 LZTyxjIdx6XNoaBBg3m2tbQqoebq/IwvSUXdkkkxgvk+mF5+H6RVjjlqK1hjTCuGmP
	 itNv6KMaFjIu6hT5Wp07YUL6ZzXRNm6shWe+O/FFD0m/QCWauq8uiRd5AvIZcsCnJb
	 EpzP49H5b1Db55YbOzEzZizGOBAUKP8NJDm6AFs+IyKqnMiUtaRkSaE3/UOfhy+a0R
	 2jLACQjB6sJ2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB7FCD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 14:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178205199369.1847.7799985721586889812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9d51739adb96c809fc064d57f4489758d463c98f3b598edcf6687cf0742bd84
Date: Sun, 21 Jun 2026 14:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782051993
