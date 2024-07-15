Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691FB13D8B1
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 11:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721042063; cv=none; b=SzADxnSYfVfVh4X6ogkbuO5bC/hZtquKb0Bd6rri69pT4QsqQSXeiyOjjepboEisrCElUe+s5zBaU9rmWba+E5oQAW/ecrpp9R3DIgsTlDvz8K4sGiBkMfSWxQd1k9+ka83VDzhGfNecuyeDcA52y48wvdibN9VCzl5/7Mde7F8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721042063; c=relaxed/simple;
	bh=/tdN6MfKzd0PSzCR0JXrvHRqdwp91tmoKU6zgt3jmL4=;
	h=To:Subject:From:Message-Id:Date; b=WTsjlh/SNhaJ5LCrLMrQVR+fCYE/hcePVelXtWgWzIDEjPt8LLZIYMgjxAutxZOzJ+M+jxd4ow4ABT9dgxP2vBLrfs5OunBjnB1cIOoAVVDaq+8x0j60ZkzCEoIqnqB30fgXgG+rGGp713ZGRuTtuP1zf9JvPxmAr639viihG48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4RwqU34; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4RwqU34"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E94C32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 11:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721042062;
	bh=/tdN6MfKzd0PSzCR0JXrvHRqdwp91tmoKU6zgt3jmL4=;
	h=To:Subject:From:Date:From;
	b=C4RwqU34ygFukli1n9z6VJ8ah/NnfDoO4l/l7M8dK3LRPE3MSLuWGLkIFfQnLWPjE
	 77m7hj3S3THHKkJrQJpVBmeLt9k+uLmatAeml7JTzwOPXSVgVWKMrYBJmJXmzWPEMK
	 fQUd8pfBoUiZxNXXkZI1VRtjaRbbaw8K10ZCJ67qy1q3c5ngJLpzdS7UhVcDnvKuOu
	 80cuCv2IamC5MOanQVhwTL1oyyWwzs1EWoqKtm5dJKS0aWZvrLp7qBCi7Wijjq4av0
	 SdY1Fv7BdordjyN5w9apbajOhzh5uhF9REVXy1cJXgPpNhF1OCR67wwd3GP73fe8Ji
	 Esdg2Ex7ArCug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C249FC3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 11:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172104206277.7683.7866831266681879374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7df97857bb3c0d017f5f76231dcd702f19e70ad0f39f7351aad055cd03c9c98
Date: Mon, 15 Jul 2024 11:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721042062
