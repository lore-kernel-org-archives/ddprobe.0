Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB071A9F9F
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768660434; cv=none; b=biVNNh1CqOt2eI1O1R7cP6kSheh1EMzQjYatEsPuqO/7X1MZEr9q1q0nVgVPw/Z0kcmdBnuTEbh1A9Lj2ubRYSPiAe/bFkqvfzXdhUs8iYpnmDnRCO5SMLfQf+mKTJlV3Eit+XEu0jvnZMmvh2ejAQvp08G9BCgxnp2tasHGEkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768660434; c=relaxed/simple;
	bh=8fu1wdgeDDO5cvcLRB8aLUii6Itm1AUr9XhNCRLDhvU=;
	h=To:Subject:From:Message-Id:Date; b=Wwj9Mjvzh8vlbwpIMSBjkDIyyzPVVDzw1jmJGGg4NcXitf7I2Y9KfqCYbSCbhwTcXOGXbhX+XWqdRwcw3Ftnqb2vBeD24JyQ2dRWTj+G7dT76jNphm7GJNn8A/KRtZjg9YSrNtYhDpAsMyYFGPsr5ps1pCCakqnOm11nyVe88u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1ZNqxW/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1ZNqxW/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7427C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768660433;
	bh=8fu1wdgeDDO5cvcLRB8aLUii6Itm1AUr9XhNCRLDhvU=;
	h=To:Subject:From:Date:From;
	b=g1ZNqxW/at9pbms2LdtWvwrXN/NFywexBEtGxCCn4vBdloLH+b1GFk8H+16wB+7X/
	 UKl42ltvnyauKo61SQqPMFI3PHd6Ho4yRK7MVeJnHrJPcmXeOc2CahIyNgX1GNLSzs
	 muhf3/5rxtHJVY+4YLrVCs7BmE23AeG80g6rRXhEjU+G7JH1uMtw7YC2VERBDoYtuQ
	 YsFtTB9eFCesLv+vZJmuZjfP84vaTJFWbKhC7WG9CfPMqdWbYefhBvI1fqvHXN/g/z
	 52MdY7D4ScGdlnqy48s4bAgarYECEVm/8+8N4m8IDUbVLkAmOB7076awn9yF3810FT
	 zgzUpW+qoJGcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92964C98329
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176866043358.11614.17426047601140889705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f7c1226d81bf6fa3db06721189b34f0e5d3250a88a3a6f0d0841238fa76546b
Date: Sat, 17 Jan 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768660433
