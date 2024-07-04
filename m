Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 793081755B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 03:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720063523; cv=none; b=szNUD/lyqMn7DAAWwM7lKbfozVqgFGjtNBwL1I4f+GzyYu3ascUQrySrIKXa362p2jycVAxUlen+fShJv8iDcZcCf+5dyvydDmH+G7LOVzKHniD57PuC+rgGfija8+e3N57OZFViTsYny0bAbisfgs+lfGKsmFXCsaWlnTpAUnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720063523; c=relaxed/simple;
	bh=TxgfHBsVcJ1HrgsduF03J8pPl/tRVb4hG/jTb1P9nlo=;
	h=To:Subject:From:Message-Id:Date; b=t4L6/ILNDl0YQ/VXrAxtcZcNezV2E4Usmh9Rbi9N736YFbOWyuvQjMLDpgtjcMWZ8UV8bvX7j5W4Ikry6FsVJsHSZu5rME2LhqEeJb8hhaPQQDzhqHBVtFMQ/CLuSvmelzJRT4Wts52r2r1eHpRcGM0n364/0e36mSZxWiIQsHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/+3tsva; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/+3tsva"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3ED3C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 03:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720063523;
	bh=TxgfHBsVcJ1HrgsduF03J8pPl/tRVb4hG/jTb1P9nlo=;
	h=To:Subject:From:Date:From;
	b=u/+3tsvarZKv69v1PLw1a+iiXarU7aIvP3c2VjZ2GcEls3dEDbJxXIptJs5UiAeu8
	 0a+lBW6OUPndSC/5E5hqwoNG/C8jjV3x2GcJJ+Z5CEVcTurB1Ulgwy1GIoFGU4zZlv
	 jFyMEqQsRc20gS6TE/IH2m7bhSQ7xdvmDqY81XGd3hed0IiFUUxmEf+U2aGCkoezwm
	 zbTbEkWv5BzBcRgU2jZ7CwgazcszIGoqku4BwVFxyuZ/ypO7SJLZvO9nusVJbEXBlv
	 6dyq4E+Mu+5wKUq1sMhf5yX/wb1syJFu7Md3sTpCqMhIYy1gkVWbseLg41VC4X6hZJ
	 jbl1ZCevFQ3jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB96AC2BD09
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 03:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172006352285.10693.9148759931261746092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4c60ad08a6fbbd1af38f71e81ee357fc497b86bae3ce6e9c6c0d87b58aa101d
Date: Thu, 04 Jul 2024 03:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720063522
