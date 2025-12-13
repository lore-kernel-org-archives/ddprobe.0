Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3118A1A0BD6
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 12:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765628574; cv=none; b=ohduIfaEfOvrSKwZr0v0bK64/9WFfUBRXQSf/DAQoaZSIdfijGgc9CPjGHm6ih7i5zwlkFHUksygPOd9hDXqNPn8IYJ+0GHl3klOXp+hYSJQ+P7MU/l6e8avCVxBK9nUd4uVjEnGGCwsvJtPXx12WYlb9O7h8GkJXfZ/2ShN8WE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765628574; c=relaxed/simple;
	bh=AVNxQkn4Bb7TqPhqzvj5RBv4Zyz0QqkqUyLqhQ8zGD4=;
	h=To:Subject:From:Message-Id:Date; b=pkd6KfJT9LEd72Lf0eWwqw62C55+/iSasTkI3zzoRIogBEeF3PRDXmxQ/HpK5HLDpUdiwfrVUpHiw0gPS9zugn8cDjO0SSbifVfwok3VZkFNNs4OxZbD2HsLB1GUplrbhwF+aZ0FCEvTiqkhody/09DG4JHMpkpdJVCJJ5XPIAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbrjiqgT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbrjiqgT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9107C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 12:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765628573;
	bh=AVNxQkn4Bb7TqPhqzvj5RBv4Zyz0QqkqUyLqhQ8zGD4=;
	h=To:Subject:From:Date:From;
	b=mbrjiqgTkClp8Pwzw+rhlu6vCIpzsIYDGEqaGTPOuvy8gkO32TuUp0hxQ5cu91gV9
	 Sxfy98ypHXLf4gKQtO+YvTKm5UpvCOE/Ch38OxWDYPL4c6evqA2xWpfcVyL7Pw++A2
	 RjapG+BbmDI8riYORR6Ayb/wuyXjQCtHZkvJrkzWWubm2TlfgF7ERM0iYf1DIKdpnA
	 +q4569Cr4utL+jvljUTgqDaNy3mwKipE1l3NDaPuUG5MAv3VkZhVnCicVbI7EFC0pY
	 L9Eq9O3sc3TYFS8qm6rTIXTZCv0xI+t3YpOiUHx0lKHGGN2JDoTX3UN3qNDBSw3266
	 ZkUf4WjbKZNng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979E2D5B158
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 12:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176562857358.6733.4231045848754019973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 705f69b20a786494a4cb1f583ad92ab0c503645b2e30ce78e08b4a9f54480dc9
Date: Sat, 13 Dec 2025 12:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765628573
