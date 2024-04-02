Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 042563201
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 01:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712020697; cv=none; b=U53A9EEikFUg8RjAeDjYsv85mo3m+GBU4fikCiGL4MYKfPaXo48l0jKuFXsZ1bhuvZniD+BfmMS+RGJVuUct33+4K8Hh5LJb+WFKbbSGsrQMzaR9i1N7eq/4PWdZmBj1yIhWiCZGm+Khe/6cKpNetvAsw5WHhaEINtZhxxo37TM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712020697; c=relaxed/simple;
	bh=6wZiuaC6E2iqVJNlZpVU7O/O5ZMuT0kRSItq7rAIYz8=;
	h=To:Subject:From:Message-Id:Date; b=BlLmE5glyNdE4T09HAhL6zr/8IfRFjcbBhhBKiSs6Y9nC5fODvPZVzLIAM08jHGPlE/oZ90e0cJymWWrMbpCsPiKJ/+AHp4NLegxJ0S82xBrRZkNAD92wo+flZLWU9pdn/LfDZTU3FRRhZBL0NHsueMFnPtOn7nm9XmOnKL9CZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GMDRNDbc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GMDRNDbc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8507CC433C7
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 01:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712020696;
	bh=6wZiuaC6E2iqVJNlZpVU7O/O5ZMuT0kRSItq7rAIYz8=;
	h=To:Subject:From:Date:From;
	b=GMDRNDbcWramAL8lA2y7teLtnVJdItouN7MnPHoktrOAvhp7uhwfIoMZG0H/7SycQ
	 WomvcX9Hm1kXAbZwBDxXz6LKlG62lwc3kis6aeO2+rzNwc13gAnS+NsmVEl94A3I7y
	 cQaQ6V+C3R+gINtHOlHTEnAW3muymV4DYT2kqFhIifz3oeeIieKHpJg20rOsDyRZkr
	 6I9KFFiYsMIVNfTCMXvU891RdyOCGmndKP3HyEBAWphqfkRCF2kid9odlmP6x5PDpy
	 WlQ2braYZlrXodw8PVpCX4Q61O8oAYc50y+b1Xq+K43eScaxne+dWWothXitqqsj/o
	 d+XkKkGqAAkfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AA1CCD128A
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 01:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171202069640.1991.5438644338583265240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9b81aa7c770fb59ce6399bdf694bac4285e924c64e840c416e05ef5313a894d
Date: Tue, 02 Apr 2024 01:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712020696
