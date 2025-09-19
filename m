Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1344534BA5A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758256794; cv=none; b=aWZPdHWk4SJs4PpOZGxZTEoYp55k7ksUZb4Zu0TUa61jrtxWP94PBf+z1C97wtcjZp513B3kkz6OXtZxXWUs7kr0nwwI4CCQoYfMg2zma6RTFHya7P7ouvvGi9Ryik3Vsm2XdwLmBbB7AdtnsfoXelkJQwCKzhuWRi/0GpQRq6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758256794; c=relaxed/simple;
	bh=8zn/lbMfrcRdq8glyNJkOYskq/nBhDTNTnBQsVNQfGA=;
	h=To:Subject:From:Message-Id:Date; b=utNbp9irEMEiu5TOV5Aq9H3nX6T7EAmpLG8JvQDZVa0ZdVa5Haht3ple5YVO7bGTToGcFXiUK04pYGxzVdK1GSaafHl0oWqb4dEtKRLifg3MeOAgY/47AfZtmKxQBoQPTlJnUj5JmnUIAmuX+YnyanlU3DsdOiw2Q0PQB8QyEn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xr01d4Gs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xr01d4Gs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5250C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758256793;
	bh=8zn/lbMfrcRdq8glyNJkOYskq/nBhDTNTnBQsVNQfGA=;
	h=To:Subject:From:Date:From;
	b=Xr01d4GsXo8EtFotfO3H5qiul3FbY3wqnVQVjjHfzGZQe3dX3CHASm7KxJDCd3Ezj
	 TeXkEQRoSjzNRFCDp6muliyIBQ7EglwVkJOQeLq8DOaCFLgBYCfxFFmP0AEskGX9A0
	 o9UCY5niJ+XGxr1gVclO7aGDoHyysCuihZUIScYb5+7lCzs2M8QxerrYOvyDfy92s0
	 lEEmFNEA7EgqbkWI1B2ipTNycGA6Se54DmyD3Usc68OwwdnAMKmWhJufh9GlJHJywr
	 8V8wzKrzXNwc+o8aVIAoR6INrvA7oL4uUn9kCvHwnYviFeKIVVBmY8v+zQFMooUPhF
	 TMxTYiFCaP0Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C3BCA1013
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175825679358.31184.192305788369292719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce7d22d7affc4fa7681637d0fbda4d6982f239214951ee802ea4ffdba3910c07
Date: Fri, 19 Sep 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758256793
