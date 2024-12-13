Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FA73207
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734053154; cv=none; b=F1eve7U73+sATd9z3uah/xTev3EPZun7Q8XmPC/ObYloy9H/URDgjYPOJMTWP1Z99x/c9nLc0WTV+Mr1jAVa6CKZvUXE/mJdZlSQxVYsvl4htZ6eCct57PRobhT2PSFP5s2a3DeaweAU3Rq6uWXI/K4TIDY2cB3WGEDfuy/kPhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734053154; c=relaxed/simple;
	bh=BOpiGMbs18MlJNCUu7Ylrx8DNrzvmRmEMc2mCVQrL5M=;
	h=To:Subject:From:Message-Id:Date; b=lo/CQ+rNMBS2SBYT1K1Hmu9oDKiPJoLynkZKnFKo5QBhK96BkRO13lz8Y0F4ANRi74oVSkS3vV77JDVSHXk8HHEd9RwrgbCn3PJQ3f9kFa8V+W+AkIR5AOr9SzrZgGXClk9lU0dYJ1Y6Z7Wp7LDBLYXd9Cp2er2ijUK6wp4xX8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HK7cYCQ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HK7cYCQ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B79CFC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734053153;
	bh=BOpiGMbs18MlJNCUu7Ylrx8DNrzvmRmEMc2mCVQrL5M=;
	h=To:Subject:From:Date:From;
	b=HK7cYCQ5PuIF36uabsWsClSTPbRtQbeZMzHKhaCXduGXhYquUeI1i19hdn4sUYBBC
	 Ch+7E28MOekN9lE9ShN4MeAe6QJtIeZzb1y0gaCE8cHvIKuj9zShhvxjMzn7u5t60w
	 KROklaRuwhQbLjNKmEwtKrkQq5JtIyQLqRPG/Ok+YAwWHAtzqzzh+TRBrWnWU/t4wf
	 wmAMWiut7oeLZ+SwfE26xktTfIR81Nap51XC0VHaHL+rK2gZRD+alv/MfwSC2dmYxG
	 +V3m2LvLViz5ikzEsE6+EIppFdYPGLb/IX6D3qe+cc39+3FavarDAdd3n3ZdmWeeyG
	 GWrTykivVYvzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6A37E7717F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173405315364.19668.4996762366706047717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38775e0479bbf7fbdb25d8fd08f23218e75d3459561b09292ec1d2adb919a202
Date: Fri, 13 Dec 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734053153
