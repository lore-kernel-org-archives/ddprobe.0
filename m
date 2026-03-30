Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F8519C546
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774837494; cv=none; b=FS4QB5vNMza+Q6bun6WumlZeIvYyhXkz3WNK0kLtf/sLeQ7c3Zsk04XpS1w4wPaXDa14EuIHTPMRq6HaDCC3FA85SCVUSFoBzFjjLvqFkRp6zNNY+6zkMnCNA4B51CzoEq7NrlRhIMDSrfMxJ/Jm7tsMUIXzxxy9DCo2J+tRO6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774837494; c=relaxed/simple;
	bh=venOP34pZvmKddAHCV2ZNot4M+vfpRXQmpVb8mEHl6s=;
	h=To:Subject:From:Message-Id:Date; b=jm5wi79yCNWTLcqrZw4mPicz/oVyvABOQDb8ZGD5nsWwo7nISQP/PXlQJzoCkO/RT5PqMbfAQ3O68wsjB4ODEmd3bL337z9kJQD/ARctjAvGpjHdCPnZ0WwMCZf7JmozoFTPRoVZDvPp1PoI22gPmQPpKInNn1ek9lWhabMLhfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BLfptIVU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BLfptIVU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F89C116C6
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774837493;
	bh=venOP34pZvmKddAHCV2ZNot4M+vfpRXQmpVb8mEHl6s=;
	h=To:Subject:From:Date:From;
	b=BLfptIVU0p2FNKgsn7RRo3Clhr730CrM1FWh6xKeeOQly4sfD3y7UqvQMse7jLsc2
	 Ewd5w1OJbZR2Ug61NqQTWXRUo4A1HIRKNwv5hwywHTCG3i4LKhclJCR6Y2XZWFJWpP
	 27ItNyZzUIMflc8VToVKnxJeLfM57gTK9YPXgzNXqfslugaLljbUdJnxXqG7xnprxo
	 gedMIdbPOixC+FRlaTS+4zzhIkesNFHT1dti0Mge7M4T/eMueTQB+d4HG5EKIrVrML
	 dZBTpO8fk/f+f9JcnMZcJaO+xhG1wY5DdoQ4im4h6dnUh3HQbOHTSuaL3jzBrnU68x
	 0Vh5APzU7RwFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AB6FF492D
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177483749358.8337.4937103212004064414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1be601ee03f550bf06e2627ce0d5e041874247e8d64235a836d3b7814727902f
Date: Mon, 30 Mar 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774837493
