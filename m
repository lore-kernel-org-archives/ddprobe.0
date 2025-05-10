Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5349A213237
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746874194; cv=none; b=dcqrDpSA5rB68RJimVorHSm5G04CSkhMKxwk1eXMSVhL8vG6PEmYlfOHdOzzJxmM2f0Za5isggcfaPzdKokkaPehT+9iid5QA2ipQj5fDTOHWzE0pfCHCAs2ZNkKTKz+YLaKrNfk2JqoW5X07wLmcbh7t3/oVI7NsL7DoKk/g00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746874194; c=relaxed/simple;
	bh=OxKYLFYpWgG2C/Uf97udrVLIokK3aQdtO4J/gcD//40=;
	h=To:Subject:From:Message-Id:Date; b=HIDJtEGEN6EyYSpdcCg5odo58puYLk2ler4WYOME7HRxfeuEmFlxiZsapnLgPxr87rQ5555iNZNUN5ICYVWqEJiY77mkGTLDx4X2P31U4BrkcTBq3J9dVXXUGG7fM4u7sEd89ilGoxYWE1s95k3lB0RYU4KFTV7p1jnbvWwRz84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k3vIj5f4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k3vIj5f4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80A2C4CEEE
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746874193;
	bh=OxKYLFYpWgG2C/Uf97udrVLIokK3aQdtO4J/gcD//40=;
	h=To:Subject:From:Date:From;
	b=k3vIj5f4zJlYIHGqG5elMdjMS6A3VElt0aXMHP7mV2+E5Z4wCUfIlPDkHwPf4ktTF
	 fOP4ZwK3JkTW0bPJK/c3c8i4H3cufCWE4+u4gQBbWtn/ktakSf9kjPxH+mA370sk32
	 96wYovxE3Ff1n0yA/MUYZlfGZYnn9LWNiM3W2jb0gJQ2hUYYCPv0Cehf5N7wZX9gCZ
	 EVksZuMacNKzs8bdWoO2RMkyJEOUJGndQuHP1qz5jtfcYWoLmWSl3o5vfJ4E0/H3Zm
	 vDh9Gaj0foGXi9D7+spgMz3NIhacx4+iKyUuQe/Ww7QwtePeWxTOTqArLKr1Ql7G02
	 zHIHErxs0ZAVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942EBC3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174687419357.29355.5574652296242233217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a493b60ebf19a1d484f564f866c1e6c66e632c6a677bb0a337b9012cfd1dbd10
Date: Sat, 10 May 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746874193
