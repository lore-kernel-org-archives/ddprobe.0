Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05DCB38944C
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773398694; cv=none; b=KBhc7JB4dNJpiPDUow5apsii2nMUi0v6/iCsi8Jyw6/K/yAf7cj9INV9+FMsU4SJ2+IRPsHamzHnm4iKbG6BuNdtQtnBPQ0jz3PbdLNtL7rDxtBVYR9pEDHMa6qK5onxJ5iZZ33zRe6Kqa2KNqIb9ertHyaUSGmHCp/my7eF9n8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773398694; c=relaxed/simple;
	bh=3Jzy5eZ9HORmeK+KpHzwtIfadr7D7uOqa/Pkj1K8b2I=;
	h=To:Subject:From:Message-Id:Date; b=SDmlR9CT29OFHd7vlqMf+U6vfFfvS5ACQVtPypYHcUE7mgBjFc2TPxY2TlFThseeA1p/sXAzQM0GuVIE7ukj5DzVkNb/NyJ4PqjKCnhrWwuKkAn9WUn+KU5fmoRUTib4KUKqcoHoirYdL9UF4vHjCmD7NlMFzGf1OafTuVwMiZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/GRXxRX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/GRXxRX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB52C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773398693;
	bh=3Jzy5eZ9HORmeK+KpHzwtIfadr7D7uOqa/Pkj1K8b2I=;
	h=To:Subject:From:Date:From;
	b=j/GRXxRXzwSprqkxU6MCLWavEp7qfncubJjesnrbP7HF1lB07mfd4lxH8XYyKgivy
	 xWziM3fu4PN5cwfPyBcsps9ilaT/8BHiFjwv+oJMomx+yjOwQ1nSVGP9wyuPa/dOqT
	 FTWZ5jDu5g7pR98iIGlY9tpcto4QxaOB5KXpc+N1Ic7Wspo0bTq6eEdVZyJBrqLJrW
	 KR62lS0W3lD54OiIDgP2hmGEfCNIH6MHnGydyDqzeh7IIxNAeraL4KY7Uzut5O3GCx
	 oR2vVwX5HVdVr+ZJs2H4ZV27MA3XrJwU705i5C3sifWyfo9+kasZ33GaMMh0Sxp7xp
	 8KGvYcEkFcRgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9005C105F796
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177339869358.1452.10697630713958364814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ac27135e83bda4021995660bddad01bce9bcc32b0b7168ec15432c64deb8bb6
Date: Fri, 13 Mar 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773398693
