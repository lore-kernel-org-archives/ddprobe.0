Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3180917C224
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749963594; cv=none; b=GCJoE++bBiXET3j9YrPiU9XeJMDjC1QH6ccxWcYrcVNR6w3fSZ0nT2dI4lZZpebHKJIrNsT86JNODt5ELlwE8RuMG0UT8uxKndS0A7ccGzxwBnecxJjKfUDP3+gcxOPisx8CNqg8QJNMVsadTMKpE2vzCDbbc/l4yktAb0Rya6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749963594; c=relaxed/simple;
	bh=hNI2B7eqz/1GaZoYjSUa75ndXldqUmaXw+veGreLDkw=;
	h=To:Subject:From:Message-Id:Date; b=nlTxsXCgRFTgBoz2Bx4NJg5lenIScpp4+YFzzG0TYNKxYZ4mOeLTBhkPARPeMJeqDv2QKydiiFLym6Ou1AMYGeu0vpk/Ss2SI2RcBvdntcbc8dlTxIGKd6PCCuqncXJ0NvIwjIWzrmZ6/TQiLa+k80NfKlbS7jXasq/jGkvqkaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ion7UzRS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ion7UzRS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9813C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749963593;
	bh=hNI2B7eqz/1GaZoYjSUa75ndXldqUmaXw+veGreLDkw=;
	h=To:Subject:From:Date:From;
	b=ion7UzRSi7hYRXLmqMOzqfHg+KNP5HxbZVXc5L/HgCmJoZ//cbj+ddh3mYE1Cz2ZR
	 1/j6n5IaLfQ0/5cDhCDXa/kDV10fy4OwxUZlvRtWQ4oQoPpMXyh7ikeMExaoPRllDz
	 gfde9sXw0cPh76KI6sLryCVVx/wcis5mR8PB7Xe3U5VABqPWMSHvqbvGEpp2Xbuvkn
	 xeDDDJgVvc6157pJl0Zv7F1zgFjnPbPSqck31R2MzTQCNVWzOaI5J/0xJ5lN2K12p4
	 EclU6qOj3cx7DDZs6dHQgsw8bSiQHJ2ZwaZeExpQjQruHZBkj3EpfFhZxtmJIdVgYt
	 vkwJ/Con+0PJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9590BC61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174996359357.23306.1993092874479457942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdcf4d769dc1d682851c6b84b4673124e7ae5b0234fa107410072dad496a8b07
Date: Sun, 15 Jun 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749963593
