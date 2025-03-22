Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 666D02C80
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742617794; cv=none; b=SrcqWSzpyTpClZGfE0r7KbmlFNPpdzd0oyqtGy6nVBjIB8hR8R03RtiGzJsJwKGOSzH/y03szTVeuz+os0C6DfvF2HG3U/MuwNs6POx1cfx9r1913m9UcaZDIgU3tnX8GUqrY6nv6erhgHFJ4Ax7Moh6hYdHXgg7NiJ1UtaNjqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742617794; c=relaxed/simple;
	bh=wj5nyI53z23yvMfJJU4dDUNRClFypbc8la33MNHu7Y8=;
	h=To:Subject:From:Message-Id:Date; b=VQ+nt8hMPQfGEmNQU3qO0ed5GTNNMs+RFLeIyIol292PW6rSxx7kBEH89/1H7lO4maMQIKbVTN4BeKoyS6a02SQ5orCo+I5h9e7UaMAT5ItZ7D4Gx/SIg/nsT5bOonyWxmbtsDnFgiLERyzYipZYYe46O+Tb3IJySx/lNMpB4Xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b+gl2yfw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b+gl2yfw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4627C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742617793;
	bh=wj5nyI53z23yvMfJJU4dDUNRClFypbc8la33MNHu7Y8=;
	h=To:Subject:From:Date:From;
	b=b+gl2yfwyERW7t0dJzaP+ABjKoN5DLHic6zPKHZ61Jka3yPukBgmjaQQ7F/kPbnkb
	 4bdSDn7vE5ply0KkVw7aSvYg05woSDZVezKsKmG6PAl0nVmYhbqNmkquUKvp4WY9v6
	 Pwzn9Pcm6pSVUwQUtKp5wt/mBx9XlyPQCZA4xdYhlLraaC0vPIIrZKT/J+aqVne2od
	 Oa7eUcQaSCVLXah4b3KQ/YLFmQ3f9M3EXHOGtOeVsjxfQ0CCjbxkWvSb5M4mG1A6sq
	 Km+ycejJ94pfp69ao6B8RPK9nbAvRuYwklWeycPs+H9tOAJ4tOlln3Y+zsBZ0yTDXU
	 TXNv9zoMNZAKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A625BC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174261779365.9857.13128594443386954403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af04acf40099412c142aa8cdd9ef86aea88d02a8e58b0366b64eb7552b7f3404
Date: Sat, 22 Mar 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742617793
