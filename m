Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C2E370ACE
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792270234; cv=none; b=KwWW7E00mjpt1X0hQsZo8V/bjM1YjlW04WHnxdE3LsuMfJBZYW7N5Grg1DxEO0LjXuuJCjMddJ73a9EeQIb6PA2ffo/+ARBvB/Zew8aJsBe+vnO3vf+IsJq8amGBu2RFQ87BLkuaHECAv/kEs85eGnNMQEKi7t08Ptob/pbmku4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792270234; c=relaxed/simple;
	bh=9clEnH3G14U0tBDYsBJdpcfgvijTVzLdWMeyZiAA5Ko=;
	h=To:Subject:From:Message-Id:Date; b=NQA+faDRzVt0aTbepHF2nIIYezPO8obIpVJuuH2XlZ2qrrzBv52jlgtixVxRlwlewmKvkPtYHPzjPb2HTbQlUnlhbVdfg/fsb+V22d54GhaJmgpUbdk6c5Y61/S3k0LJ14ZUra+lyRKLIV+70thtR3lyQir0Tc29k8DrxA0lcaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UgEkBjRJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UgEkBjRJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D872FC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792270233;
	bh=9clEnH3G14U0tBDYsBJdpcfgvijTVzLdWMeyZiAA5Ko=;
	h=To:Subject:From:Date:From;
	b=UgEkBjRJWSHnz3+iocCQZPfvk2ZHr05FqAyxiZy+2xAI3FI7cBuyVWIv2+O6rTcN+
	 CMJTdXw1g2TjhJqcE/zfBXV7CgGyMfPjK7DlHzDGl9mplFiKfdGb7K0avLOFDh5Hp2
	 DrjoCy59Lpl6jB9/vhAfwHIo5QM1QHaRdpK9xIoiDdi2jNzuBCNb/Z1wz/07gO7sOt
	 MUbaBdMjZCNTVqHCps53wgI+o+o9U7ZeGZlX6sYyJmL/rlbYOIOSIyFEFUvehXkubg
	 T4JWRlWahBGyPtfmXu7DpQWaed8t2+WZ8ppWvASGfeZ2vcFp5paz+0Q7bggTGwhdmx
	 Y78OcW5ii9XdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE326CCF2C4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179227023370.3584.18305964796106521282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b10a345a3f5259fe0dc72d2aff9530d5af1b6967c5f98b84a1ce09eff6a07e9b
Date: Sat, 17 Oct 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792270233
