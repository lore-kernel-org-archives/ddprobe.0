Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18940288A8
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750305594; cv=none; b=GJ475pgYdFbmPZGSROIHyUCqbJQhUoxFWv5sCxyPrX7eNP3ionaaEATnwidzx1dvYL09W+7gPUIOecnGwCSAM8ACRX+1CaE9+GQjX+1m4j0uAt+mChp88+X9gQ5Ceh00YVpUj1wSyeeAmGRbcRBpvQgUj2y3Qd/u9DkY9EhceXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750305594; c=relaxed/simple;
	bh=U1Ryl8gwtGiSmU4su+BdMwx+8VUyqbIOwoFqYMUQ9Fk=;
	h=To:Subject:From:Message-Id:Date; b=D8zWe+M98VOVJEwnMhBJ5G1NBnXEEua0SMGHuhkdoAgDThUW0iZIJuErEu7Q5qKrEa8/6OqRuZIPPb9rL6uyfXaGjvxau39++9y36Rhkp63YwUXkv9eu6PlUJcwUFJpm602gF+sWEFISgzyuScB7RDxL7bIBK91ItFZGGAW4y50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NrzMjDzg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NrzMjDzg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB194C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750305593;
	bh=U1Ryl8gwtGiSmU4su+BdMwx+8VUyqbIOwoFqYMUQ9Fk=;
	h=To:Subject:From:Date:From;
	b=NrzMjDzgX9YlMRduGijgO7SE2Q6d34bxtYH2sp/kyCOo8laV6OZ281a1mzm7ssS0O
	 txEoTOqORHnlt8lel6o35BHJkNqxmBl9AZMBejKASF9Svh4Y8bdTIx/iJ/o9bp2sMh
	 RiyHM8bVN6kT26gaGZOrL3gJ40q1wRpQkFRiyfZFqZ4wVC7rI0nEJ2T2GKmG2zQbh5
	 IRWohODkP9xpxaYUbg53zcofF/R5Whjc9cIovkG6IxSv7yJi/yZkdLg1FQO5dZbj3l
	 zYLU2yBBJ3FcXl6oPjbnxADwttKE4x+M52bbshKK/ooBx67gxADF9C39uQhGnitCpf
	 CIz7+odMALetA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956AAC71136
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175030559360.26558.10426507730686914846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 344bec6148c03013dc97b9121d6e7bca309aebcee3201cfcfcf5b76f857d4a17
Date: Thu, 19 Jun 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750305593
