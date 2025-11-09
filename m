Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A78B19DFAB
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762704594; cv=none; b=uyntdNkoJBoDT8LaaUH2LfFU1l5Qp4GczP96J8/Hwzkp4Cb+7VMdxpLKNPr7MLWkzlI+3uaGf1se/DJwAlzKOnzX6D5Fb/ErxNu0BG4hnNfnuzMHn2bN0MArrlTJZxM/QCJEgc0TaYQ6jPGv4yNkSLQmvdBp+HjogQz1xKLBaS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762704594; c=relaxed/simple;
	bh=oaUDE4LWUvANuyJ65X6VpF913flFXdlnonRRJ6O77L8=;
	h=To:Subject:From:Message-Id:Date; b=IHRGW86KCuRdkdw/agXzQqKidDiJ21SeHKEXa4JOZUBHIKGSaaqSLdmxqRJ7e1d/EUD38DMX8Ew3fY3FpuxanPCTlYLSSVfUDNk1ANzmRgKV9jn9xXVksOGdFN2MSAq1Cg4DEVmX7slh3yPFnkqee6ZAFj4oA7Ov2fbUasJPc8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pfTyCdrd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pfTyCdrd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A1D6C19421
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762704593;
	bh=oaUDE4LWUvANuyJ65X6VpF913flFXdlnonRRJ6O77L8=;
	h=To:Subject:From:Date:From;
	b=pfTyCdrdZFoNCUlAXBJQijDjwz9Rh1qjmdVa8LwAs9kWh8Is7wniN/H+O/7WJlY42
	 zXQme+rAMnV6XBhYFm74wFvs3l6LzUlzb401Lj3Q8RV80CzXYQ+w+YbpFs913BVk5W
	 sMgSQiCnvfZtM9tRDtXrnJf/oMyDn1G+n9ZwgnXIbb4g8bTJz51pbcbkBMG6y0L4lQ
	 9bKjEtCjdmlnM1zORSZd5Mo1dYluyFhgBj5oxPdMuRx5KnTWcJ7jF/bd1E6v/ZWdf9
	 LugZvOhzps26mk7nUAwJpJHB4vQFF9KRErcIxX2CTUCoXL3MdoscLYk6WyTOa0H20y
	 DNtj5Wz6pfl8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F276CCFA1A
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176270459357.16402.14494952875013034449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e9af8a03bbc357e3dfc9c35e101f019d254181ffe9efbb320563008d35ae800
Date: Sun, 09 Nov 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762704593
