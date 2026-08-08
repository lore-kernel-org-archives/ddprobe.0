Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D5B33451A6
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786194634; cv=none; b=X3T4kbStlwjQ0iWyZjlY0bJPATa9IHSc6kVNY6orGMeEbIKf8kat7xOiQ8bT1MqzwmCasW1yGf/cTVtp9PWyDJxXsP7fQj4Jr/OKYEgrj/APUbbr4ZYfJyfwar2duf5sN5gK1NbKUxxEQckGeDr87ibBJ3Jk4ofocL9XqSagIMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786194634; c=relaxed/simple;
	bh=/IYAdyKCNflt0pVGNNV2deo/399idXATlBNPQqDVA4g=;
	h=To:Subject:From:Message-Id:Date; b=Jahv6ayzBsxLQZ1HyU0CN5P/MMQenngjnP+Vgjjxi5//+zEh68y7YMoBKiugUgBD9Pn3B7IaWqjitR9Fr23P7dwYWeE8rIeRGylhpUHyL8Jbjic3h6P8yQ+tkzCH9kljpvq4g8yq2kAYWj0XfNMY87jFPRbfucWqH7aQ+Ak7UGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+dUYbyR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+dUYbyR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9649C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786194633;
	bh=/IYAdyKCNflt0pVGNNV2deo/399idXATlBNPQqDVA4g=;
	h=To:Subject:From:Date:From;
	b=N+dUYbyRMw/pjLY8Fj+iNNldbFLBR59cHz0xOEFPKc9eMujgR9OLtwRxwh+CJyi4k
	 7nY49qJihUNvmkATrqJswjMnuIuw7hlRB3tXLXNbnVyNyvtLK/O+Kv/0PLIEI+lawV
	 1ko5bKgtb7Viyml5kFSZ9y0ep20cIW/AI0Oe8+9oB7k9n7B251oiv4VzMlbJ9GhQtn
	 F9yI5o8clNAtkhB2Y5kfOcoFHr/Qz7W+4OOsUixyRGyK5AcY6ba1bs33xacDvXeBfy
	 zC2a8QvqR2G0dv0PadYY0bukEmjzCI5Ap3GPhEuxZr7Vt/BDKULT6Y6wrol2pypnFF
	 nbQ3QZXpPLEnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E35C5AC67
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178619463372.30743.2317270719086224716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a0fb89fba0049c4e99a8403d90684fbb0c7db8201405f06776f0129fb8dc161
Date: Sat, 08 Aug 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786194633
