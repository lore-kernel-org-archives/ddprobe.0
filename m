Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153A135F60B
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772581494; cv=none; b=WOeYEj2Eb+HQ/k//KQjY34YhiOoIoch1uj9r+wsGnAgLUJbaKMNQw7g2lHInK2vNEsBgyw8+sR6ApGuZt5x+NvrTgwUGLtnnF9KvvPwkc5ZkdnwmMLOTl/5RWZFDsLpCMiYg5hQCgpDnj79wbeQvEezxkMU33Ajy0hL1m1p97o8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772581494; c=relaxed/simple;
	bh=Cg5ypkLVZ32RyoCvLH7igB3NMKcnz6IhQ2JSQpwYlJ4=;
	h=To:Subject:From:Message-Id:Date; b=aGRsnXQ+Df+7S8qf1T8s/zIgBp3StYR6I4TRUvrHDkvH0nlWUMcvH9CYgM8Tpkoqqo8DNqrVDwGFkH6jSXMS27rBYsvAUE0Lr12iK58Uyj29MgsepRe7aNdunVZ1a9nBmTudiZq1F7N2OxXdHPZW4bhatKvX4GsgFJWSbP001/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhyvi2NJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhyvi2NJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DD3C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772581493;
	bh=Cg5ypkLVZ32RyoCvLH7igB3NMKcnz6IhQ2JSQpwYlJ4=;
	h=To:Subject:From:Date:From;
	b=dhyvi2NJJa+nuJTGFkt1Ezvf3I79Eyx/B77P9cKeGv9id2kIGc1VZ7UdO2BlDojUi
	 PEHgioWJuS7qLVNFu1fKlTI/sOcRCiktxezAZW7WzQZwhPoqbasAiei9iQl6YioQWC
	 03lzDZBQfS5uvPusQJBhr0TqAnj4ukOJK5fJelTtNRad5N/bZ6RrJDyEdnZtWB6Vh5
	 /lLO7VZ1ZBqU666MlKhRBUA0kdMC9gJ8L+XLIGUKDoXH0GILr2PqrA9LRCI5JERWl8
	 a/fa0AcJHbpRUw1N6oEn2bfU4Zra9o2TIy3RcrKHBFlNplf1/Owlwb0skZ8vYehPE2
	 WwPmsxEvn5U7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95050EDEBF5
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177258149360.11810.14217236864713107839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 419a441ad2846c9ed06b305255b1d6b917f1594b9d4d64e47e42ce77a05810a9
Date: Tue, 03 Mar 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772581493
