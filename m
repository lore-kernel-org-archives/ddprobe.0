Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AD4029AAF7
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 12:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751893194; cv=none; b=GPVmnCTK4nNf1PiT3hnyJlb7IjtAn1S0tmMhSH6Cvo1oSNGX/3g5uKE3jU3pIYOkz+6P2LuceqFqq/1f+wodcAwlaBsoddUL3tF1OGZyCRapOUuHBpFUY67KwNmQMg7c8RkmkRQtYGWxdCy/LMHrItQ7FTKwLfH50W2PLbDwQPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751893194; c=relaxed/simple;
	bh=8tems2QNeJAX+vuWHn2PRRzRcUOLcXH64Q0g+jdbbP8=;
	h=To:Subject:From:Message-Id:Date; b=Qt7ykKwJR1n0D/mkpIfnN5otaghA4gYf7VeqjoqsGkQjgsSr8zCqYbnLanLy627Fcw2HLHnDYk2qpThKfEtb9AVxBWnigVNFLhkUxt0qZJs4MCSRzdK7i9hEL+1hUhP9yQeLt10ygN9Al9QfgapKc6zrDs+pwsXDh5JawStsJAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G68Slyi5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G68Slyi5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB548C4CEFC
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751893193;
	bh=8tems2QNeJAX+vuWHn2PRRzRcUOLcXH64Q0g+jdbbP8=;
	h=To:Subject:From:Date:From;
	b=G68Slyi5jOR14v/AeiUCwHHyJIHw1HgCPDgcF4tuYrYIIZWykYF8FbFgdvko4UNFy
	 umOFsxahZtqdGehJPBODuJgBdVkl7z156Plc60Z5gOEgK33ESFkoYA6iQMODpIu1MS
	 evMWgpQpcvUdnDU1eD+XvI361P8P2F+005C98jIe1lZBCqpLJh2I72JTcb8bK6nrf6
	 nFFQJ0AuDmc5nBBjTXNRXr52/NfpCnF48DMxYyogk3LLoklkFlU5Lxb984+keRNP4J
	 aYKkXp9e3OwDJbZKNuhVdLdbeHk0F+OGbWOVQHWlWHq2v79J0+ryaYD9ig9pMYybaf
	 cE4e/UoX+jdaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D188C83F10
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175189319363.18677.14420717203821818955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebf870e9b193c266b5fa971b4430e1bf743bb673439a6dcbd3f46be2d5bb7a6e
Date: Mon, 07 Jul 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751893193
