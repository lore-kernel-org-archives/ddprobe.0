Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B8821C17D
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 22:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765837374; cv=none; b=UWn/W6MXtRpZhUQmxrYXqsE9rgmpkxWuvN59PmmMOGvzZQ3Smb99Y9aIKTb6kGnE1rXqH0kS8TjIc2wFDS+r/CqcoY9CJQkR5CCximDfOb3gcPzSTVs3ZGyKffircUFzjTqpCHCnHg+C3G84ZS0xGyVzeGK6iDRvy8dm+WKqWoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765837374; c=relaxed/simple;
	bh=+aUkPiaZ0EtEI+bLsXLVNXrzT183vnMUeFT4x+RZd/I=;
	h=To:Subject:From:Message-Id:Date; b=V6wUGuRRYZPh9PGsNfwIGsLotzf5oOAJfFuGqZ5XV0cdlqc0VQ/XvCcMh/86moMDy12ZJn0k4I1lXRPVzaJu7WtNv7uEKceRnw6JihAxVX/V71tW+f5d0MQx64qD+7g92fx9mBXVte6qoQhDgpelNTelqm/V5TAcxt0Mp2y9fE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVhejrpA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVhejrpA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4253C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 22:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765837373;
	bh=+aUkPiaZ0EtEI+bLsXLVNXrzT183vnMUeFT4x+RZd/I=;
	h=To:Subject:From:Date:From;
	b=gVhejrpA98d5f/DYcWCaAtiqOe4akeUP49s6smumnEUyXVMQMOetJF+YYjM88scC/
	 JWynYLa5zGyUWzDXscXMMcLFkFsBeDt1+MkNBNaDe9fUqVEse5xToEbIKO7eVEN47y
	 bkn21VFlL3hRE9fu9wNAcoezjqJckYT6Lr6RJjs4hrpjLRvRcOZXNYBmWXdZTSa1C0
	 uMD9uS0ImBnr0FkgalLn4yZI/Ech9TcZtboH4XJkNxCnvKZ+Cwj9ePeTun7Y9eLrj4
	 uSTi2lWuIQ2HdEYDWFVPL45gpVLnE3iJNotIwf2En//cPbVekPs9BYlx+/cfhCa7be
	 Mc3AUkVVrg/bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CA3D5B871
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 22:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176583737358.26701.4726109419286164852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c0a0a5c3fc43f36632b38c609d91216d95d6538536d31307ec974d3ee935868
Date: Mon, 15 Dec 2025 22:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765837373
