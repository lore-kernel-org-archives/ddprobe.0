Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3B425228C
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765998234; cv=none; b=Pll0MZj3IsNxMd7RUkHCFf3mB+wJrFT8V5uiMOMYi3PcENOZVY1ZXqxK2+J9vqW8t2/kz81T3YmrlOo6K1T1TM66sjOSMkhuhqm7/We0QoajGHWIbM9KZGBmzxGiWnKxDh/33MnpCnQtILuCaQHTj9yPXFERfkLf3fSOLjTE0ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765998234; c=relaxed/simple;
	bh=Qn2t45hcKKI1kAj8R0cgTbD41vi1jC1dwvWBjAeQVus=;
	h=To:Subject:From:Message-Id:Date; b=NT/za/7tunWUynGUymcZtO3SlL/3K0Ryfg6AtbKvScjpQVLlzOoUqVQf9oRW3m241j36jyE5crdsgHxmTiFTSBmm6hzBforqMoE8omAt8I7JkGp5vl6szL1iliu8spOVTR3WumzZ2Sw5tVeiqLWyIS0/xk86pQgZ5tWRIZmw+qA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jhfvCm/Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jhfvCm/Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10DDC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765998233;
	bh=Qn2t45hcKKI1kAj8R0cgTbD41vi1jC1dwvWBjAeQVus=;
	h=To:Subject:From:Date:From;
	b=jhfvCm/YyO/QPqBV0J628et5A8kD5BBjBWHJhYkWFu1h8SpsGsQMOmKj/4/0+/ra4
	 4aQQpWWCNn99FWRAi8mkXvswvJLjozKcfhuqz8+ZAxxb3gHdDeOuw4TufsugNXgH3b
	 x8Y7v1Jcn++0Ehi1/jSQyslez1H4vjzmPwXzFpFPAhkBLBgvUsUcfh9lpqBswBefYl
	 r2SMgM2RmVyX+v0gtCXBPlzaWQcZwsIaEX4rRFb/Y9YjmpoFSr+27HAHrk0Q37vQTk
	 7Sm3cGHyDhN/EO/n9lm9qkKzbvmzmsAkoRSzxYmZw7AfiIobINXQmCgOzcvLx+G8aR
	 eg9ra+OWUkb7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE0DD65C40
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176599823358.5245.387346173016039374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30940cc465984d06efca901dbabc346a719857f5a4f38867282fb5178a6cf5ca
Date: Wed, 17 Dec 2025 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765998233
