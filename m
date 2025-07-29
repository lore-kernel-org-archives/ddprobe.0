Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C182664C6
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753802394; cv=none; b=tsqARifI+Kcv7Gs6SO6Cp/n5A3Dd39d45ZBfZQx85wBYIv5srJXDr9KnUhPGePR7cgb40pu6y+x8bFWfiZmZsagH3/Nns8nfdGs828FDhX0c76BsoLuGdF262kniJ8CGOKN1xCt75nWhHu/9m/mO/sOZqHVDSC5uaQrKjgUBffo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753802394; c=relaxed/simple;
	bh=D2D77Oh/knPgBfXebbt7osC90s+SAOB+sGpb9WoOs5g=;
	h=To:Subject:From:Message-Id:Date; b=d6SGOfZ4dlmF/Nr18Ekna6ZkTYb4zopd62wDZ0o9gE2wbPv4ebxsYqlEVVryaBGYwbkdCjyl6mYV+lbsQhmiG0Da11xNvXgIIoAKBSSE8YAmibTAgluk+DXPE9CWoh2Gje79pVdIa9uySqeFW6T/qeMsx/byVrpAQobDuHCciIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NKluzEJE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKluzEJE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29C0C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753802393;
	bh=D2D77Oh/knPgBfXebbt7osC90s+SAOB+sGpb9WoOs5g=;
	h=To:Subject:From:Date:From;
	b=NKluzEJEh08VkOVPWULkas6+7MO3s4oGCKxKTzDpRkYMzxG2n9GmTlvdT74/s+4Oz
	 5+XNfVhbCKisCMIpDVVPUS0w0teXmYMxa1tD8iPLlBktyr71Tq5u6SM/1vnccrCR96
	 +R5W3F9nxtedogIE37ox0fPASm+n/HTmzJ5tTziN7BsD41eTN4MvrkN6Am7u1Q2VYR
	 wNbOtuVo/e96bnC5GQvIDxzQLch7Mvb850ND/iYagW8wBKnWkcNIaS4rT6W2f6NpHu
	 OVliBg9FVjIt/82UKi/qZjgKGWZVu8tcRebp2HU8lm0RNYjxfuw3CAKZyygbEroSG6
	 02Fk9BAcsrjLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90396C83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175380239358.29605.1760803313461642857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e601bd03b410e83c51e91cad5c76c633bd07e6364a34639f741739cb1435585e
Date: Tue, 29 Jul 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753802393
