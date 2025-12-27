Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0C518E1F
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766798634; cv=none; b=kQOylEo5KeID/e17DlqDIyYAP9N4rUffzmrEpXsaEHqoHMmsXJUKHsZ8Ld13Nk+s/buN5t4YWqHafMGyv0ezhWz5xsnWM/6019wPD9j06B2QgvrIhg1T+z1J8gHeypjLjw50TZ2C4s2rHPV48kSQd62LKbWJMPNtheQGD33vgjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766798634; c=relaxed/simple;
	bh=dEMYa9r7Sk6If40Ccm5SCVkNpZSTwsiYPS1oKEa+tJ0=;
	h=To:Subject:From:Message-Id:Date; b=QQwSVVfoYaSS9w6Bx0VqAfY7aczp0omAJqN1vGR1ypoCxUrp3YOSzBQxwa2spjgZc+/CDeNzMqRCyArSsCu4r1gXKRwsR1N1hLDarJ18A9+I7uE+meu7wih/PuRrIno7gGdPKt1SP/YQnMyUkrwa39TmgYtw/j7gIt558loVH78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KElrx3Dw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KElrx3Dw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F23C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766798633;
	bh=dEMYa9r7Sk6If40Ccm5SCVkNpZSTwsiYPS1oKEa+tJ0=;
	h=To:Subject:From:Date:From;
	b=KElrx3Dwqu9Smpftw8I03eCdW14MRWu664NuRIx1yHnFUXzT/4RA1WyNsYjE5nC76
	 dEyv5Lvam79oRPwXua7QpUNKnbQuvgYpRYBqWi92JYuduc9p1uyS4S3k/KiEYD6EVB
	 tSAN6uTXUV7R+b2ZSXFcHOMkHsOI7EiinJN3q5YRca+JXmux3aqZx0dB9R5aY12O4Y
	 kXG1Ay0/+JT8V3lWbFheKxBsk2Gghspw7DtplQ16LXW6aB6kyG8MPKRSg43XABLnfU
	 dyvMBod9Lb3rnbi6hKVmTSBV/v+qM/E7TiFAq17udP/JQxH/JB9pbdnzuGG98REkIv
	 BB6hkf/ZLo0CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C40E8FDB0
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176679863358.12824.8623829887134307398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9da28c52643ea26a8e46b9c456a720f76d62e2ab5801370a319f1406e6c6534
Date: Sat, 27 Dec 2025 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766798633
