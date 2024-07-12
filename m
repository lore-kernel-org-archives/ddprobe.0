Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6482C17108E
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 13:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720791503; cv=none; b=MWMGnHZPBMxsIFbb+n44wUs65WVEgab06w6NlYnBIACTEJYqVzoP25XxXWdSPvRT7pbqgDyNHJIi8VQo3T+d/FrYQmNZRHfYsBv6aWdL3ud72QdWBfUZnzdE7rZ51lEzB1mKHXRwodbqpCO3FQKsGKiguBJgTxshJ7pqqI0Xodk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720791503; c=relaxed/simple;
	bh=Bri2YYnSOJ6bVtpjsep9y7ov6ek+ayfH2kkhdSPbN/w=;
	h=To:Subject:From:Message-Id:Date; b=qX3qbw0017ijQx4bsj7Z8DcCYRfAGeGrjiSIKClH5TT6+BBJ2oXXL4B8yY3O29UCDB8kye0THH7WSVj9gyyH+SdcH8pRHrggw/F1EOZBVQcxU0rXENKLRZyQH5JrgNVzIa4CnBagF9f9TKoGe2MK678tUDbZ6jkK4smsOLCJb34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sBWtDFq9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sBWtDFq9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC8A7C4AF12
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 13:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720791503;
	bh=Bri2YYnSOJ6bVtpjsep9y7ov6ek+ayfH2kkhdSPbN/w=;
	h=To:Subject:From:Date:From;
	b=sBWtDFq9egeT8h/YsfhEOy6iH56WACJ7Xjo39clB8DvUaTjm0t/epck97LaSU/LHe
	 l/1K5mj4EVAMIee9GHnBxEsolH6aZBydHk/R3JwxWlGjjrzSXhEUJfkGZrDCsvblo9
	 uyug4xcoWRlYcb0gCsXsezs+oK0VN6cXHa9Ws0ZmOv4+IwH3PXvufIgQoXboS5u+sT
	 0n9lKbPzP1pYke2/CCeEy+OPvbeLIRF7X47d7asL3ND/kJmHipxX3LMATtng90mWQW
	 pSkdfHjctd62EOmZoQXYvkrmEfUw9zECX4cfVF9a88FUVGQY53PINwdZrasBeMNnhZ
	 3ejrib2kSfPAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C80ACC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 13:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172079150277.19902.6920107152104140972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86cf09f1fab798c7b9df812b3bab654fa612e058483e3b69cad50c38942be046
Date: Fri, 12 Jul 2024 13:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720791502
