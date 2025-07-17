Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03D8B2BDC35
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752758994; cv=none; b=absFissoGdxHTgnVWAgSK7RMv2BS2FlC4kTmjyloZiotwjF6+JeJlqntBNWhR8y4ta/HqWWX0nfOsZasMf0TQ0A/8PEZ5BULdHafcyA4Ggh2FqPMDNtJdE2qfA6WaKk5clb1CzdFs4fs6AP2xPVKJnZf7G89zwY/JS0XvEX+m6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752758994; c=relaxed/simple;
	bh=zH0UM6sjrM2YthcNxcc0L8OMDrNUSvIoBbf7wJWKh3U=;
	h=To:Subject:From:Message-Id:Date; b=M6yEaTDTauYu8Q6q/91rvHDtzIqg/HoKB8dJtNszdFICsJEomAe/HdyXRkEqtT2HAO8z2ohsn9UdJlqaD8jYo0ZME05N0ohxW19YXxSOQLDPdcLsGv2ia7eHfKScPIXMg00htIbe/0yBhZFozlEDqBwGZnmACuRpUaX/fDmBlzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KPh/Buru; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KPh/Buru"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A676DC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752758993;
	bh=zH0UM6sjrM2YthcNxcc0L8OMDrNUSvIoBbf7wJWKh3U=;
	h=To:Subject:From:Date:From;
	b=KPh/BurufvJvs+m66QHJ/qIUsASlxvf+JvCplLJqTc1SfH09aDCHzhdyNCsAV1D9G
	 19xpJW1yCm+rUCtiT3PGbCyOHaLopX0T2yUsT7T7YuF6naaCK90+rTP62baTcCcW51
	 9xbM3CCeuNfE2JnvEpMgvYiK7keZenniWRlDXDk5LNeEb8roHdi7rVU+PJWLgjOzx6
	 ZDD57PX5lZ6nSNK5kdjl+TLpVP5AJR4DMdGVIlty8g25IFtcR9dfOqKwKHpECACAw6
	 2WSsbo3Zou3LTkoR22ozshP9VrE+4ZH5xIEhAAch0nWK/S2kfM6DH9/MArLZmIcdoQ
	 DxKjK4I4HVY1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909FDC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175275899358.31869.10362719055146510632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53b4a58c3fbc928b788ffff5332b87186348de47ad01de78251d1a57de9b69d4
Date: Thu, 17 Jul 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752758993
