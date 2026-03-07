Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2817629B233
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772883894; cv=none; b=kjdCm+sUbQE6cdbZOPzQqC5sN2hQFPeFnRRvEvpqsuO6iVdUZYvyz/gdS9TcnQTV1od5Ha5Jbsu96bH8TsH633C8ZpemQyRbnbGR3NEhjAQFnpApMz89Rl2TT/bB0qo+1LzZt4Fkm9M1bIpvNi+9mqe4TBqyxeSMiSedtOye3N4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772883894; c=relaxed/simple;
	bh=e6xv41cciAJxQGBeW0k8BPBuo4qDS4cqtVRfrIWcS0g=;
	h=To:Subject:From:Message-Id:Date; b=AeckZ9bC1PYgRAf3yOeSSooqOKvAnB1Uom7PidDQcESuKt6+S7WuugYuBUkSzI+yX5i81/5TXt315T0yJ97vr9WACgR/SMgCbO2bx+W32FhCwlfuH9xmDD4HGoH7QBC5XiDQv4JnE56hQDRhxixFnOzkIHpObSgtjPL6cfpLK4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Shjq55E5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Shjq55E5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B53EDC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772883893;
	bh=e6xv41cciAJxQGBeW0k8BPBuo4qDS4cqtVRfrIWcS0g=;
	h=To:Subject:From:Date:From;
	b=Shjq55E5oao2xeoMLDXEogShS/DeixmFAxfvIRfFbzAI/27rHm/DvNqrASyqNvdf0
	 zzk/CyCjw2f/bBsufHBAGG6TS1OBM76LbmHwf1BYU5gkQLQEf2iMpeFvR0JWoLiTYV
	 Nk0dnkRq4ph+a6ucads69J5QP1Tmf29zUTRRnQWraPUeV4QP7jkAzDpZ+w17WNMMKe
	 ohQ5XigEVwVPB5NK1/MtQ6Z4Qo41NuohcRuvMYuxbrzyb7FWTkhbVLmPSuKYYf8aoN
	 0M1a6pa8L5pTbsHNTM6OZp+rSxnpHKsj6gKt5uu+CMoycbs2YkVTf0nG9kbuWb2bEX
	 OCKxP5BUKmteg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9824AFC9EFB
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177288389360.18738.13631496886068393425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe28feb890767c30efe5a7c1f7df0f9788729db56692d847ff150d7267e8a925
Date: Sat, 07 Mar 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772883893
