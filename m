Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2533491F5
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770071034; cv=none; b=Dos4D7sGSHtDMfVv3UBEw5onwQ1NZPDrSUEDMlWnuBBgMapNCm3SF0mHLfAm2gOVBGFENATqP89g5ji7NYni8x3x6t4zW6QF5WVXrFWH/gtP2q4sxqW8jNJifq3iArxBJ+WIShwKmQiphY6Cc8qksl1vp9hGoSeZ7ki5xYh5o5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770071034; c=relaxed/simple;
	bh=Z4WiMqTKCC7DUmFqbCNWjz/hTL4uM6VhAmwkjx8PCMY=;
	h=To:Subject:From:Message-Id:Date; b=PlIoS3ARcyebgqGcJ5S+uRkNIfcELDjMBzkQRU8XH0b3QZMCaN1q6VsE/MytR8RazKIvILemRhRB11Eb1/ItJ80ZHOWw8KbusHD+ZIoQcKdlH3fbRR7Ynj/Be1i+IJb3vDGRexh4G/wQYSRJsFvCAEJLPNGu0ShV0aCPZpuCYyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AhP6hCQG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AhP6hCQG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B52CAC116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770071033;
	bh=Z4WiMqTKCC7DUmFqbCNWjz/hTL4uM6VhAmwkjx8PCMY=;
	h=To:Subject:From:Date:From;
	b=AhP6hCQG9T3R6Je2/c0VQIfqGyOhrBtwpnW8+6x5WKYKvemmyilvWWKOCakTqIN2M
	 rFatyie0GogN3Yh/+gGrUREHUjyWRa603ybo7xyPh4VqMXG2kUeQi6lBW+C+ZJyPj+
	 O94ck4jWQnfdxtsMPwtdO7wbq9ofVR0/T103521/P1qM6uzMP36FeaSclzl+hmAcej
	 03z5vhxwiHGRnDNz23JZD8ShIHLb2kWEQvjX7rdzaheEn+nJ63Y353DOZqWJBRJKYK
	 x8b4RyQdetFVuyGk6oJbqswlpPz2Pf3IjC9waWlZjrz1Ws2S/31X0VcrEdvdUrSTC/
	 tifCBTwOCafCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0BEFE7FDE0
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177007103361.11163.8481285038554507978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80c97d3b48d4c0c1f08a84e72c23e87eb74b14719bfe29ee9c8b54bd8b13d0af
Date: Mon, 02 Feb 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770071033
