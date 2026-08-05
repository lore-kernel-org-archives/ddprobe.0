Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0C94854E1
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785948034; cv=none; b=WqtTVHaaZn7RJOnV0GC1Bxsn9akJLDbhQan7WHTEPqsuPf6NmI2q4W+MAAIXNpQkXR+VTXB0GTdEwooxg7rklmd/TTQ+hr7dQgGVUMQQteJQIu8qdwCamehzON3bWfP5fQO3YvqOn3CPDKm6+it3ww6DCYyGuZk8ZM75EkORAHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785948034; c=relaxed/simple;
	bh=B5V3omF8R4RPO8XO4CYjnQJe4bfEnDoeHbKkFElwixA=;
	h=To:Subject:From:Message-Id:Date; b=PBjuZtyJNUZHbn4aR7/bi4dCkr/EQ3aASXKmA+H1CtlI0UncMO0ZscOfbDW0f9Fo3a1Brdo4BcO1gyuDTL93DffgHSEYpa0Cz/AjNvAHciP679MytLJ1BFUMNN2N3pJuKhdQw3ptc6/ShtcIvtEG39yt8ia/dq1kNmh2p3gJvI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AvvkNfqW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AvvkNfqW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD6C3C2BCFB
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785948033;
	bh=B5V3omF8R4RPO8XO4CYjnQJe4bfEnDoeHbKkFElwixA=;
	h=To:Subject:From:Date:From;
	b=AvvkNfqWjBYAr1kIFD5rStAPCtNvjl3c/LSe2AaY1atTaQdXu3bSLgpzkhf+2i6Uf
	 z7hRWw5KGlv1fkWik7yQ+LwvsGDHF73QBLbr00VYovcs5Vbx8RThjutuyv/0jXVhbR
	 sERf/GSTj8duuB049uFkW70a/WcInmYAJhebdWJJxQBolNtWCo0it9BVd2OvbWK/sN
	 6HocxXMmIE/16ORVND/JdgjI0oC9qJOnUCErClJa3Rih0Sv8iCUlHsdAIea/agVb7V
	 58Tlq+3o+Mdp3HHtjjaAQGiyuvoPz8XpO1T7i8Jz/ilVXri+HM9MwXsX13uLNYhXch
	 P21qXutF5ieyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC033C55ABA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178594803369.4937.15053579692093328731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b2a6b82bd70a294edbacc5252020377311bab70ad2bb8d771ab3d2e1fac3253
Date: Wed, 05 Aug 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785948033
