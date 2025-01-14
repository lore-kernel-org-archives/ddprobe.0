Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2D1236EAE
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736857554; cv=none; b=qWZyqoO1074lhtMfNjyQW+wNVQj2qgjr+7tBCt2NCJLC+TwTygXpwKlrk0UEFgEks3Ht4isRNQdF2xOunRCdG5gWy/MdcQ07M6vPJyfhgLdHwolccp83ZGJue+E2maxmX5P+lzKllKUNOXWQpojwQSgfI7KnIMYQwKSYqWx+aYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736857554; c=relaxed/simple;
	bh=soaJkrBWGmeILPcdmYQdR5iUjlL4Upx+2H0+4XUQg/o=;
	h=To:Subject:From:Message-Id:Date; b=sDKOlG2oFYBIjm2cKu6r0H9ac42m7y5RaOd/RNKN8r4VOeQtP7/23jQs10//5U11Td5n2hLxTH1F+i7M1nRJuXjOstym4pb45c1MXB+oq9mUPvpL8pInluNS3H/NUyYa4cjCekKMslgHDzCVbVbwHAn5PwKbQDqsBEkvYRnJof0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=drBvP/kL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="drBvP/kL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0F1C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736857553;
	bh=soaJkrBWGmeILPcdmYQdR5iUjlL4Upx+2H0+4XUQg/o=;
	h=To:Subject:From:Date:From;
	b=drBvP/kLYjZHIxP5U5t6JfuLzb6ordco63RVZSOPNgapJrkjVaqwoflBQeY6b8PLa
	 gjuqBJFVeNnZ9sTtkJvmTv+iF7UsPw/YrXkHZKNkIPMiX7MiWmJ3sQ8JtbBiHtO7NK
	 TJn4ykrHTf7muWRGFwPEARMbN2kbKxpSXsNpNDs9NmPRqJivpZ8yldvgt1qMFaCeAE
	 dw3a1x+VPGarYoX9Hw1qlzmilHyuDUakgxnX6S6DuPc5gTGAjA+KgJAx3h6oWuY0JD
	 QDl+WR0LzEOVpiejQmkzFQMhaDvGsL8UR/ZoT0PiQGb/6Q/fDKz96IHeritaXZlxEh
	 Nk1+HpOyws/bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984C1E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173685755361.16291.10756284827967870609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f16d5b0b2696b98a5f468855bf4b6c4d94205b688068d4789e18810647f25fd0
Date: Tue, 14 Jan 2025 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736857553
