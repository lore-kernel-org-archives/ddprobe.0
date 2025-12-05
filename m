Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CAE830215D
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 23:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764976974; cv=none; b=t++BpnKeQcEBuV1WSFopB/7o2wGXZCN9+RU9uWgOfFHVG51CzMcdqodQ8QHF014nlg2Gv/iBN8peg1vrczHmN61yQPiJfppbr692eczeOi3Pr9mOdK+dFkvepD5X2Bz+mNMquV+ZWQSCHCSrIHmfGUfQxIjKbfhh7hj4lzW5PQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764976974; c=relaxed/simple;
	bh=FfaURCcAv3zynSS0/SG0L4c9CGp2hUm6wGeazYq/jMA=;
	h=To:Subject:From:Message-Id:Date; b=BXufA8bLAxarR6SGCGBJQgwJ+f3PhX+ZxgcDJTIZky3YVKUYM8XgUHU+/rZIhmm5S9tt5ZUYxuv9O9ga5kg+TAMj7gAqJ6t8qRrRtrDnWKf75ubB2jByt7nVaF2vkw+ZKP6gg4sYmdua1s56SL4MVyGmvBmPq5WVpfxzaH+U1Go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=banu4RYX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="banu4RYX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A273CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 23:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764976973;
	bh=FfaURCcAv3zynSS0/SG0L4c9CGp2hUm6wGeazYq/jMA=;
	h=To:Subject:From:Date:From;
	b=banu4RYXmdxg4iwHYpTQ8WSFUk6nPPknwTS+0BADJhDqQ5zpCJvemOb8qT98P1Po/
	 ypeZ311K7DhjQJp9TyCWyI5j/LrEukE3MTJwKWKgZRl3jHsypRhkotD5ZbQRJ1J1bD
	 XDFv3ICx2ihnoPyDSkwKg2UX3PxlXJ702+l3ihUrwIO8bH3V6ViLUdb33jrj9O+6Qb
	 1NuuAvSD20V0A9qmQr8XUeAFhLKgRJIjDtKQsOY5vOTUWgYbO+qjnQu7Wgx7ZXMFQo
	 +4avW2yzlMdav/udTgiCQJDawaFYghfMR71168PCok+QBfqDfml3Y/g0jHXg1wQNQE
	 NSFTcZ+9QTovw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920CAD374B7
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 23:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176497697358.7825.14758665372796821422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 091662be3e47f32f73e7377076295ac99e90844c6db8244f151664f9271266bb
Date: Fri, 05 Dec 2025 23:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764976973
