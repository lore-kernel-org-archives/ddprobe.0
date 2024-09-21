Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E9016EB4B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726926354; cv=none; b=qKt9N7Q5whm6kxJ43GqPprsQZ0n50daZmM4vI6melU9sYKfRlxamdGMfN6eZKU/hjBH9nA2ZVdIuXwSrOVyuPkJEhi3vyHcPREnknzlj9YhfgZEVXH2FiHCE4HTyapoIEUFYlUaTxktsCkVChVZgFImpCzFUCehBZs4tI2cTdTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726926354; c=relaxed/simple;
	bh=vc095qIt9uekEOju8XePh8AGWOGXOQ7sQAxP3b2OWME=;
	h=To:Subject:From:Message-Id:Date; b=iFFC9EY4PC3ByBRu1L9PrhdktGdiTRZlBixwzlsNy+G4ViQ4ShsdPFDIPYciGWoWfv+wWvbmSs3rggBgtNF+gqCOtF1MXC5BYRY5wCBWYtqWD8hXveVntWgInsFEH10VEluWh6oAjv6iIsaAJJfNQ3tH2UhayHK3uN4vIII01q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPGxhqYP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPGxhqYP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF34EC4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726926353;
	bh=vc095qIt9uekEOju8XePh8AGWOGXOQ7sQAxP3b2OWME=;
	h=To:Subject:From:Date:From;
	b=IPGxhqYPTpVlTmDBx+7ta2Hf3MSNppgSfmkHivRBrJowziZ4BfZtAJn8Y5TWDDbxr
	 pG3Vj2TX6n5tJa47l6RKfGt6vLd8SMXqflVFRWumPs4IEvj7VCck4qrWNn6WaIY+OI
	 qsomfQ9Yhyn/yjtU3lNdLNr3xVumokLeXJcaWgvCMn2wiHSWcsNIw2Tgv2aGyIe2oD
	 4pC+SzgRaB4gvqStgF+JuRTwB9OcTc9LkvGq51oQ8c7IJUH/DaxafSRmBip2HjckiL
	 HWWCAbNPPkqE7QFD0iaDjG9iiV0+H6hXSg2C0jTfpUnGclRqCj6iLUFG0qky2amIjt
	 aQxmZEizWo4Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999FFCF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172692635360.11278.2067959205109138008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39be03b693fbbc7ae0b837efc86c33815e349fe82c95d9f8d9e452984b24ecfe
Date: Sat, 21 Sep 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726926353
