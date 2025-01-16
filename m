Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C49843AA9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737051954; cv=none; b=fhCjm27McSQpUDiPp5W2QWXSP+Jy1V9t+/Waxc+oR2KZtYRZKg1dhDkD8el/+IHGWDFAl76YMNzK9gSNmkMs13DCozxEWGi40wIswp2vri27ZoI1ILLKA7a/qJkN3JLhhK0AtoM8J8WfGijm0B5eRpHRCRhIicKNaWTcx9cvZ5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737051954; c=relaxed/simple;
	bh=CXkpuJglkBA+PjqxPcnnB0PFsnICYm7/s7AGirNG5oE=;
	h=To:Subject:From:Message-Id:Date; b=i2ihsRSkXwvl6Xstc9CzxiwfUQURtg6nLKpkWe797YkgaFq6YmmawgikF5s0kGocIQWpKcrAmu8cLoz8PfVpNfEXmSpVz4hJ7oO0TBZcGt4d/Hqu4GPVHMArQLtjoNGf5RlErJlK1Dl0j4FaOdfR7dIxMLaCBvMnLESWz2uJqds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YCKoEayg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YCKoEayg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BDBC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737051953;
	bh=CXkpuJglkBA+PjqxPcnnB0PFsnICYm7/s7AGirNG5oE=;
	h=To:Subject:From:Date:From;
	b=YCKoEaygbHj+DBxuxqmlzSL5oB3gwkjroxffKZmLWpr4CuvnTm6zLH21GvfjcMzAQ
	 yzL9fKfLUUWS9t9g4lyMKe2jm0S75N/4+v/lih80xRK7PDQYUG9mpmyj7i4rDdfwwT
	 MXqMEYm62gBDl37MwrmQo6yJ2yXabKsUaYs/46/SbeZj3JM7LVnAgMVQqoHmdlCn9I
	 PaIIPxUo/fwfiC471dNBNo8omO2tHCY8/uZqdEuolL5JtmXw2+iw1xj31S5P4C/Zva
	 eErho5ukZUXAUtY4NUWtdhD14+Mz/vfkLVesBAFr67Ouq0glTaOF8KeqH1CywgSIUF
	 3oiB00lU37oKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9396DC02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173705195358.17658.13619027251096799607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c5aaf690a3762228fea0255925a00151397a4aacd7c1f6ecb708f0aa64d9063
Date: Thu, 16 Jan 2025 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737051953
