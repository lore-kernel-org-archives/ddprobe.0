Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B5513C3CD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743608995; cv=none; b=QkY+alnS6WC/+GuMxqZEH7uAywEQK2ZFeYwa7Tjpp7fFgcKLIjuJWbo5Vi3f+lkhzgv848A+I455qvO111qMu6LdV8jwb7/KzRbgchfdcgPt62TQjDl08G0sd1E68ViQ7hWBwWaUaNEzT8eeeNCYBQ/rL/tiXbYExseg4SfvMnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743608995; c=relaxed/simple;
	bh=TSalGN3wfRQ5Z1y3k9NEc5TcDqa7BFdMzJ5HgzECvpM=;
	h=To:Subject:From:Message-Id:Date; b=lGRykw74gXHDmNpGJU7S/ztCDyQTzBBU4TLr5qyShzapv+9YXNN6q7RG4i97AfE6mksL1LvKovSXWQhnRizsE42UlzlGXHz7SwZi16nA0umHlZAjxOG+8Sbm6JJahjOIKpsBqzO0hzjn8lmclUB9tKbMpdfQUc9DDIjsRM4AMq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cClQuNAf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cClQuNAf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA4FC4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743608993;
	bh=TSalGN3wfRQ5Z1y3k9NEc5TcDqa7BFdMzJ5HgzECvpM=;
	h=To:Subject:From:Date:From;
	b=cClQuNAfUdmhunE6+KR+l0f8NRQXi25bBDCA1YTBj1wkBYNczMHpfOzIYUeY3VkVi
	 Z/wOpT90vI/rNVV3kKrbQJsOS2wf6u3wQu4xw6owKozRh71toq9DbLd1AmQIyH5DVJ
	 DdfHMio0y5q2aDMb2DDaYOIhjHF7QJMT5armsC3WZn783uU3dgNDQ3+Vm2G8oHDczZ
	 mhY4YvepWBBsDtz/m4XpUbUl9hxENGE25kEeKWCMCWcYNaXHJCNc46rPAPSjoi2YfN
	 ELJK9/L0aCZOFLgs4sTYfHgK758GPkL1hMiwA6b0pMj7Vf/4EPUw23l2qY7eRJWI5W
	 QvRto9toB8a/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D12C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174360899361.19539.3752971268909896931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc5bb8e357ca9ce5834de16ffa082a0d71f0612bddce596f996b1799e3e57200
Date: Wed, 02 Apr 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743608993
