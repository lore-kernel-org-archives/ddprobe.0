Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DCBD1BED74
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 22:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714515743; cv=none; b=Lr//9/9htSvdTbijJp+jSA/HASasALBW5Ie2mAF6BupmPI5LuON4ueHzck/Ul890ZW4OxADhFgn2rsTkss75UMLP+b7YbFyq+qJgdBpSAXe0wjJCy4m6HuXoZDxZQwOxjnWS038ZqiEHkNJhZA4lwwSv6EP0f/TZy6EuMSwj55M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714515743; c=relaxed/simple;
	bh=m4rcHI0wfk6Y1F5OYDUX664IjzSPRFPz5+0WBAWIbS0=;
	h=To:Subject:From:Message-Id:Date; b=Gw0baVDFzeuSi8P7mJlBWgZqbAAHcxFiA9P9SihqeHAGEgp0tK06W6qpxjs8Ah2G4CZhJdEfmMGYOIFIbHAhOz2jUN3P1rhJrGjq3WyO5tRnIwGB43sl1UG+Yvt1yKP3i5d3usu0lps+aoA5Svz8fFITAxDuaxCJg7jvfuoyCN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQcqx+AN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQcqx+AN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6121C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 22:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714515742;
	bh=m4rcHI0wfk6Y1F5OYDUX664IjzSPRFPz5+0WBAWIbS0=;
	h=To:Subject:From:Date:From;
	b=nQcqx+ANciqUcrk12oD4QjLzqkc2/YnKZCXyBV30xT/NLP2sw3Snnvnx5k+Fqho+k
	 hnMTbe+wjp+yIZ6Sh9dzzKmwqVu2a/XrRmrgW6Uk24jRbjrZhvvasymPFH8/CSeJKi
	 gpD4Va/RYOH+Jp4L9fbVtqJl0sn68HPHlh+sHiYHWEvr7eQfKBDWNq2ZePV7RLV0Mw
	 9pNg125LqbJUJ6amRGjhO6Rb4JmTBmJXL6C3BHfzSDoeqIszsVMhJn8fzjGQyG6UML
	 htNkkf+LiYOVxxl843Z6zG5ForTi0PPnLXQQz/G3Qs+ByoD8MZP2V/cyARYr6ZJEaC
	 Cr5h9uPz2StnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C352EC4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 22:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171451574276.22683.12318309422827558617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c19bb6394068e486d3eb959c5b90bfedfa59230dac4624c8a47358995162b8f
Date: Tue, 30 Apr 2024 22:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714515742
