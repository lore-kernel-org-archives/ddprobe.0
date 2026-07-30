Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F1D3D9DDF
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785406834; cv=none; b=bQMQa/OIK32HNilqbWC64gZuvPSuNf3Uku8wNtgD5DzHCT8hiPJwJ0FaFKyNP9CSb/031mzMfdBPZgt7f3MCLmEG7K87NZCFffO16blJPj8KW+QZ7NmIjOsSAkzB1CV3jbpzezwST3OVjjK4r3I1PDcbaAcsWo/stRwbBw4MrKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785406834; c=relaxed/simple;
	bh=jaFq5kUmDZRSmTbldqNc6TH5xU8slev4qiu5L9lpnxM=;
	h=To:Subject:From:Message-Id:Date; b=YmQarsVgie06oZonlQcvjA7PWyFK4XfjbBNei8MRKz1Lohzd06gP8tGWRKkNRBMZV9KikEivAnBU/nAcQH/y3QOCgD9//TPObvq6P//KPtUvM393UlftTFt2M3PA0hu37Jpp98MolNqerRJK2qJjjImmRo32tJXdLi2kqUDlFZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=InmCLhVA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="InmCLhVA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD002C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785406833;
	bh=jaFq5kUmDZRSmTbldqNc6TH5xU8slev4qiu5L9lpnxM=;
	h=To:Subject:From:Date:From;
	b=InmCLhVATe8yk394SSoCKnUhlFc0kKMXw7BEaoh5Z5wjYfMqns0WoA/GvfALHfVRs
	 lUk9fufzvTKuvJWg1S6Fvnj+FNBuq3bQUZkTlr3wuvSlSNpeo/m7XkSWJ4DwUWCgDN
	 7OeYFrJPx9EWrrZ1Z/PlHmuIYqsVm4W1eOzUjC/wzcUz2rwjLiXZ6GPwSfwa2LKGt7
	 nbLivjZUXqGGo2fmrQUZQhNgfR4PtLYiQPV2TEJdxRHbdE4GYa9Afn7nzBmlWqviu3
	 N1VTkDmbgyoJx0TJAePDRo7UqRijKgDPObsyCRcKmZYq4EyKGyLB0trA0eQ9vHxCqe
	 cghitQbrpd97g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98B1C54FD2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178540683368.28924.3285535567893697676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad36989300cb4c5bb8678af7e976027ce472eb7b03e6f878ebcb450c82a77a6b
Date: Thu, 30 Jul 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785406833
