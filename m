Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38616227599
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770057234; cv=none; b=ZjV2GB019onMXGeXkQ0pjrbjppUOKoOIx/0abCkt2AVA2De2H6Y87AKcVEtPug1Z47XC5tn6FISkJAs7jCZTLr15besQWUDZd7Z3XySjRexGJdiGTa6kVW1pMf+TVKBbzW/yCJbYCPCEEam9++r8HMSgkwF2BLhR2RUrHziudpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770057234; c=relaxed/simple;
	bh=RzQXplSPefGj5+Y0yXjIwN7n1NhoDwMcTdJkhDYLDYc=;
	h=To:Subject:From:Message-Id:Date; b=li22tojp0/Cfl3IB3iFA0n83K8KGQCxvRjhjP6oG0s87WN/MTftwOrhfa+06uqAOyEH6BTLoQspVdiveSxpkhT/8WYyKORSqd2Weve881bgFJK4Gac3NIKMB8BMWoO8uPGswjtaM2OxJFcp/rieY0uX0vPTC/ADYb4Oeno4RccI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQVEJDbm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQVEJDbm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF536C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770057233;
	bh=RzQXplSPefGj5+Y0yXjIwN7n1NhoDwMcTdJkhDYLDYc=;
	h=To:Subject:From:Date:From;
	b=WQVEJDbmZ41CIE4OQ9s7LVAQUFRFswpQnxEQjRduBYKTR3pjxe+rm+/49lzc3Atn+
	 335Lhw5M5VRR1ARGqKdP8Y/VuO9ThvvCIw4jzcknIrRT8pDaZX8IoST21TDj5NbinR
	 vAeNTAQqaaXCXAqhlX1mp6qtZC9hLW+9nlWCDhZ/YSpdN6vE4/AkGGk4kWuhW5slQS
	 PD5pmHl3tw+m5ZrqkxNvO2fNFTIEF90QQOnWY5DwjcP+y7Wg11TJYKU6WRLGet9DW5
	 91MdiOpyuOLYewtWQMSK9r4/Daj5Sf8tefQDJ35jpTK4NGKEQH9gLhI1IgjVEvKqw8
	 WVaWaU5+lDA4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED1CE7DF19
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177005723363.7365.9645583302982970564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbf694e5e8b2fb420f1f8a749ae1dddb2c72d7c1c18f1e6d3fa696f0da174c89
Date: Mon, 02 Feb 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770057233
