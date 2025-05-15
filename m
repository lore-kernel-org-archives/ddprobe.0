Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B6A158DA3
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747344596; cv=none; b=Tewebtfacp05FDwqxUeoNn7dq2Eurpi5gqESa15blEzNqI+W0emiZOdm/1//qkTn+o5e3IhJky+CEzyiLaJUw/v+DZ2RAybNyq2grieJmQirCV0qwx8Re74ss2KGqCZ8bfc56w4bebBknuqkk9kBr2s5Wu9z56NPQ5SVYqSMNhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747344596; c=relaxed/simple;
	bh=XfPqvX75BsJNqUFFzJb2Eob5E7exSSNaYJwwEIc8Mbg=;
	h=To:Subject:From:Message-Id:Date; b=hO67/nPq1buNuGf46kfE+qA52Z9wYBFvoJ3w2k6itnoTExWJi7iSi9JFarUskN80wSQo2OnAc4MXKsxc+HChYTAmKCWBs9MwJvAbYf4Qr/iJOSr5o2nkRKRzwKhPFJAslkzC+k+efqA3vdYzVkV9g00XUa5IWAmWUBrWtO4WsQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cajnIjNt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cajnIjNt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21ADC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747344593;
	bh=XfPqvX75BsJNqUFFzJb2Eob5E7exSSNaYJwwEIc8Mbg=;
	h=To:Subject:From:Date:From;
	b=cajnIjNtVezCYZLHrBNkYWLVOwLEJY0CaAHyQg1VAZhIQK7WIFuVbb3xzermYZbLD
	 RHjm47m16wNSl2oVkOx2Z/iXrhz1ZyIJvZPiQ9f3pd9NOh3/h3QVax+dWTrzJ293ki
	 QqyhuI3l/7tTKPk6TlsthaYxGLmauqWOL30lVZD2tfvWVX0BhcS6OCBkuYfDRh0ZnV
	 /bcqOctHs9Ol4CPM4c6LgLqmF76CBBOnPqektYjqwjB1Rw691VoESyxix8U23ZOryh
	 4JpsCAU/4H4DMR257sX/oycQiF2d953B+RrM/Rhm/S0Iuu2RDU0GpdlrFZkz3HlY/f
	 nArgJ2Av/QRiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6E7C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174734459357.7975.15038411332350547779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be4b5f6a2fbdb1b97c674370a699c8e173c1d9448318e04a84c528421e86ab51
Date: Thu, 15 May 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747344593
