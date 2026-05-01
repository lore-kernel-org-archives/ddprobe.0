Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34ABC19D065
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 01:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777598854; cv=none; b=uD1GUpGXBEQ5brcUPjMwtxn/6FyxWdNAff85uY+uGiVHkUYhpfIYRhjfOKsXapLX8tDfBFUl36aglmM6Q0jLA3N3h3TfG1F45WIR92eSUQpV0jcj2S4atpw4RMEzdY6lp7HNSJK58RAHbOi+Rc3/mba088faTSmjlDyb9WHpb4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777598854; c=relaxed/simple;
	bh=MMhvNAx+yhUGdbIs+Zyc6lMrpQ5P3DA5btvaRCBXmJ0=;
	h=To:Subject:From:Message-Id:Date; b=A0ek0wHWgb0xSKpgY8xdUNytay+iHl0jvp3GGbvE+ZSqzqBUxwxqb5UZvXpylYsjzDTg153g2fqJOdhKFjV9jpbkaFhdAzS4vYvvDdEn3NcLs0HOqjF98P6dgS4fs4a8g8/H5MVScGgsqV7zne6exBBncMyIKhKHlF4ivqY/in0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IhGIO3Rs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IhGIO3Rs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEDB3C2BCC6
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 01:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777598853;
	bh=MMhvNAx+yhUGdbIs+Zyc6lMrpQ5P3DA5btvaRCBXmJ0=;
	h=To:Subject:From:Date:From;
	b=IhGIO3RsxvTc4JuUpnu/YVtY/sGq/HtsMxpKs6bMaNlFGBFPM6CdYZeKfSzok6OyU
	 DfHum3Z8nkjKu5WCeI051+QjW3DKStMRkQcNzNJufnwd2FKHUHg5mFGtVmgvqcX0q6
	 0wDybJV/QcdoKx6stucnw0yv583q9rVRxLpOfxcSviqY9lqQvf/F7p7srW9MqXm1CG
	 4bUP5d47n8LL8fy7sQZ+91IovSC1M50IgoAIYuEIFZkGH9fku3G/koVFZr23Di9lh4
	 1pbHIlZFy3O3WQK3Tnq+wfSs3RShZuH1ZvrIWK16vrqRR/c0Ae+8x+uvbRONFJWm02
	 IoiX/LX53GEUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB633CD13DE
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 01:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177759885369.4359.16581101521863393336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d18cc20704014a182fc3fabd3afae1af26b8fe0956666523ce8d704debbdfe8c
Date: Fri, 01 May 2026 01:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777598853
