Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCF0186E43
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 10:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721039663; cv=none; b=AjbcS37JjMXx9vvR8Q82V0XEhLydIZTP8pVx1BSSpWnz5Psq1hisn/1dW1d+50t5NMOYUrJeTjgw9h5HcrpuUdHr3L/zNTkN+TxXung8lOc7sYjJehZ5S0+yUbLvVjcmuKfTewoh28aX9ohP2qLE5DjAisiD9gM74kMR3QRdo9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721039663; c=relaxed/simple;
	bh=KySyjsP3fBdHvTUxAeJ6uL6/90DQdlwj/WSs/DVQE2o=;
	h=To:Subject:From:Message-Id:Date; b=awjqDKQWCXrdOw4Td8s/Uap9pI8lGG1rycRRZ9l7MbRoEYpIwCjA12sxYCpH8/IuNxDUsvLECjWHCNOIV6a23wULSUDtNqZieLZyJ2Ql3GdQnuUKyRafbRf0D/T77OclaJAw0nc96Me3AM0BspdHNWaUnPKUs67CkaOgJjXRvUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJnPJtzu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJnPJtzu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D562DC32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 10:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721039662;
	bh=KySyjsP3fBdHvTUxAeJ6uL6/90DQdlwj/WSs/DVQE2o=;
	h=To:Subject:From:Date:From;
	b=SJnPJtzu3E6tpC9kBNsEPIW2UP46P4qs4TT1lzXW/ka/q5QEzUDPi/kWToQbLsSbv
	 Ss0IPaihE6L7EMApy96eHeo7Bx+h0CdsIHtXsnULoFgKlF5trtfagXiHAlSx641V9L
	 Pkb2rhgek/6KLkBfhmb4Dqll1RiITROFGxOFyHkjSfShq4e2LddgJoLadonpIVCy0Z
	 E0OcL7ouqWfZt6KS95JYLA1bH3J1b+Y7ktwe7K+ypqr2Q/j6XsMzwBYc6+cmlBdfr1
	 n2mE+WjUI9cvfLaAReM4Ov2rlu6kqLSy6oGtQje/Ul3meUHaS6uZbTIC1nAi9bSDbg
	 4rRECyrXPxHQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1108C3DA5E
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 10:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172103966278.26741.9626031121376122830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be3248062723255f1bcdd792973c2c3c9ce4c1fd5d6e39e236d098dce30d0a01
Date: Mon, 15 Jul 2024 10:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721039662
