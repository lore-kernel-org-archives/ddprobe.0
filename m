Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B46962FB2
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709761696; cv=none; b=sjNu3OB/Tu/GU3cyXBbqIiJw3HMhCVS6L+d5cD+P6Bcg4j5kn/mkGU8fNIRIC5zieOEUxvJ2niy157hSWrK9bP9yfLdQbnxF0ow9p8kt7Y50kbdM4Wv5KTvZRm27n9pYWzWUDy32SSpO7AtK9WRcl/lCqJDG90Ubx36OfzVbvxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709761696; c=relaxed/simple;
	bh=c2cZOwBg2KpbsSEMcdbP/RQVWBVDqXMPzAsv9Nra4Nc=;
	h=To:Subject:From:Message-Id:Date; b=Xpjq1J1590eRW8Wd34OZMTymda5CyzQTUsHsNHIBvXc1CEaXeprE0nnr+/1zGPurICENz+clqJci/ROW9sB1IKn8osE63bNR6jFXFythbWgvMB8+K4WRORvVglKQIlCZpV0D+8H/TjRILLstGQ825mi/EU6qvV4BLtlRCVrymJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o5mddeWJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5mddeWJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74D6BC433C7
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709761696;
	bh=c2cZOwBg2KpbsSEMcdbP/RQVWBVDqXMPzAsv9Nra4Nc=;
	h=To:Subject:From:Date:From;
	b=o5mddeWJURFv/vsilCla9XIVwDm44klymcdQbxczh0a2m9Kj63gLKg4lAb5A3PE7C
	 rR2fqyDdw2f1enWJFzbdzI0K7g3VQeZhQMxBWvVwfiDkQo/HmQZgjVns2FpEzC4Uca
	 SZf1bMEB9ogHW9RLUaAIXKfVSiwmIt5ocRr4EJ6/0v+gTBZ6fYeRIAApcDRmm3wdIr
	 CLca8rUcW3fTWpzpURpXhqxFWEV069QdgFmB+0BIdajiVxluZ4nmHLkW+NXP2WsOEZ
	 EaTPjeOeDI062JkFOHmG2Obavt5AuoSY4GO/IMUrtnJcKHVsN+YtrIDUIBsxtyn9IH
	 Nyf8IDg0pyCZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DA83C54E41
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170976169637.10807.13779206766139774631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4b189a8fd555c4964b26c184ea2ce873fd8ed3860d149d4f6e9bdff0d0431a4
Date: Wed, 06 Mar 2024 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709761696
