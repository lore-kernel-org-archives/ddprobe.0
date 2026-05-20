Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C72035836B
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 10:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779271234; cv=none; b=kZkFRY9ReTnk3IukSNImx7vr+yMd62HYuZFdVSNJpV8CVsz+hDtBTRxilnFZK6r356BsyEi5VZ5zNIcbE0cYY2nyBvc7d1lFTrcTNYy9N+b49c5w47YYisJlnxGiEzetQthncgx7cCqX9MAgxHh1phnl4Adek5tvOAHoxmFQXpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779271234; c=relaxed/simple;
	bh=h6CV4mtCFehtE5gfNt5Irx9pwze0ffcEIsTHJ4LjpEI=;
	h=To:Subject:From:Message-Id:Date; b=Ye+FRIOhS7MNkF497LBAwsbluyU1lwP6moLLv5rf8+adRi3a72Xf7EuFZpzMhKvAdLnW+ijAw8Be9Yucwu5ZJ6yqj7XEajHr9vFUffnha1qMjFQ5GP+O8meHM9XZyz8OuDJpVXNOAndDAQekrWWEb+7R8Af9oSAmDQdTtVnlZhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ONMfFg9j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ONMfFg9j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C74F9C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779271233;
	bh=h6CV4mtCFehtE5gfNt5Irx9pwze0ffcEIsTHJ4LjpEI=;
	h=To:Subject:From:Date:From;
	b=ONMfFg9jO/CHArJtOIeoAjz7B1nOvu9UbOgBDYEfX+Vqi2rGTK4mGkgwzTHKs9WaI
	 jIuOBPEGPM05ppqdEZ65HiySto8KJ5W7Xmnq8m7d1OAk+CVkJor6+5ywjslA/xbUSL
	 vnRLI4Ba0RzhhA6vuLcXlxn9koQp0EXqEnX653SsLTL2VHX7umldCKx2i2e8wcGDA7
	 JkCTrFbQasfd0DqQEjcQVtHVYB64bvrD6rGsl4l490tKmS4+kCgRfNHP0wiYWK9l/2
	 Wsrhhg9IhckLNUMA0109M0KstOyJRxUI4uQljVYVU4ZDUEqtQXLs816O+BRwnd+SGa
	 yaIKI7S98RbTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5EDCD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177927123369.28380.3477206948380465610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e540699c113e3d4e922537110d0ce3f417860d740104eca0421de39138cfb469
Date: Wed, 20 May 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779271233
