Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441B9A59
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745282394; cv=none; b=gvojzFDDhnXrmIRnxOsIsfY8iyO9R8Azwqfb+CaAgYgu8K89ezUbza433wbV7eHeRM/2gNN1s9tHjOOZzv49/cJIhEkOWwSMdkdGi128pfuWCphd3eeIZXdKO8wSKIyNmO6C9mvKTm2tDR0Jn3A8jXjIUT8F4RfY+CZeYqjJ2lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745282394; c=relaxed/simple;
	bh=dsKpnHRlkcFMRmTJXh04bOjH3yIjf/M9HH3ohrEmpec=;
	h=To:Subject:From:Message-Id:Date; b=AVlBzAExwURHx7EMIPqzCVHxBwluWn7LCDTNQSG17/CM6xzm70nbz3DE/gp68Kiz/hv6kI19fozuVV9v7T7riiYoPIdb2Y4X1iaU3916YwB9SX+ZbxePwMskhCqdc/ID6eLweFbJBO0GPyZkctB4OAIYb/o7RRpJ5hnf96Eznb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rjpYmI8L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rjpYmI8L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF19EC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745282393;
	bh=dsKpnHRlkcFMRmTJXh04bOjH3yIjf/M9HH3ohrEmpec=;
	h=To:Subject:From:Date:From;
	b=rjpYmI8LWq37ACPxN1wBam+w0MvZ+KATb6fr3MaPH5+IQLY1wWf7lPuPjtclhehhH
	 U9YADpDdh9HunxasMCPhI3L755nC8ENlHdVStjUIXpE6zxSwUz9DbB+81XzDlOUdtJ
	 LTZecF+vXix70eMSu3OeDXT+3S1lz9BxDn2mRj081LyfTIxJUPZKGCvH5sZpuOtwVl
	 VXYpkjNkyYmeRJY1xe6pbWYJ1MhIWQE8IvPsK+E0s/xNiD8bdxB1g+WJv48DCZybJS
	 qDa43p8dvgFfEUR0huylrjb5ujdxi1pXXEbVYS52IO6QzYa/3LL84A2GrwUHldZgzI
	 k8+Lp7veGVYXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D646C369AB
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174528239363.30193.15774810578769203178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8673ddf2a336dfadb32fb2f821a60f8511e58136f8ffbbf557b3a9374cd46e04
Date: Tue, 22 Apr 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745282393
