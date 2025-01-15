Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE451EE7AC
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736933154; cv=none; b=r836RC2j/aXkTcNByXG+engmALGnz0DPSGIl+aCPY18jU7QE5mprCyk63L3rIYJYPInUDi7sSAf+KxNXGVpYI5Kn3fodrdck3ta8vc5PLztrdgEB66/YTUyDglNcyxCRD8ub18ZBNXsR7kSeeEFS2izCzobzbKL9MCo2j1C6gIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736933154; c=relaxed/simple;
	bh=2i4S2ga88YVv9LPQIzcB12bcaL2ToiH+8TLtNi/iR/M=;
	h=To:Subject:From:Message-Id:Date; b=AAODlpDlUrkia5t+Ks7exAbqUGhmEnPXC8x7fwIxpglPu+Xd4xmhcPCg9qlAMcDVO/P+h1BEog1AMrQF7uAjZIgTbkA2PgO5yOP4vXGAVath/4Sun4bHeOuuViUQIIj3n2qZX4IfzXtFJnNazrel5GfBnZ9EeCuYP/Z9lxpaGZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qsYpLBfs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qsYpLBfs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC543C4CEE1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736933153;
	bh=2i4S2ga88YVv9LPQIzcB12bcaL2ToiH+8TLtNi/iR/M=;
	h=To:Subject:From:Date:From;
	b=qsYpLBfsKZdDRQcBcHzRIAbwsds5W7oc1IXUiiY1xSt+TklWL0Dg8BK3B66NFPj2g
	 VYUkL/0eGIzXm+y4UpdIcqdmd6PM6HFTIR9LDhKdebHE1T96KvKtkh6cI7Y3iuLPGS
	 rg66Jx2Ab7d8U4/w0UVEbhQBTiLikAbKL4sUPNVS8avjAJWePN8fTK68zg7G5thNou
	 jcFYiSInNxJY9U3szkO1JnGvkwGC6kPz8uibx/zgj3hA5rE4qc7JZxYx8nA7QHfa3z
	 EqHVSR9FK/66pCBeHERfxbN2yZDF2ANTG4hTqOJVckhq7uHumT6IfNABbfb5b0V0zb
	 hb99U8G7xmfdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1A01C02183
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173693315365.27903.8063464844863039081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0350023cfdca04f085b480c22346f2a894d7304fb893993077511c0927796b55
Date: Wed, 15 Jan 2025 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736933153
