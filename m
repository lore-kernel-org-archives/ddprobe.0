Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C5923B0
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742735395; cv=none; b=JSOPf+fQDb7dw+sXydYdRE9N4bLvElgGwbtiM3fA0P0gJ3Mqht2IsJDTTLAr8bqcHGIxhhypS20++OWT20HRxAHphYUmmUWih1TnHpMzREdohBvSPnKgj1m4b6PaFQQZhtCi2mFRJOm5qII2wLw3J5f/w3jqiS8NYzyuKx+iLmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742735395; c=relaxed/simple;
	bh=JIawrAg9Luc/EN5ldBDJ9v775R7kRmA83GOx0ML23XE=;
	h=To:Subject:From:Message-Id:Date; b=pntt4569cyPR7ia4ZolUyM6O+thwB9XhnEzSJk5ABlnqbPrjuIz5a9oVcNBI11ZDWYAQkjMxwfxfupnRFQjU71WhFi418DMwif8CFSWzEil0MfU4OGIxSlUc8pYBqZ1uqeGBzcKcWYyGqyEOxCzfeCbZh9S1d/rq4v6cHO4x2PY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bFe6a9sS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFe6a9sS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4154C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742735393;
	bh=JIawrAg9Luc/EN5ldBDJ9v775R7kRmA83GOx0ML23XE=;
	h=To:Subject:From:Date:From;
	b=bFe6a9sS286V9QvjTMKTN3tcSZVU1BY4MIMfpwZMPuETXUE9Mkd511bUCHdCSDG74
	 h7sPlwbLCpgceM5pZNzAYZDgL3l+N/JBOexpW9qnbcYOl8laqJ4z3VYcXjbQ7ibu73
	 vef/ZxEuItUiq0OgF//dsQ39sbDUBefpXO9Bi2MfndZEMQhnem1yVpuSAj5oBC9CMr
	 RIgwyQkUQhdOFqpkLOiQPLFX7DE/cdyrY92mlkwfFdDLa6JPFZcll6mNGrcnjgKQ8H
	 7tRs+ccx0ePuHs6Fxx5F9ZM7+7BdlfNXm/vqglOmYgbgC7gNAXTiT7qLRCw7ANEFae
	 Kl0T2OJxY28eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9463AC28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174273539358.27389.5656248279479819867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96e022b6bb45dde8244a133e43437a5948ed3ebca2e6346cddbcf49f54564cc8
Date: Sun, 23 Mar 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742735393
