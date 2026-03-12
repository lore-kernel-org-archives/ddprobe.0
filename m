Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15036358376
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773282294; cv=none; b=PJerPjThbGdhP6VTg0V8R6PofhQhdcERNtuN6Xf/GO7VP17gGQCPsIdNjzYnV7lub+j7CCnmD6uT0YriqhnT8KUzsOf7hLBAHz97XibTnxtnZPNpMdWvDKuUZ413r3OXnuMjPdvSHH45pm9Q5BDJZ9n2Z3KPtnDffYrBTilzsKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773282294; c=relaxed/simple;
	bh=RLVHSLwksPdI5YWS4dw/u6lBp/0sMQukK/hB0FELy6k=;
	h=To:Subject:From:Message-Id:Date; b=pE6aIWbfdQuG0Bh/gM7UVIbmWX/22tCerYt0UXc3ZW6RqBPty5WeYEusLRV34xlo75Czf/FMoTOWCbiWawoL3nfnvBngPU1fuMv8+l86b9PqRtWgkJ+sZa3hgU2361ut+ZlUFIfZsxupWvlU72dCTe2oV8n2u2nO+514lkNRJks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QJBp9HT7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QJBp9HT7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96D8C2BC86
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773282293;
	bh=RLVHSLwksPdI5YWS4dw/u6lBp/0sMQukK/hB0FELy6k=;
	h=To:Subject:From:Date:From;
	b=QJBp9HT7I9JavXcceKr2nRayisbEuEmv8eLfp+OCvZMZ5uUsGXdDWa5S9+RoYeMFA
	 GimBz9XICOwwwEE5M0iX9Uh89rNO7igsIIdnZyojgX4vkmStWOv2fZCwyU49Ga1Y4z
	 R3v/d1MdfaJDXLWeyjxQ0/bVAtmuHEthayF8CWGWqV/zOIIRIiw3194JVXVH4b86wj
	 77N8+CP8MN7GMhJBja4zX9l/MlpGHc9787S/OclV9/01TQPhqxU4grtdz3xkrB8VuG
	 QtF93NCxWo3zE3QjC+NWK7+W6tE5dGD4esxRqM3lGX/L9OYgWGOB26KB35THbCESva
	 fJ3S94L7It2Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978F2103E2FC
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177328229358.27551.15064353360674787880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c6196e52ea084e3e159f184c50975550359b85572ef3d10367990aa2e383555
Date: Thu, 12 Mar 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773282293
