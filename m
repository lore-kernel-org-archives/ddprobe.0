Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1391B3A1E98
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766217234; cv=none; b=V8nsVCa1i+l8X6ZCEn/KKS7FGYjz+CSLs9/UDzcz0FhoyHyVBWgLORhnnMIJvqVWl4apgG9juszdEVp8LV1USyNSMtJN4hF4E9ayg6zLLlrpf6KA0LYPa1BTYJvEU+gKrG1LAild7XXCsM6pFoOgW5ljEp0FbOcleQ6VIqPZi38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766217234; c=relaxed/simple;
	bh=CyBjIUzY2geMO0sXQ3X7n1bIG8Ws3BCWKRN55Ezk6n8=;
	h=To:Subject:From:Message-Id:Date; b=i16hZl04pCn/Ts8JIgXA59AlyK7GTvs29CaHNH/DZuWAa9doBn+qoQRUleqOS31dKz03IwL1ZJor8wccnp8q75d5tPBtzoccewX6NuCNOHCf/PqwHNHHha1y4Wp9vmS3FTtfK/HuHXqZJGglHMssV8vyIttA2f9yKc4Ae7A4GNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=djsDO4C1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="djsDO4C1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34BBC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766217233;
	bh=CyBjIUzY2geMO0sXQ3X7n1bIG8Ws3BCWKRN55Ezk6n8=;
	h=To:Subject:From:Date:From;
	b=djsDO4C1kcKJfpfxKIUvQDWtPxgImZBy68nyV1t2QKikfvbW1i0+BAdCr7FSo+LFK
	 crPYUWC/0VdslXO4n7Q4qO+86OuWqVLM+5DZwx/+l0Iwyqp+ED2PQY3hy/0jaGUuBC
	 /cg037UEaF9Lq+bed1m6bZZRajZfmBIi48xwUlQBRmifV4IaxxolAeI+catsyyrEVS
	 iGeCoMm1iC8jH/HP9UKcsD1nOMsuZ2lo+zcHmtsgVEzpoo8SD0GP15szq1dwf3dnAe
	 jdBjc813Rx0x88UuRg9N1WaF5xkDnt3thfQb5pbXk2OL3el8CS/B3bcjv8PRcEEmuj
	 ZNsHMtu/vsFOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B67D637B2
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176621723358.31478.8400526087737664757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bf700ba1264012ae9f62118aadd05def82f8c95e2c09f62bc66fd718d830d85
Date: Sat, 20 Dec 2025 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766217233
