Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF2333FD
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744880395; cv=none; b=QQRdnAbL3gHuebxdIknu6+cJxWj70MuYYFMxxJHc8GOK0MgBJCxV0OVgzHL/lG3SXXe9VVuYuFgMahE/fBTNL1NL5ru7tE6gOpB52qEEd52gMHBXKarHXreSBeORG1Xn5jYnQlk8Q+qGfBWh125bTo7xwZzctoSxVzaJZhPPFjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744880395; c=relaxed/simple;
	bh=mtBz1C8cY0tajQWLEXdjqHepIm2KAYN0m/ipJyHLbAI=;
	h=To:Subject:From:Message-Id:Date; b=QPIEzx+yMfwcDUqPjL/xANGzZY+8X8IAhjQsXQKSW3E9dYc86Hyfko+Cwc3GqayTNzIQq5gKQ9es1+WadZSl7hGtN0gQK4Bsnq5/MPSWj+Ff4s3skxN1uqVOnxhKl3xfoyv00paeuFsmaHiani2Iq6Y3veKjld70pRmVCyVmeAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=utAdH1TV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="utAdH1TV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC75C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744880393;
	bh=mtBz1C8cY0tajQWLEXdjqHepIm2KAYN0m/ipJyHLbAI=;
	h=To:Subject:From:Date:From;
	b=utAdH1TVdChrYYYNrvcMuuJbkwjYvXvv+5yAhG5nmiApo4mV/mZD/+8qOxWscCMfl
	 Jp8KmQON0rbVkUbpjHiYr8SMY9Huqu9dPD0VxZEC2QiYH0FHpq0MM3TaLT8QYFOAGb
	 HOqk7T3umldJFhDYC15unQ2yvzKdqE3fnCjlr41ANK8UiTS3T6BCeslZn1PfFSAq+S
	 IAbyvj5m98HrTzjFUWGvs1plCP1cHaianAAYgkjxxCg71i3MerUwdNHvaATFIRhD2O
	 Xkzw8HawdRaHVLKlpiccox2q2xzWzT4MWsjZEuNMFo+qzO5EwaShZm/Cg006GjHz7B
	 /Ly2PT2Nvt3Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9047AC369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174488039358.17001.16640613896756562008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48f4a2632d9bf119690bdf346d486abdd440ca185a8e489fb639b705d267e22d
Date: Thu, 17 Apr 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744880393
