Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DFE2877DA
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770940494; cv=none; b=BNcGzlKKsrUM/lU3hx6aTRpUz1H0TamfHdZO7DMBvSnsj/bBZABj+SVMQFbK1m+v7Xn0B+kVjuiUOBcYjuyxdNXozA9Jbl6ycfLQKizZfdFW3jK0yC2Fc2bvnMWENv53BpchhivWc1DlMn4v4cEn94ungI4D+CPeDcwLEav+e+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770940494; c=relaxed/simple;
	bh=Q7Sbh8OFeNCdZvOBMKAGHWVln+NUXZ4vzzL2zTynPxw=;
	h=To:Subject:From:Message-Id:Date; b=TXi7ZsqbVSWvgrv2EMjLBID/obTyDCFyBUWt4ds2JCRntCR57QlzkxIcnDvDni2zecNHX9Xz6KDMTN9CrZy6jXI5h69MuXeH1RMBXpCIo3HtElnnCM+uIZ1mlMuM8utuO9SR216cwy9XXl/g80p3eXlqMzj3Xmdm7Qi1TpNLjpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WwGtbiJo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WwGtbiJo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5575C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770940493;
	bh=Q7Sbh8OFeNCdZvOBMKAGHWVln+NUXZ4vzzL2zTynPxw=;
	h=To:Subject:From:Date:From;
	b=WwGtbiJoXs9NiIar95eOIwBJoJnb0uJBoExJMWt0ccjYjwNTZkOrItSi6cCecrlKu
	 R7FipUz5jZKQtrdD+yVsR6vKi8sZTRHPHN5uXazoBlYI/jp9u3LG4m5WsS4fnj9C6f
	 kga54J09lu3IZmpELbY5kk6h8C0v6PM415CFxD0edCbx3tsCVVVR6y4o8mF1sAiBab
	 2E13XywPyD/idcH7wu/w3RAS/8BA51hsnobCyAX0MKFp8UM2cEuGY1i8hTGdJNjHd1
	 GM/QvZ4bRGuo6aNNpSxUJIrdjPVwH8hoZ1105GSUHPXFO/RhVudRUzvbNDN99Lnn57
	 d6Q1idAV6YB0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2796EEA86E
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177094049364.22406.3111250262105138508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68144d5e39a467c22cf78fd1e52c921b3d4d48e002d693dff6cb4ee5a37114c1
Date: Thu, 12 Feb 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770940493
