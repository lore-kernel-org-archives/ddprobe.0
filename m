Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147FE18454C
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727532954; cv=none; b=s+ZLbNRsTxFjCrYapaF0CfP89dTRpVrrVG1EoEbFyBcBEYZlJI1CZl50PTzJQIpXLe5nlVAmlOMsEJYBD+Mh2PXGQIXrMrSfuPvEJl4SbQBUreBuq2mGItv50pPt4eeG4alzZoLCPWHnfa2/E336JWrcTbGFGXTi/LU6dR+zndw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727532954; c=relaxed/simple;
	bh=IPP9bvbLgoVRIkhKMyX1jgGl+C3cUAYWriirZC+oSWE=;
	h=To:Subject:From:Message-Id:Date; b=IlfneURQXw+uIRsIuNOhPySQtN5otj0dhTNm2YpUmvk94PTqlwqcATN2UqU2mtFpi6vUnz3+O/gJNX+j9xiGK/3l4V6atTZ1JyzGo0nHACkZtUhNJSF+EnI72SlRJzlqwsfDsA5TofcSgFqUcA854+fOSlTfvFlu5AOpRGtX2AA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=poyvcdes; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="poyvcdes"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EB9C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727532953;
	bh=IPP9bvbLgoVRIkhKMyX1jgGl+C3cUAYWriirZC+oSWE=;
	h=To:Subject:From:Date:From;
	b=poyvcdeslgvybsNKLKa//ahmOsEGx+AfYrI4evD9pOjX3U9oP6WJSTlYQ/oG4ptne
	 juAJ8NmnxuRbuIa0mxDxlnOLnMlk3eZZ5AksUmD4rGycgs8yBTV9EN7Zv++KufaXky
	 OsDvLLuQWyN/FiaK5UJG+ufNIU+RuyhKo7SZLtM7SmA3hQqXWRmg/LdC3oan+IuotD
	 OJK0dBSNRO8sRtd48JzNQDJTaEBC/p8U1J1C/l++Rq12d5JlBempnwcjO8uQ8w8NiQ
	 JamegyBwZ5fPt1AU51CD3t3qGK5OBZFiDiPNxDt6q/BFWXYWr6kkV2HijBIT2xqZ0N
	 QJMMqD2rEQV2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A74CF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172753295359.31097.15650426669222709445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f441fbac3da55f0764631f85e0609d71a2e1a4c7a3b2bd9077d83750242d295
Date: Sat, 28 Sep 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727532953
