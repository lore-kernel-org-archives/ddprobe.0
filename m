Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A221345740
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787691034; cv=none; b=PcRosLzWXe9Jm5Cz6RZTfFCZTDIwtCU890sgR3f8XFHBjaLPLzkcIfcuJLDlXu/Nx77UJMkNxEQ1nQVje3hzIh/gysYsaDtG96H7adxHBQcR7320WQ8G1it7DfCZlmEKIaG69Bej1flfeGN/0HRM4CiJYARboRnXSvC5GUZYbNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787691034; c=relaxed/simple;
	bh=ZZ/Ml9eZ6D1Z/xVxKto4H82eYnzVPgxaTgjedQqj1OI=;
	h=To:Subject:From:Message-Id:Date; b=sr1BiXOIlAcvqdvW6snsAeFiJbFmNl7JxhrVYH0CMr+K7zT3bgFKZNt3Khkj4cKDQRFNs0gOK/kXnI+sbImnwSc/H9lyX0TDKlMapIbFQN3OeX2OP/Zft/1vDww0yePdLOIKyuTjWcPrzNVb2WqrNJ91f/dJF756OLz5039YbG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TDDuhzEf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TDDuhzEf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E68C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787691033;
	bh=ZZ/Ml9eZ6D1Z/xVxKto4H82eYnzVPgxaTgjedQqj1OI=;
	h=To:Subject:From:Date:From;
	b=TDDuhzEfjeNdb035Df8LmtJA1owHF9zsESPKaVCFc18MEjAy3HTJIws1I+feuLzbd
	 8QKF3mWqYZxvgf88ZuZotKbDwneZSLEV31QOirjhDTGfm3leURigPKlmvSCzsTlm6N
	 4g0JE3aHRJ7ZEpwt6VlwNytXlCjIBO5PaZkoONiXA0nyJK/9282zwgyHmwuKm/yS5b
	 DGmo3b7ooXbA/UfVj0wnWIIVq4IxiJ/hQad+EE4mcolTSGEYA4ZQm5+0auMPUZOduB
	 lDIHSQe4yz2sGnK8huyrdl7DHTe4Ib3AbNAUYy34yr3XTYPR2N5xqEKdZIPR54kqzQ
	 2k+f7tMyx6IEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA68DC61DB9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178769103368.14464.12553656549771571150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08ebaeb2333fc487c5b0a212f4fecf7f776bffe0e8171c517a05e826b8041e01
Date: Tue, 25 Aug 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787691033
