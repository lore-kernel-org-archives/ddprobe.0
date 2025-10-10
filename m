Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B97C1BFE00
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760084994; cv=none; b=uebPGtcUW/V9g27kMWBRjC2R+/8zVRbxFVD7gQNBxvRYb4AZ0Gyiu99KV0aBak96EMqrZDYqoR8VE4B0nExDa/Vr0c9ZFwVA5HeJ2uKKVa6MgnKH9dStWgO/xuPXOp4TJA8uiFnHk/GMxjK2UjW8iaNH5Zf9zMYHeMWvBv3LHMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760084994; c=relaxed/simple;
	bh=cym7XuFjriQfho+PeElSlCVNc+b7rIj2R2A+3NLtTEg=;
	h=To:Subject:From:Message-Id:Date; b=loc6iiwL8McigIWWTpWzQeW1ucIyrjcASeuya0audLbWBici6ormGwdleK5knMqqhoVYMKwxIRSGb0I5GqtoJlMMXUyHp/tDPzBOizgME/KNef56e83gRbsllMtVLcOvMhLdBdMpU1JDkwDPDHgwqOvau30SdptEROdZxFBfrAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=phJddqwo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="phJddqwo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A419FC4CEFE
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760084993;
	bh=cym7XuFjriQfho+PeElSlCVNc+b7rIj2R2A+3NLtTEg=;
	h=To:Subject:From:Date:From;
	b=phJddqwo+i6cJyM7CRuqcJZB6I7SuA58tr0ZvJiK+pBE4a3E7CKKyPLO1gwNcBC1K
	 ZcLQlcud1SVPvanpN9SEm+KhufBD0w2wZfB3FgmkUNoPUaJ1hmIVKVrfTWpPJ58bXE
	 82cWp5nHIl57VpFqRmloRV5UOgA5gb66FZZlk3Vuqrcdx9CHbqeuoro59LAJkTf324
	 eggrX6dkOclMygmaCIc/uu8Kd+VcyOuXq7B9qJnf/j8JL2ptufsflnOQlEB8gDnSEU
	 JS9bC0Eo8XOOgDbpG01Uz0oplT9u0NCu5aTfUemty9xw2XCuZAt56/ZQsogPNS0/mi
	 J12gazOaLwQtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91246CCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176008499358.22359.9859421915364973443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ce938263666522d0d6b41c2a06f5e28afba801011a34a9ca1ab8ba8d96584db
Date: Fri, 10 Oct 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760084993
