Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3850A248862
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746383994; cv=none; b=k4JxO6fOlEXKPQWBZX8KkkZoO8vhDOr+xI5uWcQrYrFmJIs529UVdbR4I/QCK5HAP7Yls6doZMPROoiFpD3cNciHUqfQ/Ii2SFw79uo6BrA/IOHurSj+lPLNo1yTZPNufiGlcLn6Jqfizsf9QBm9+MW7gV91ohkK/P1aJKhnmGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746383994; c=relaxed/simple;
	bh=bgZyUecbqq8IjHWPtnQfWr8fXdIWvyowy9dY98bAbZE=;
	h=To:Subject:From:Message-Id:Date; b=bF7LZ5akWMtpWggl4i7cFKEtvEqUUSvBxtg/iBtreyB9/olsApo9n2612k+L2KQgJSuRxC2tUXgK+tEh19olHlTro4QXtFS2j3yJhare9v33uuhIT7t8G4nD6CPm/9whHpCXWZR32cYJuXRVTGDYUfO9cGO6yQlxTjFf67iTgaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iffxpar8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iffxpar8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2CCC4CEE9
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746383993;
	bh=bgZyUecbqq8IjHWPtnQfWr8fXdIWvyowy9dY98bAbZE=;
	h=To:Subject:From:Date:From;
	b=Iffxpar8Krxb9ADp1Cv9vSAhOU03oY/WnA0VdZ60EoaFoCC0fsx+V556r7hfhPX9b
	 EdbDGxndc3QrXhS4Tb5tb6Z2hFsUWdxUSJmXlhoohHRBeYnnJ5TKaCvlVFFsAQi/p2
	 JqZZhGJI/f08/6q9Gt0pffGA26iGA1g5fVzznCF5c6ejuuE5Kv9T+wW/aCAxlDFEcw
	 IQoBjTWpsvPGRHHWkD/9V7iIFXVCQCq9wB1jUrY6ViVj/HQiBNEYxGhZ/DE01/nxq2
	 vmaDG7buHnab6fHbjAw8mi0esZMP3Vs90snsjF9KCqZM5FX+P6EE2ogy5XbYshqzv9
	 Si9mVfWGXibkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC38C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174638399357.17397.13284957541279769517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c83b8a4ea54f28c9f42a20d3f70b838c7d12680eda7fa5b31b9e08cd31bbe788
Date: Sun, 04 May 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746383993
