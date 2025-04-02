Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7BF236451
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743593994; cv=none; b=mP0uGKaFlSFPuoVEULaNQTTEr2esdovsxLWWorU5hByuKl5dE1SADiwF9Vdki1gWoIkCn34zw5H2I4JwAKpNiWlimkeeGqKZlGtkgKTht6qQf+6YNjH6WjE+xfCaI3ECsk47eLbj63lDdk3qmo6d409KmBaDGtDT6Vu9ObFIJx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743593994; c=relaxed/simple;
	bh=jxQITKm2tyD+5D2ZoNRcbUPDBGXnZPjk2YUqYNkydGo=;
	h=To:Subject:From:Message-Id:Date; b=Bgxb9uUU5zTAFBxrVSRzpM+dZSQlh3ZkJHhVeXs8IgPeXPdeOrZSGPMZv17rHFZ+w+fardc70gKdTeztpeksl4U7hCpxlc5qg/5YRBk0ag1MRrd865JharaZhrso1tOlRxDJjiIIbXJ8avChAMC8ac3+arIEX0WH/L0p0XooVbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NA9xZfml; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NA9xZfml"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B508FC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743593993;
	bh=jxQITKm2tyD+5D2ZoNRcbUPDBGXnZPjk2YUqYNkydGo=;
	h=To:Subject:From:Date:From;
	b=NA9xZfmlyJQseW/WdLojpnc5uUtFgIYFinER2CP2nnM1OB1XGStT/78LzH+Td41dF
	 dtGYlQChA7Vswfk/YeMng/IJug+HSSWla1AezOF1qTAifxMuIIwieTDGKDRbA+a8Ye
	 WspuqRD8Ay8Bxb3NuT2BJ5w5+EdsMgamWy5dc8Zz3cvBsJiUll0C/iTMZGS6X3V/k+
	 6YaqyV2rOBYcUVw4ozXki+VsuIe/vEkjsRWY3itw1ySVDFkIY1/hKeuBD6O4ZqVjUm
	 Oat3mkaBp37uEum8BENTGq/RZya7L9zSFQ3MwHtAamUDd1t0ExI0QibxXd1pH6NnY5
	 BHmnJVFNzu8oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E317C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174359399363.29499.13922900967266628639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b38ac9e20d8be56ccd7ba66bfabbcd4618b162166c7dce5428f8e3515d7db09
Date: Wed, 02 Apr 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743593993
