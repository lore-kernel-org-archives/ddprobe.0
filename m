Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2894A28E604
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747278594; cv=none; b=qTmTbF160vIGezg7maV7/rAXl6Emr9K5NlQSkdmfJy6ghZFHcS4Gaq7WAUepJc+MK8UClUtLfP9eCwLc9Dq7ZeCVVv+54OW315V43LOWl0KiTr5S8D4Geb4VG3L2QCb5iIVSAgPE/mb4k9J2RBGaDR+KWgh5Zx+z5K1JLopEjSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747278594; c=relaxed/simple;
	bh=YI0QJpl55Lwt/D6EHWGNtscF51OfVWs5S8JnXCdxNAs=;
	h=To:Subject:From:Message-Id:Date; b=tdA4FoNvmhIOZdwTVSK5ua/b+b6UVdngYVSBht408zmta5VjN7RfQtAt+sD8ahTrcA4CHEHKJw9SKSrQla8xbo/DZu9T0XDw9O6T5nYkFELe7RJp+wuwYqjv4d7d6jKKe6ihAKnFCqhm7ZkdAPR8Ozj+YvbFv+JNWwg+H2Wi9wQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Df39XOWb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Df39XOWb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10DFC4CEE9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747278593;
	bh=YI0QJpl55Lwt/D6EHWGNtscF51OfVWs5S8JnXCdxNAs=;
	h=To:Subject:From:Date:From;
	b=Df39XOWbCZy7gJA/VWUTVDLAAEnqf4Slqj4J1pCh1LQad2TOZcmo3up9DY5jWG0BY
	 tUs3/eX9eACUki+GNq9eOYOkDxYlb/aq22gDzMuK3X0vSb9xveSoopgNQtO97P8NAG
	 Y+oUQkobT1I+vmK4Rg4tLoCzKGNkibHEMz231PoEKJR0rbmmW3ABeKqlkwIgHjFxj9
	 7lhtqpYe5SweXk26RAnvURZcBSnvDGM7G2PE5kHWXyOTshj+0aV9r7KeDDMXS6f/LD
	 /zbHuazkXwwHJx5G07Ri7Cz+sorgpKkNOUNX0hoT9harOh3SedsNAGHA7qRzSrn0up
	 Rb7x8SUhKcZvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91638C3ABC9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174727859358.26296.15763359340642282306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36ec6625e67b38b9103291ba54da57550c69e1fd53c6d10454ae6f84e36a9c84
Date: Thu, 15 May 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747278593
