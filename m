Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BEBC356760
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792220434; cv=none; b=EBViL+uDmbAJAqTtO3LXv9GhpKLRRPkHforpvcqTYovCsf9BnYA/4fvX8ClBtJjwt26hMs52sn0BdE4Bdk4yRmRQK7OxJzz3vJUKMg43vKvaGdslf9llAqime4upi9He/nBmm690tmHzu8iB3n/cv5WDCiUFHcfSct7mTat+ZrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792220434; c=relaxed/simple;
	bh=5gW96EIMFyLKIgEDyqXsEBnd77+kfioY2cEE4ZXKxwM=;
	h=To:Subject:From:Message-Id:Date; b=mqONQp22wzm8VrBee5qz2jhN7W92I7t2hKPs+okvfGP1HQBQl6sLu/WAUGaZ3rvh/ccNJP1VIQNgWVEqaRHLIUuXrA4fCx6TEQykbVcTwmGEXfYZgmU9GG/x82g65slMYr277uA/paqjsD2o2g5LEeykyWp8hKE8WTE/7eZExeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eubh7Pzv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eubh7Pzv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E55F6C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792220433;
	bh=5gW96EIMFyLKIgEDyqXsEBnd77+kfioY2cEE4ZXKxwM=;
	h=To:Subject:From:Date:From;
	b=Eubh7PzvYQYCmaLCwHMP1TLtbWXNnZK2YO1sxTowaDnGa6898w63CT284n/KekePE
	 Ix2d9I7NlthagkvnVwpyhMClsqCDm3KYxQR9ws8w3xsL1H1qqnP4vVl1OPPIijNEee
	 aHZvCHpJR6dY7zzH88NgWkBnFPAWWFAx7G1G56rE32wpG4Fz5GSJbqosr8KpGS8SYe
	 0CgtSTZVj5fSt8CGvil8aB3YP8H3rUxOBU6oeg9drnrwmmT+MPbC/QYMPKaf+puHZs
	 fwgwxcO1xZFnud7jS2Tx8f+e5tzHSKLTIjqp8LpxfP5DlTIK3OWQv9Z+HH9Rnv2vq9
	 CfQU1oHs3KZxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9DAACC6B2A
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179222043371.31894.12951554104018459025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25549628999d9bbb9a6943aebb752073648a88256ed11feccf2b42284b72922c
Date: Sat, 17 Oct 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792220433
