Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5005F21859F
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743551994; cv=none; b=JTNrZkpqoJiOT65xNDGOZpD+zfxd3H1w3SSPp+cbi3DAkniRdLNrTqKIxzAN2/7T4WVfXQ1S6y5z9DlaCgZl8AsM3fW9jKOFvfP+g68TXgWeQNiHhM9yHADfWZ8x9Ym8a9ZHvxE0TFNfZLPsi/jBMkRp6MBAGSLYqS8MSZZkxxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743551994; c=relaxed/simple;
	bh=2Arx9I4SrYORz3SaMBfUT0+wPlf2JBMWgyjHAPPHZos=;
	h=To:Subject:From:Message-Id:Date; b=heWvcXED/l1CU/9593h2Mid7zeVE8YcERpc8urCpkLsNHZWXymHnZwz/resQzK96biP9VKXmr8xiTJHpCSgVyxoExz3kcVd03pjw/C2lnDY6RpdvKMdWSLTJAcl3WMwD5ldvCbrjJfYSnIBX8AR2vFqeJiRzdZn8v1wlxrD/Fis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H0wJR8Dn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H0wJR8Dn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCDF3C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743551993;
	bh=2Arx9I4SrYORz3SaMBfUT0+wPlf2JBMWgyjHAPPHZos=;
	h=To:Subject:From:Date:From;
	b=H0wJR8DnSlimNoneCMGxyaYIlOYgclSApv3X2zKH26BHjuXlK9w2gNPvF1S8l1QdW
	 n6ZMVSgK/1mANdmFK0/fU4zy68+5tueQAOJ6lirNAQxH6Fcfpr0GnYyr8DPuyUTqqz
	 drHaJgU+bn2Y1Bbj4Ufk63/1gvtiC1hK39L+QOymo4qzQwFz5oxrb7L5XI1emJKxo0
	 iNq47cC3uvH/7uB4vvb72DGoEJooipTLlw7Vzy31Uj28H4beE7bQ8HnAeAdrI9eM45
	 s+9AIRcGnuaIJ/1QpIR++NXoVfCNW935UOOGtX1XaUhOaKNKihbA3JnE6I8+g6Vgh5
	 C+o2+JOIXnn+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A34DFC36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174355199362.15772.17014784049011406884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 676b29c5c6d04501c4d9223a4850bbe310d174f1e7b804d8da3f581c6246d5a0
Date: Tue, 01 Apr 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743551993
