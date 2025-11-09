Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2570126B955
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762724394; cv=none; b=S1NKiR9e0NRhth2+1hnlnDXpZLwSW2fxsoKZ59Fl/+pOytVMs177IMaXGbQVWHlG5Migf2Y1HKB6C10v5KfBY1apHQuPZHCrKL4Tz7KaSBANF5V5k3HEnZCCVWYvt2SLJBPA3Ey2CvdlFmeGYW/46Lj4s+Lhdc3nIaVARmfw2RU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762724394; c=relaxed/simple;
	bh=Y335ZSh+LVoC+XSxvvJzGSu0yACObflcLdXmdq1YhZw=;
	h=To:Subject:From:Message-Id:Date; b=KEqmNweVPXXN4fDzgpkBVnxkV+b4LNKuK7pzLR2/nass9+sQ1ecMm/CDoRvn7voAM6+ym9dLZZOnj+7Sz6PgGciNCsQ8YAkpjo1YYx6LaubuT1UtxHR9rOYC354PtqI2NSIHbhBZTYidyOWi3y9xP7miPILS/Mdrw2udPhocFBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tu+M/GSa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tu+M/GSa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AA7C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762724393;
	bh=Y335ZSh+LVoC+XSxvvJzGSu0yACObflcLdXmdq1YhZw=;
	h=To:Subject:From:Date:From;
	b=tu+M/GSavu6sFTkN3ZK/jm3MUtuIXu5HAl/3liLYIqUHL1e1yEvGR2TDjUOrSJVQj
	 Ph8cb1xTpUsrIX0kmXjX2GBwme9ytzne//HjHHfh0RggdEJhwc/FH+R1uG1UN+wBf9
	 UWI9JyR5Xgpqdf+tvrxonUUWzgR73iF+CHsHzKc2j42svNtVRr72bEEyL8SaMzVYsT
	 +Q9Jb3f4JK3G61h+R1YqoBbjbO1GW3KhPCo29upIciJEmTPFBSo9QvGmRN6VCZrpD8
	 5SifzqtvtQjy1hWFq6FgbwYcMSxaYf98XncySIXNvWhz057p7Cng+OTzU3hBFep124
	 d7aKztM5GjAGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95435CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176272439360.18623.6835189839399122259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e34ffc59fc3dc5461e628f6cbcb4c4eea827dfe42ec66f9314741eaa7294b868
Date: Sun, 09 Nov 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762724393
