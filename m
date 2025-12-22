Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07E6F2F5A1A
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766418834; cv=none; b=YMn5vRHnY4jRtIjlOnrm+gafnNzjKoqSUJG25oBow2IgewZ9NLl0sLl0mQNljROKyKJNR35lObDyet7h3W6DFSQkfISVOh05BtfLJXZOlRHijaIel52TrdKAonxl9QvEdq3lVMrgBTDDl5EDDhq52CnIsDU4oKwQTrEiys71zqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766418834; c=relaxed/simple;
	bh=2ZmhBj0+/b6QqIjFKxmTM2M4M++086r4Tk4cqXdkuqw=;
	h=To:Subject:From:Message-Id:Date; b=Rl+cC1oVFhvLSMN70CGqeuON3ACdF+KNV5JHUk+DIo8CLTJySmIe/vUwqaYZgIF8yaacNA/3ziEGKOAHki7T4gYRPXx6WRUN2ETx9vtzh/xmSGvDMJEKaz8AYRkfyDMPXHhorNutHkgzxGyBECdYXHBCSbhBLG+4zjODZ7SnF3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=suyfcI51; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="suyfcI51"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05AFC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766418833;
	bh=2ZmhBj0+/b6QqIjFKxmTM2M4M++086r4Tk4cqXdkuqw=;
	h=To:Subject:From:Date:From;
	b=suyfcI51CoIwNYL/DkzxFJvbrBZfOgXoTxPuFFizZv5HhmYCwmEi2VqU2bs3GEsaK
	 TEfWp0v/Ygrblx/VqXMAtAd1IDZEepaSr9Za/1eylul18Lk4nLZ5IizGVwOHPvw9FU
	 ifriv3q6bnWtGiqi4WgqFlml5gU4IK/t6U2M13Y4NrHpRzbvhuXLhHj1EjjQfpsZiL
	 pH4yLgnBLwHvUzPAbfAERvXunJ8r5kff71A4APB5HgRvczHNohf81KXoHiemCE6xk6
	 giSOaVHTdt72AIJ8YudIic6KZtxbhq7wSRyelFQbDV59/kcgHiUdJRng9LBRjTXn+c
	 uoxYUbCGJvRcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90920E674B5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176641883358.23442.1517962429709868761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ace5a4e40e50991cc08bb161aa017ad6148e56988a4f1b5b8466496f9f8f2f4
Date: Mon, 22 Dec 2025 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766418833
