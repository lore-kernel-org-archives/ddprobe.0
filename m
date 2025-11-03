Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03A3E27FD59
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762180794; cv=none; b=XF+cSXaOtrntyEk/MaH+m/UjI/zBZzFJk0L/q1UehRNfSLvLGfGQz//JbEY3Y9SdgzrXebieXkJy9DzzZ72bSIOtrl50c7AaR71vF4WyaYh1N61+FfF/RPakQBXqoJk8Me5UdSsITDFg1V5t/zAfEFTuAZ/30kfhSJxSaimRrOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762180794; c=relaxed/simple;
	bh=zG2oiwgBnGDXhgtihGU1MSzGixgd7hAfFjQHZIyqUu0=;
	h=To:Subject:From:Message-Id:Date; b=kL38efHRUZ2J688rCKDeLZz6iNDTd2yTEA6OUrg3IINPOuyzRM18aVvmWdbSRIDMUMi9blGNUR0rn22AHKKpLEfe0ZvH0arNaKU1hdZtWKyC36wLdYlMsY0Zs0fsmlRQhotKeBsPvEajVkfO18TzmgOvpG3baPIEmv9ewxvhOdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VuvWm1SM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VuvWm1SM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19ADC4CEFD
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762180793;
	bh=zG2oiwgBnGDXhgtihGU1MSzGixgd7hAfFjQHZIyqUu0=;
	h=To:Subject:From:Date:From;
	b=VuvWm1SM+KDUwFsJhDhCHKj8ESNOF42x1sFizBh4DqRbvk7uWy9JAiu9ToG+NJL9Q
	 TVwFy7HboqpEIy/BuaFtgiQ/LuJBZ2EduT4zY+GzMpm7FJsqqGXHMBvWcJrN/FjLJ6
	 be7vcwtLvEzAcIAv6KHJ6cwdDBOe+cNFNqFWu93oqB1WrZPpHL3AfwcgxManuW4szT
	 Gb5bk4lFPuTTgLQMCxLsq7W4bYnIpt/T6J0HwlsCj4TlKCwm9H9qTe/LNebPyxavW2
	 SAr+NJbxNIkLqLWW5tGYlqNP+IlcgjRi6CyEcZBbyEW0YB1k/I18tLiR3r9iTTFNVB
	 uuRQ9/riS7fhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A1FCCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176218079359.9397.7439113456155669391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e301f0251360526648466983b16d2d4416844f170c1a68aa50fd6d366d614fd
Date: Mon, 03 Nov 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762180793
